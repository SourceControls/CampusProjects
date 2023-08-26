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
    public partial class frmGiaoVien : DevExpress.XtraEditors.XtraForm
    {
        private int vitri = 0;
        public frmGiaoVien()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void kHOABindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.bdsKhoa.EndEdit();
            this.tableAdapterManager.UpdateAll(this.DSet);

        }

        private void loadBDS()
        {
            DSet.EnforceConstraints = false;
            // TODO: This line of code loads data into the 'dSet.KHOA' table. You can move, or remove it, as needed.
            this.KHOATableAdapter.Connection.ConnectionString = Program.connstr;
            this.KHOATableAdapter.Fill(this.DSet.KHOA);

            // TODO: This line of code loads data into the 'DSet.LOP' table. You can move, or remove it, as needed.
            this.LOPTableAdapter.Connection.ConnectionString = Program.connstr;
            this.LOPTableAdapter.Fill(this.DSet.LOP);

            // TODO: This line of code loads data into the 'DSet.GIAOVIEN' table. You can move, or remove it, as needed.
            this.GIAOVIENTableAdapter.Connection.ConnectionString = Program.connstr;
            this.GIAOVIENTableAdapter.Fill(this.DSet.GIAOVIEN);

            // TODO: This line of code loads data into the 'DSet.GIAOVIEN_DANGKY' table. You can move, or remove it, as needed.
            this.GIAOVIEN_DANGKYTableAdapter.Connection.ConnectionString = Program.connstr;
            this.GIAOVIEN_DANGKYTableAdapter.Fill(this.DSet.GIAOVIEN_DANGKY);

            // TODO: This line of code loads data into the 'DSet.BODE' table. You can move, or remove it, as needed.
            this.BODETableAdapter.Connection.ConnectionString = Program.connstr;
            this.BODETableAdapter.Fill(this.DSet.BODE);
        }
        private void frmGiaoVien_Load(object sender, EventArgs e)
        {
            loadBDS();
 
            cmbCoSo.DataSource = Program.bdsDSPM;
            cmbCoSo.DisplayMember = "TENCN";
            cmbCoSo.ValueMember = "TENSERVER";
            cmbCoSo.SelectedIndex = Program.mCoSo;

            //Phân quyền dùng app theo group
         
            if (Program.mGroup.ToUpper().Equals("TRUONG")|| Program.mGroup.ToUpper().Equals("GIANGVIEN"))
            {
                btnThem.Enabled = btnGhi.Enabled = btnSua.Enabled = btnXoa.Enabled = btnPhucHoi.Enabled = false;
                panelKhoa.Enabled = false;
                contextMenuStrip1.Enabled = false;

            }
            else
            {
                cmbCoSo.Enabled = false;
                btnThem.Enabled = btnSua.Enabled = btnXoa.Enabled = true;
                btnGhi.Enabled = btnPhucHoi.Enabled = false;
                panelKhoa.Enabled = false;
            }
            if (Program.mGroup.ToUpper().Equals("GIANGVIEN")) cmbCoSo.Enabled = false;
          /*  if (bdsKhoa.Count > 0)
                maCoSo = ((DataRowView)bdsKhoa[0])["MACS"].ToString();
            else
            {
                btnXoa.Enabled = btnSua.Enabled = false;
            }*/
            if (bdsKhoa.Count == 0) btnXoa.Enabled = btnSua.Enabled = false;
        }

        private void cmbCoSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbCoSo.SelectedValue.ToString() == "System.Data.DataRowView")
            {
                return;
            }
            //Chuyển Site
            Program.mCoSo = cmbCoSo.SelectedIndex;
            Program.connectToOtherSite(cmbCoSo.SelectedValue.ToString());

            loadBDS();
        }


        private void btnThem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            vitri = bdsKhoa.Position;
            bdsKhoa.AddNew();
            txtMACS.Text = "CS" +(cmbCoSo.SelectedIndex + 1).ToString();

            //bật tắt các controller khác
            btnGhi.Enabled = btnPhucHoi.Enabled = true;
            panelKhoa.Enabled = true;
            gcKHOA.Enabled = false;
            btnThem.Enabled = btnSua.Enabled = btnXoa.Enabled = btnReload.Enabled = btnThoat.Enabled = false;
        }

        private void btnSua_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            vitri = bdsKhoa.Position;

            //bật tắt các controller khác
            btnGhi.Enabled = btnPhucHoi.Enabled = true;
            panelKhoa.Enabled = true;
            gcKHOA.Enabled = false;
            btnThem.Enabled = btnSua.Enabled = btnXoa.Enabled = btnReload.Enabled = btnThoat.Enabled = false;
        }

        private void btnXoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
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
                    bdsKhoa.RemoveCurrent();
                    maKhoa = ((DataRowView)bdsKhoa[bdsKhoa.Position])["MAKH"].ToString();
                    KHOATableAdapter.Connection.ConnectionString = Program.connstr;
                    KHOATableAdapter.Update(DSet.KHOA);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi khi xóa khoa! " + ex.ToString());
                    KHOATableAdapter.Fill(DSet.KHOA);
                    bdsKhoa.Position = bdsKhoa.Find("MAKH", maKhoa);
                    return;
                }
            }
            if (bdsKhoa.Count == 0) btnXoa.Enabled = false;
        }


        private int kiem_tra_ma_khoa()
        {
            string str = "exec sp_tim_kiem_khoa '" + txtMAKH.Text + "'";
            SqlDataReader myReader = Program.ExecSqlDataReader(str);
            myReader.Read();

            String kq = myReader.GetString(0);
            if (kq == "1")
            {
                return 1;
            }
            else
            {
                if (kq == "-1") return -1;
            }          
            return 0;
        }

        private void btnGhi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (txtMAKH.Text.Trim().Length == 0 || txtTENKH.Text.Trim().Length == 0)
            {
                MessageBox.Show("Mã Khoa Và Tên Khoa Không Được Để Trống");
                return;
            }

            //check trùng mã trên môi trường phân tán
            int viTri = bdsKhoa.Find("MAKH", txtMAKH.Text.Trim());
            if (kiem_tra_ma_khoa() == 1 && viTri != bdsKhoa.Position)
            {
                MessageBox.Show("Mã khoa không được trùng!");
                txtMAKH.Focus();
                return;
            }
            else
            {
                if(kiem_tra_ma_khoa() == -1)
                {
                    MessageBox.Show("Mã khoa đã tồn tại ở phân mảnh khác!");
                    txtMAKH.Focus();
                    return;
                }
            }

            try
            {
                bdsKhoa.EndEdit();
                KHOATableAdapter.Connection.ConnectionString = Program.connstr;
                KHOATableAdapter.Update(DSet.KHOA);
                bdsKhoa.ResetCurrentItem();

            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi ghi Khoa: " + ex.Message);
                KHOATableAdapter.Fill(DSet.KHOA);
            }
            //bật tắt các controller khác
            btnGhi.Enabled = btnPhucHoi.Enabled = false;
            panelKhoa.Enabled = false;
            gcKHOA.Enabled = true;
            btnSua.Enabled = btnXoa.Enabled = btnReload.Enabled = btnThoat.Enabled = true;
        }

        private void btnGhi_ItemClick_1(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (txtMAKH.Text.Trim().Length == 0 || txtTENKH.Text.Trim().Length == 0)
            {
                MessageBox.Show("Mã Khoa Và Tên Khoa Không Được Để Trống");
                return;
            }

            //check trùng mã trên môi trường phân tán
            int viTri = bdsKhoa.Find("MAKH", txtMAKH.Text.Trim());
            if (kiem_tra_ma_khoa() == 1 && viTri != bdsKhoa.Position)
            {
                MessageBox.Show("Mã khoa không được trùng!");
                txtMAKH.Focus();
                return;
            }
            else
            {
                if (kiem_tra_ma_khoa() == -1)
                {
                    MessageBox.Show("Mã khoa đã tồn tại ở phân mảnh khác!");
                    txtMAKH.Focus();
                    return;
                }
            }

            try
            {
                bdsKhoa.EndEdit();
                bdsKhoa.ResetCurrentItem();
                KHOATableAdapter.Connection.ConnectionString = Program.connstr;
                KHOATableAdapter.Update(DSet.KHOA);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi ghi Khoa: " + ex.Message);
                KHOATableAdapter.Fill(DSet.KHOA);
            }
            //bật tắt các controller khác
            btnGhi.Enabled = btnPhucHoi.Enabled = false;
            panelKhoa.Enabled = false;
            gcKHOA.Enabled = true;
            btnSua.Enabled = btnXoa.Enabled = btnReload.Enabled = btnThoat.Enabled = true;
        }

        private void btnPhucHoi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            bdsKhoa.CancelEdit();
            bdsKhoa.Position = vitri;
            //bật tắt các controller khác
            btnGhi.Enabled = btnPhucHoi.Enabled = false;
            panelKhoa.Enabled = false;
            gcKHOA.Enabled = true;
            btnSua.Enabled = btnXoa.Enabled = btnReload.Enabled = btnThoat.Enabled = true;
        }

        private void btnReload_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                this.KHOATableAdapter.Connection.ConnectionString = Program.connstr;
                this.KHOATableAdapter.Fill(DSet.KHOA);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi Reload: " + ex.ToString());
                return;
            }
        }

        private void btnThoat_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
        }

        private void txtMACS_TextChanged(object sender, EventArgs e)
        {

        }

        private void thêmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (bdsKhoa.Count == 0)
            {
                MessageBox.Show("Phải có ít nhất một khoa!");
                return;
            }
            bdsGiaoVien.AddNew();
            ((DataRowView)bdsGiaoVien[bdsGiaoVien.Position])["MAKH"] = txtMAKH.Text;
        }

        private void xóaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (bdsGiaoVien.Count == 0) return;
            String maGV = "";
            if (bdsGVDK.Count > 0)
            {
                MessageBox.Show("Không thể xóa giáo viên vì đã đăng ký môn học");
                return;
            }
            if (bdsBoDe.Count > 0)
            {
                MessageBox.Show("Không thể xóa giáo viên vì đã làm bộ đề thi");
                return;
            }
            if (MessageBox.Show("Xác nhận xóa giáo viên? ", "Xác Nhận", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                try
                {                  
                    maGV = ((DataRowView)bdsGiaoVien[bdsGiaoVien.Position])["MAGV"].ToString();
                    bdsGiaoVien.RemoveCurrent();
                    GIAOVIENTableAdapter.Connection.ConnectionString = Program.connstr;
                    GIAOVIENTableAdapter.Update(DSet.GIAOVIEN);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi khi xóa giáo viên! " + ex.ToString());
                    GIAOVIENTableAdapter.Fill(DSet.GIAOVIEN);
                    bdsGiaoVien.Position = bdsGiaoVien.Find("MAGV", maGV);
                    return;
                }
            }
            if (bdsGiaoVien.Count == 0) xoaToolStripMenuItem.Enabled = false;
        }

        private void ghiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (bdsGiaoVien.Count == 0)
            {
                MessageBox.Show("Không có giáo viên để ghi!");
                return;
            }
            for (int i = 0; i < bdsGiaoVien.Count; i++)
            {
                if (((DataRowView)bdsGiaoVien[i])["MAGV"].ToString().Trim().Length == 0 ||
                    ((DataRowView)bdsGiaoVien[i])["HO"].ToString().Trim().Length == 0 ||
                    ((DataRowView)bdsGiaoVien[i])["TEN"].ToString().Trim().Length == 0 ||
                    ((DataRowView)bdsGiaoVien[i])["DIACHI"].ToString().Trim().Length == 0) 
                {
                    MessageBox.Show("Không được để dữ liệu trống ở các cột!");
                    return;
                }
            }

            try
            {
                bdsGiaoVien.EndEdit();
                GIAOVIENTableAdapter.Connection.ConnectionString = Program.connstr;
                GIAOVIENTableAdapter.Update(DSet.GIAOVIEN);
                bdsGiaoVien.ResetCurrentItem();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi ghi giáo viên: " + ex.Message);
                GIAOVIENTableAdapter.Fill(DSet.GIAOVIEN);
            }
        }

        private void PhucHoiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bdsGiaoVien.CancelEdit();
        }

       
        private void gcGIAOVIEN_Click(object sender, EventArgs e)
        {

        }

       
    }
}
