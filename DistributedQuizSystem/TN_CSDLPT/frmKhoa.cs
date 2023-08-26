using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace TN_CSDLPT
{
    public partial class frmKhoa : DevExpress.XtraEditors.XtraForm
    {
        private int viTri = 0;  //Khi ấn vào btn phục hồi thì position trong bds sẽ quay về vị trí ban đầu
        private bool doneLoadForm = false; //Fix lỗi khi load form, cbcoso được đổ dữ liệu vào sẽ bị auto gọi hàm indexchanged
        private bool addingNew = false;
        public frmKhoa()
        {
            InitializeComponent();
        }

        private void frmKhoa1_Load(object sender, EventArgs e)
        {
            DSet.EnforceConstraints = false;


            this.khoaTableAdapter.Connection.ConnectionString = Program.connstr;
            this.khoaTableAdapter.Fill(this.DSet.KHOA);
            // TODO: This line of code loads data into the 'DSet.GIAOVIEN' table. You can move, or remove it, as needed.
            this.giaoVienTableAdapter.Connection.ConnectionString = Program.connstr;
            this.giaoVienTableAdapter.Fill(this.DSet.GIAOVIEN);
            // TODO: This line of code loads data into the 'DSet.LOP' table. You can move, or remove it, as needed.
            this.lopTableAdapter.Connection.ConnectionString = Program.connstr;
            this.lopTableAdapter.Fill(this.DSet.LOP);



            cbCoSo.DataSource = Program.bdsDSPM;
            cbCoSo.DisplayMember = "TENCN";
            cbCoSo.ValueMember = "TENSERVER";
            cbCoSo.SelectedIndex = Program.mCoSo;

            //Phân quyền dùng app theo group
            btnGhiKhoa.Enabled = btnPhucHoiKhoa.Enabled = false;

            if (Program.mGroup.ToUpper().Equals("TRUONG"))
            {
                cbCoSo.Enabled = true;
                btnThemKhoa.Enabled = btnHieuChinhKhoa.Enabled = btnXoaKhoa.Enabled = false;
            }
            else
            {
                btnThemKhoa.Enabled = btnHieuChinhKhoa.Enabled = btnXoaKhoa.Enabled = true;
                cbCoSo.Enabled = false;
            }
            doneLoadForm = true; 

        }



        private void btnThemKhoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            viTri = bdsKhoa.Position;
            bdsKhoa.AddNew();
            addingNew = true;
            txtMaCoSo.Text = "CS"+(cbCoSo.SelectedIndex+1);
         
            //bật tắt các controller khác
            btnGhiKhoa.Enabled = btnPhucHoiKhoa.Enabled = true;
            panelKhoa.Enabled = true;
            kHOAGridControl.Enabled = false;
            btnThemKhoa.Enabled = btnHieuChinhKhoa.Enabled = btnXoaKhoa.Enabled = btnReloadKhoa.Enabled = btnThoatKhoa.Enabled = false;
        }

        private void btnHieuChinhKhoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if(bdsKhoa.Count <= 0)
            {
                MessageBox.Show("Không có khoa để hiệu chỉnh");
                return;
            }
            viTri = bdsKhoa.Position;
         
            //bật tắt các controller khác
            btnGhiKhoa.Enabled = btnPhucHoiKhoa.Enabled = true;
            panelKhoa.Enabled = true;
            kHOAGridControl.Enabled = false;
            btnThemKhoa.Enabled = btnHieuChinhKhoa.Enabled = btnXoaKhoa.Enabled = btnReloadKhoa.Enabled = btnThoatKhoa.Enabled = false;
        }

        private void btnXoaKhoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (bdsKhoa.Count == 0)
            {
                MessageBox.Show("Không còn dữ liệu để xóa");
                return;
            }
            String maKhoa = "";
            if (bdsGiaoVien.Count > 0)
            {
                MessageBox.Show("Không thể xóa Khoa đã có giáo viên");
                return;
            }
            if (bdsLop.Count > 0)
            {
                MessageBox.Show("Không thể xóa Khoa đã có lớp");
                return;
            }
            if (MessageBox.Show("Xác nhận xóa khoa? ", "Xác Nhận", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                try
                {
                    maKhoa = ((DataRowView)bdsKhoa[bdsKhoa.Position])["MAKH"].ToString();
                    bdsKhoa.RemoveCurrent();
                    khoaTableAdapter.Connection.ConnectionString = Program.connstr;
                    khoaTableAdapter.Update(DSet.KHOA);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi khi xóa khoa! " + ex.ToString());
                    khoaTableAdapter.Fill(DSet.KHOA);
                    bdsKhoa.Position = bdsKhoa.Find("MAKH", maKhoa);
                    return;
                }
            }
        }

        private void btnGhiKhoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (txtMaKhoa.Text.Trim().Length == 0 || txtTenKhoa.Text.Trim().Length == 0)
            {
                MessageBox.Show("Mã Khoa Và Tên Khoa Không Được Để Trống");
                return;
            }

            //check trùng mã trên môi trường phân tán
            String cmd = "exec sp_tim_khoa '" + txtMaKhoa.Text + "'";
            SqlDataReader myReader = Program.ExecSqlDataReader(cmd);
            if (myReader.HasRows)
            {
                //check trùng trên site hiện tại
                int vTri = bdsKhoa.Find("MAKH", txtMaKhoa.Text.Trim());
                if(vTri == -1)  //nếu không trùng trên site hiện tại, tức là trùng trên site khác
                {
                    MessageBox.Show("Mã Khoa Bị Trùng Trên Site Khác");
                    return;
                }
                if (vTri != -1 && vTri != bdsKhoa.Position)  //nếu trùng trên site hiện tại và không trùng với mẫu tin đang sửa
                {
                    MessageBox.Show("Mã Khoa Bị Trùng! Hãy Đặt Mã Khác");
                    return;
                }
            }

            try
            {
                //check Input
                String tenKhoa = txtTenKhoa.Text.Trim();
                String maKhoa = txtMaKhoa.Text.Trim();
                while (tenKhoa.Contains("  "))
                {
                    tenKhoa.Replace("  ", " ");

                }
                while (maKhoa.Contains("  "))
                {
                    maKhoa.Replace("  ", " ");

                }
                txtTenKhoa.Text = tenKhoa;
                txtMaKhoa.Text = maKhoa;

                bdsKhoa.EndEdit();
                khoaTableAdapter.Connection.ConnectionString = Program.connstr;
                khoaTableAdapter.Update(DSet.KHOA);
                bdsKhoa.ResetCurrentItem();
                MessageBox.Show("Ghi Khoa Thành Công");

            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi ghi Khoa: " + ex.Message);
                khoaTableAdapter.Fill(DSet.KHOA);
            }
            //bật tắt các controller khác
            addingNew = false;
            btnGhiKhoa.Enabled = btnPhucHoiKhoa.Enabled = false;
            panelKhoa.Enabled = false;
            kHOAGridControl.Enabled = true;
            btnHieuChinhKhoa.Enabled = btnXoaKhoa.Enabled = btnReloadKhoa.Enabled = btnThoatKhoa.Enabled = btnThemKhoa.Enabled = true;

        }

        private void btnPhucHoiKhoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (addingNew)
            {
                addingNew = false;
                bdsKhoa.RemoveCurrent();
            }
            bdsKhoa.CancelEdit();
            
            bdsKhoa.Position = viTri;
            //bật tắt các controller khác
            btnGhiKhoa.Enabled = btnPhucHoiKhoa.Enabled = false;
            panelKhoa.Enabled = false;
            kHOAGridControl.Enabled = true;
            btnHieuChinhKhoa.Enabled = btnXoaKhoa.Enabled = btnReloadKhoa.Enabled = btnThoatKhoa.Enabled = btnThemKhoa.Enabled = true;
        }

        private void btnReloadKhoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                this.khoaTableAdapter.Connection.ConnectionString = Program.connstr;
                this.khoaTableAdapter.Fill(DSet.KHOA);
                this.lopTableAdapter.Fill(DSet.LOP);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi Reload: " + ex.ToString());
                return;
            }
        }

        private void btnThoatKhoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();

        }



        private void cbCoSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!doneLoadForm)
                return;

            //đổi site
            System.Windows.Forms.ComboBox cmb = (System.Windows.Forms.ComboBox)sender;
            if (Program.connectToOtherSite(cmb.SelectedValue.ToString()) == 1)
            {
                this.khoaTableAdapter.Connection.ConnectionString = Program.connstr;
                this.khoaTableAdapter.Fill(this.DSet.KHOA);
            }
            MessageBox.Show(Program.connstr);

        }

        private void kHOAGridControl_Click(object sender, EventArgs e)
        {

        }
    }
   
}