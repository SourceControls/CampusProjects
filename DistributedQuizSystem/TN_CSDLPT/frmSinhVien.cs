using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TN_CSDLPT
{
    public partial class frmSinhVien : DevExpress.XtraEditors.XtraForm
    {
        private static int viTri;
        private static string maLop;
        private static string maSV;
        private static int slLop;
        private static int slSv;
        private static bool isAssignSlSv = true;
        public frmSinhVien()
        {
            InitializeComponent();
        }

        private void btnThoatLop_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Close();

        }

        private void lOPBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.bdsLop.EndEdit();
            this.tableAdapterManager.UpdateAll(this.DSet);
        }

        private void initBDS()
        {
            this.DSet.EnforceConstraints = false;
            this.kHOATableAdapter.Connection.ConnectionString = Program.connstr;
            this.kHOATableAdapter.Fill(this.DSet.KHOA);

            this.lOPTableAdapter.Connection.ConnectionString = Program.connstr;
            this.lOPTableAdapter.Fill(this.DSet.LOP);

            this.gIAOVIEN_DANGKYTableAdapter.Connection.ConnectionString = Program.connstr;
            this.gIAOVIEN_DANGKYTableAdapter.Fill(this.DSet.GIAOVIEN_DANGKY);

            this.sINHVIENTableAdapter.Connection.ConnectionString = Program.connstr;
            this.sINHVIENTableAdapter.Fill(this.DSet.SINHVIEN);

            this.bANGDIEMTableAdapter.Connection.ConnectionString = Program.connstr;
            this.bANGDIEMTableAdapter.Fill(this.DSet.BANGDIEM);
        }

        private void frmSinhVien_Load(object sender, EventArgs e)
        {
            
            initBDS();

            if (bdsLop.Count == 0) btnXoaLop.Enabled = false;

            cbCoSo.DataSource = Program.bdsDSPM;
            cbCoSo.DisplayMember = "TENCN";
            cbCoSo.ValueMember = "TENSERVER";
            cbCoSo.SelectedIndex = Program.mCoSo;


            if(Program.mGroup.ToUpper().Equals("TRUONG"))
            {
                btnThemLop.Enabled = btnHieuChinhLop.Enabled =
                btnXoaLop.Enabled = btnGhiLop.Enabled = btnPhucHoiLop.Enabled = false;
                contextMenuStrip1.Enabled = false;
                cbCoSo.Enabled = true;
            } else
            {
                btnGhiLop.Enabled = btnPhucHoiLop.Enabled = false;
                cbCoSo.Enabled = false;
            }

            if(bdsKhoa.Count == 0)
            {
                MessageBox.Show("Không có khoa, phải có ít nhất một khoa tồn tại!");
                return;
            }

            panelLop.Enabled = false;
            slLop = bdsLop.Count;
            slSv = bdsSinhVien.Count;
        }

        private void btnThemLop_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            viTri = bdsLop.Position;
            bdsLop.AddNew();
            cbTenKhoa.SelectedIndex = 0;

            //bật tắt các controller khác
            btnGhiLop.Enabled = btnPhucHoiLop.Enabled = true;
            panelLop.Enabled = true;
            gcLop.Enabled = false;
            btnThemLop.Enabled = btnHieuChinhLop.Enabled = 
                btnXoaLop.Enabled = btnReloadLop.Enabled = btnThoatLop.Enabled = false;
        }

        private void cbTenKhoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if(cbTenKhoa.SelectedValue == null) return;
                txtMaKhoa.Text = cbTenKhoa.SelectedValue.ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:" + ex.Message);
            }
        }

        private void btnHieuChinhLop_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            viTri = bdsLop.Position;

            //bật tắt các controller khácbtnGhiLop.Enabled = btnPhucHoiLop.Enabled = true;
            btnGhiLop.Enabled = btnPhucHoiLop.Enabled = true;
            panelLop.Enabled = true;
            gcLop.Enabled = false;
            btnThemLop.Enabled = btnHieuChinhLop.Enabled =
                btnXoaLop.Enabled = btnReloadLop.Enabled = btnThoatLop.Enabled = false;

        }

        private void btnXoaLop_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (bdsGV_DK.Count > 0)
            {
                MessageBox.Show("Lớp đã được đăng ký, không thể xoá!");
                return;
            }
            if (bdsSinhVien.Count > 0)
            {
                MessageBox.Show("Lớp đang có sinh viên, không thể xoá!");
                return;
            }
            if (MessageBox.Show("Xác nhận xóa lớp? ", "Xác Nhận", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                try
                {
                    maLop = ((DataRowView)bdsLop[bdsLop.Position])["MALOP"].ToString();
                    bdsLop.RemoveCurrent();
                    lOPTableAdapter.Connection.ConnectionString = Program.connstr;
                    lOPTableAdapter.Update(this.DSet.LOP);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi khi xóa lớp! " + ex.ToString());
                    lOPTableAdapter.Fill(this.DSet.LOP);
                    bdsLop.Position = bdsLop.Find("MALOP", maLop);
                    return;
                }
            }
            if (bdsLop.Count == 0) btnXoaLop.Enabled = false;
        }

        private void btnGhiLop_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (edtMaLop.Text.Trim().Length == 0 || edtTenLop.Text.Trim().Length == 0)
            {
                MessageBox.Show("Mã lớp và Tên lớp Không Được Để Trống");
                return;
            }

            if(bdsLop.Find("MALOP",edtMaLop.Text.Trim()) != -1)
            {
                MessageBox.Show("Lớp đã tồn tại!");
                return;
            }


            string cmd = "exec [sp_kt_ton_tai_lop] '" + edtMaLop.Text.Trim() + "'";
            if(bdsLop.Count != slLop && Program.ExecSqlNonQuery(cmd) == 1)
            {
                return;
            }
            try
            {
                bdsLop.EndEdit();
                lOPTableAdapter.Connection.ConnectionString = Program.connstr;
                lOPTableAdapter.Update(DSet.LOP);
                bdsLop.ResetCurrentItem();
                slLop = bdsLop.Count;

            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi ghi Lớp: " + ex.Message);
                lOPTableAdapter.Fill(DSet.LOP);
            }
            //bật tắt các controller khác
            btnGhiLop.Enabled = btnPhucHoiLop.Enabled = panelLop.Enabled = false;
            btnHieuChinhLop.Enabled = btnXoaLop.Enabled = 
                btnReloadLop.Enabled = btnThoatLop.Enabled = 
                gcLop.Enabled = btnThemLop.Enabled = true;
        }

        private void btnReloadLop_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                lOPTableAdapter.Fill(DSet.LOP);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi Reload: " + ex.ToString());
                return;
            }
        }

        private void btnPhucHoiLop_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            bdsLop.CancelEdit();
            while(slLop < bdsLop.Count)
            {
                bdsLop.RemoveAt(bdsLop.Count - 1);
            }
            bdsLop.Position = viTri;

            //bật tắt các controller khác
            btnGhiLop.Enabled = btnPhucHoiLop.Enabled = false;
            panelLop.Enabled = false;
            gcLop.Enabled = true;
            btnHieuChinhLop.Enabled = btnXoaLop.Enabled = 
            btnReloadLop.Enabled = btnThoatLop.Enabled = btnThemLop.Enabled = true;
        }

        private void cbTenKhoa_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (cbTenKhoa.SelectedValue == null || 
                cbTenKhoa.SelectedValue.ToString() == "System.Data.DataRowView")
            {
                return;
            }
            try
            {
                txtMaKhoa.Text = cbTenKhoa.SelectedValue.ToString();
            } catch (Exception)
            {

            }
        }

        private void thêmSinhViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (bdsLop.Count == 0)
            {
                MessageBox.Show("Phải có ít nhất một lớp!");
                return;
            }
            // Trường hợp new nhiều dòng thì chỉ gán 1 lần duy nhất
            if(isAssignSlSv)
            {
                slSv = bdsSinhVien.Count;
                isAssignSlSv = false;
            }
            bdsSinhVien.AddNew();
            ((DataRowView)bdsSinhVien[bdsSinhVien.Position])["MALOP"] = edtMaLop.Text;
        }

        private void ghiSinhViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (bdsSinhVien.Count == 0 || slSv == bdsSinhVien.Count)
            {
                return;
            }

            string masv="";
            string ho="";
            string ten="";

            string cmd;
            for(int i = slSv; i < bdsSinhVien.Count; i++)
            {
                masv = ((DataRowView)bdsSinhVien[i])["MASV"].ToString().Trim();
                ho = ((DataRowView)bdsSinhVien[i])["HO"].ToString();
                ten = ((DataRowView)bdsSinhVien[i])["TEN"].ToString();
                

                if (masv.Trim().Length == 0 || ho.Trim().Length == 0 || ten.Trim().Length == 0)
                {
                    MessageBox.Show("Bạn cần nhập đầy đủ các trường Mã sinh viên, họ, tên!");
                    return;
                }
                cmd = "exec sp_kt_ton_tai_sinh_vien '" + masv + "'";
                if (Program.ExecSqlNonQuery(cmd) == 1)
                {
                    return;
                }
            }
            try
            {
                bdsSinhVien.EndEdit();
                sINHVIENTableAdapter.Connection.ConnectionString = Program.connstr;
                sINHVIENTableAdapter.Update(DSet.SINHVIEN);
                bdsSinhVien.ResetCurrentItem();
                slSv = bdsSinhVien.Count;
                isAssignSlSv = true;
                MessageBox.Show("Thêm sinh viên thành công!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi ghi sinh viên: " + ex.Message);
                sINHVIENTableAdapter.Fill(DSet.SINHVIEN);
            }
        }

        private void xoáSinhViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (bdsSinhVien.Count == 0) return;
            // Trường hợp dòng trống
            if(((DataRowView) bdsSinhVien[bdsSinhVien.Position])["MASV"].ToString().Trim().Length == 0)
            {
                bdsSinhVien.RemoveCurrent();
                return;
            }
            if(bdsBangDiem.Count > 0)
            {
                MessageBox.Show("Không thể xoá sinh viên vì đã có điểm!");
                return;
            }
            if (MessageBox.Show("Xác nhận xóa sinh viên? ", "Xác Nhận", MessageBoxButtons.OKCancel) == DialogResult.OK)
            {
                try
                {
                    // Lưu mã để phục hồi vị trí khi bị lỗi
                    maSV = ((DataRowView)bdsSinhVien[bdsSinhVien.Position])["MASV"].ToString();
                    bdsSinhVien.RemoveCurrent();
                    sINHVIENTableAdapter.Connection.ConnectionString = Program.connstr;
                    sINHVIENTableAdapter.Update(this.DSet.SINHVIEN);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi khi xóa sinh viên! " + ex.ToString());
                    sINHVIENTableAdapter.Fill(this.DSet.SINHVIEN);
                    bdsSinhVien.Position = bdsSinhVien.Find("MASV", maSV);
                    return;
                }
            }
        }

        private void phụcHồiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bdsSinhVien.CancelEdit();
        }

        private void cbCoSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(cbCoSo.SelectedValue.ToString() == "System.Data.DataRowView")
            {
                return;
            }
            Program.mCoSo = cbCoSo.SelectedIndex;
            Program.connectToOtherSite(cbCoSo.SelectedValue.ToString());
            initBDS();
        }
    }
}