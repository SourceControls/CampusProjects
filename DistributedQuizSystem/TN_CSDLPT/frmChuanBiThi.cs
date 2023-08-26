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
    public partial class frmChuanBiThi : DevExpress.XtraEditors.XtraForm
    {
        private int vitri = 0;
    
        public frmChuanBiThi()
        {
            InitializeComponent();
        }

        private void gIAOVIEN_DANGKYBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.bdsGVDK.EndEdit();
            this.TableAdapterManager.UpdateAll(this.DSet);

        }

        private void loadBDS()
        {
            DSet.EnforceConstraints = false;

            // TODO: This line of code loads data into the 'DSet.HOTENGV' table. You can move, or remove it, as needed.
            this.HOTENGVTableAdapter.Connection.ConnectionString = Program.connstr;
            this.HOTENGVTableAdapter.Fill(this.DSet.HOTENGV);

            // TODO: This line of code loads data into the 'dSet.LOP' table. You can move, or remove it, as needed.
            this.LOPTableAdapter.Connection.ConnectionString = Program.connstr;
            this.LOPTableAdapter.Fill(this.DSet.LOP);

            // TODO: This line of code loads data into the 'dSet.MONHOC' table. You can move, or remove it, as needed.
            this.MONHOCTableAdapter.Connection.ConnectionString = Program.connstr;
            this.MONHOCTableAdapter.Fill(this.DSet.MONHOC);

            // TODO: This line of code loads data into the 'dSet.GIAOVIEN_DANGKY' table. You can move, or remove it, as needed.
            this.GIAOVIEN_DANGKYTableAdapter.Connection.ConnectionString = Program.connstr;
            this.GIAOVIEN_DANGKYTableAdapter.Fill(this.DSet.GIAOVIEN_DANGKY);          
        }

        private void frmChuanBiThi_Load(object sender, EventArgs e)
        {
            loadBDS();

            cmbCoSo.DataSource = Program.bdsDSPM;
            cmbCoSo.DisplayMember = "TENCN";
            cmbCoSo.ValueMember = "TENSERVER";
            cmbCoSo.SelectedIndex = Program.mCoSo;

            if (Program.mGroup.ToUpper().Equals("TRUONG")) //Được lấy từ form đăng nhập do người đăng nhập thuộc nhóm nào.
            {
                cmbCoSo.Enabled = true;
                btnThem.Enabled = btnSua.Enabled = btnGhi.Enabled = btnXoa.Enabled = btnPhucHoi.Enabled = false;
                panelGVDK.Enabled = false;
            }
            else
            {
                cmbCoSo.Enabled = false;
                btnThem.Enabled = btnSua.Enabled = btnXoa.Enabled = true;
                btnGhi.Enabled = btnPhucHoi.Enabled = false;
                panelGVDK.Enabled = false;

                //Giảng viên chỉ được xóa, sửa của mình 
                if (Program.mGroup.ToUpper().Equals("GIANGVIEN"))
                {
                    for (int i = 0; i < bdsGVDK.Count; i++)
                    {
                        if (((DataRowView)bdsGVDK[i])["MAGV"].ToString().Trim()== Program.username)
                        {
                            btnXoa.Enabled = btnSua.Enabled = true;
                        }
                        else
                        {
                            btnXoa.Enabled = btnSua.Enabled = false;
                        }
                    }
                }
            }
            if(bdsGVDK.Count == 0)
            {
                btnXoa.Enabled = btnSua.Enabled = false;
            }
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
            vitri = bdsGVDK.Position;
            panelGVDK.Enabled = true;
            bdsGVDK.AddNew();
            if (Program.mGroup.ToUpper().Equals("GIANGVIEN"))
            {
                cmbHoTen.Enabled = false;
                txtMAGV.Text = Program.username;
            }

            btnThem.Enabled = btnSua.Enabled = btnXoa.Enabled = btnReload.Enabled = btnThoat.Enabled = false;
            btnGhi.Enabled = btnPhucHoi.Enabled = true;
            gcGVDK.Enabled = false;

            cmbHoTen.SelectedIndex = 0;
            cmbTENMH.SelectedIndex = 0;
            cmbTENLOP.SelectedIndex = 0;
            cmbTrinhDo.SelectedIndex = 0;
        }

        private int kiemTraSVThiChua()
        {
            string str = "exec sp_kt_sv_thi_gvdk_chua '" + ((DataRowView)bdsGVDK[bdsGVDK.Position])["MAMH"].ToString().Trim() + "', "
            + ((DataRowView)bdsGVDK[bdsGVDK.Position])["LAN"].ToString().Trim() + ", '"
+ ((DataRowView)bdsGVDK[bdsGVDK.Position])["MALOP"].ToString().Trim() + "'";
            SqlDataReader myReader = Program.ExecSqlDataReader(str);
            myReader.Read();

            String kq = myReader.GetString(0);
            if (kq == "1")
            {
                return 1;
            }
            return 0;
        }
        private void btnSua_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            vitri = bdsGVDK.Position;
            if(kiemTraSVThiChua() == 1)
            {
                MessageBox.Show("Không thể sửa vì đã có sinh viên thi!");
                return;
            }
            panelGVDK.Enabled = true;
            if (Program.mGroup.ToUpper().Equals("GIANGVIEN"))
            {
                cmbHoTen.Enabled = false;
                txtMAGV.Text = Program.username;
            }
            btnThem.Enabled = btnSua.Enabled = btnXoa.Enabled = btnReload.Enabled = btnThoat.Enabled = false;
            btnGhi.Enabled = btnPhucHoi.Enabled = true;
            gcGVDK.Enabled = false;
        }

        private void btnXoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (kiemTraSVThiChua() == 1)
            {
                MessageBox.Show("Không thể xóa vì đã có sinh viên thi!");
                return;
            }

            if (MessageBox.Show("Bạn có muốn xóa giáo viên đăng ký" + " ?", "", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {

                try
                {
                    bdsGVDK.RemoveCurrent();
                    this.GIAOVIEN_DANGKYTableAdapter.Connection.ConnectionString = Program.connstr;
                    this.GIAOVIEN_DANGKYTableAdapter.Update(this.DSet.GIAOVIEN_DANGKY);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi xóa Lớp\n" + ex.Message, "", MessageBoxButtons.OK);
                    this.GIAOVIEN_DANGKYTableAdapter.Connection.ConnectionString = Program.connstr;
                    this.GIAOVIEN_DANGKYTableAdapter.Fill(this.DSet.GIAOVIEN_DANGKY);
                    return;
                }
            }
            if(bdsGVDK.Count == 0) btnXoa.Enabled = false;
        }

        private bool kiemTraTruocKhiGhi()
        {
            if (dateNGAYTHI.Text.ToString().Trim().Equals(""))
            {
                MessageBox.Show("Bạn chưa nhập ngày bắt đầu", "Thông báo", MessageBoxButtons.OK);
                return false;
            }
            DateTime date1 = DateTime.Now;
            DateTime date2 = dateNGAYTHI.DateTime.Date;
            int compare = DateTime.Compare(date1, date2);
            if (compare > 0)
            {
                MessageBox.Show("Ngày bắt đầu không thể nhỏ hơn ngày hiện tại!");
                return false;
            }

            if (spinLAN.EditValue == null)
            {
                MessageBox.Show("Lần thi không được để trống!");
                return false;
            }

            if (spinSOCAUTHI.EditValue == null)
            {
                MessageBox.Show("Câu thi không được để trống!");
                return false;
            }

            if (spinTHOIGIAN.EditValue == null)
            {
                MessageBox.Show("Thời gian không được để trống!");
                return false;
            }

            if (spinSOCAUTHI.Value > 100)
            {
                MessageBox.Show("Số câu thi không được > 100!");
                return false;
            }

            if (spinSOCAUTHI.Value < 10)
            {
                MessageBox.Show("Số câu thi không được < 10!");
                return false;
            }

            if (spinTHOIGIAN.Value < 15)
            {
                MessageBox.Show("Thời gian thi tối thiếu là 15 phút!");
                return false;
            }

            if (spinTHOIGIAN.Value > 60)
            {
                MessageBox.Show("Thời gian thi không được lớn hơn 60 phút!");
                return false;
            }

            if (spinLAN.Value > 2)
            {
                MessageBox.Show("Lần thi không được > 2!");
                return false;
            }

            if (spinLAN.Value < 1)
            {
                MessageBox.Show("Lần thi tối thiểu là 1!");
                return false;
            }
            return true;
        }

        private void btnGhi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (kiemTraTruocKhiGhi() == false) return;
            try
            {
                bdsGVDK.EndEdit();
                bdsGVDK.ResetCurrentItem();
                GIAOVIEN_DANGKYTableAdapter.Connection.ConnectionString = Program.connstr;
                GIAOVIEN_DANGKYTableAdapter.Update(DSet.GIAOVIEN_DANGKY);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi ghi Khoa: " + ex.Message);
                GIAOVIEN_DANGKYTableAdapter.Fill(DSet.GIAOVIEN_DANGKY);
            }
            //bật tắt các controller khác
            btnGhi.Enabled = btnPhucHoi.Enabled = false;
            panelGVDK.Enabled = false;
            gcGVDK.Enabled = true;
            btnSua.Enabled = btnXoa.Enabled = btnReload.Enabled = btnThoat.Enabled = true;

        }

        private void btnPhucHoi_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            bdsGVDK.CancelEdit();
            bdsGVDK.Position = vitri;
            gcGVDK.Enabled = true;
            panelGVDK.Enabled = false;
            btnThem.Enabled = btnSua.Enabled = btnXoa.Enabled = btnReload.Enabled = btnThoat.Enabled = true;
            btnGhi.Enabled = btnPhucHoi.Enabled = false;
        }

        private void btnReload_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                this.GIAOVIEN_DANGKYTableAdapter.Fill(this.DSet.GIAOVIEN_DANGKY);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi Reload :" + ex.Message, "", MessageBoxButtons.OK);
                return;
            }
        }

        private void btnThoat_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();
        }

        private void cmbHoTen_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (cmbHoTen.SelectedValue == null) return;
                txtMAGV.Text = cmbHoTen.SelectedValue.ToString();
            }
            catch (Exception)
            {

            }
        }

        private void cmbTENMH_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            try
            {
                if (cmbTENMH.SelectedValue == null) return;
                txtMAMH.Text = cmbTENMH.SelectedValue.ToString();
            }
            catch (Exception)
            {

            }
        }


        private void cmbTENLOP_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (cmbTENLOP.SelectedValue == null) return;
                txtMALOP.Text = cmbTENLOP.SelectedValue.ToString();
            }
            catch (Exception)
            {

            }
        }

        private void nGAYTHIDateEdit_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void nGAYTHILabel_Click(object sender, EventArgs e)
        {

        }

        private void lANSpinEdit_EditValueChanged(object sender, EventArgs e)
        {


        }

        private void sOCAUTHILabel_Click(object sender, EventArgs e)
        {

        }

        private void tHOIGIANLabel_Click(object sender, EventArgs e)
        {

        }

        private void spinTHOIGIAN_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void panelGVDK_Paint(object sender, PaintEventArgs e)
        {

        }

        private void tRINHDOLabel_Click(object sender, EventArgs e)
        {

        }

        private void tRINHDOComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void gcGIAOVIEN_DANGKY_Click(object sender, EventArgs e)
        {

        }
    }
}
