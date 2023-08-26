using DevExpress.XtraReports.UI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace TN_CSDLPT
{
    public partial class frmMain : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        private void openForm(Form newFrm)
        {
            foreach (Form f in this.MdiChildren)
            {
                if ( f.GetType() == newFrm.GetType())
                {
                    f.Activate();
                    return;
                }
            }
            newFrm.MdiParent = this;
            newFrm.Show();
        }

        public void closeAllForm()
        {
            foreach(Form f in this.MdiChildren)
            {
                f.Close();
            }
            this.rbGV.Visible = this.rbSV.Visible
                = this.rbQL.Visible = this.rbBaoCao.Visible = false;
        }


        public frmMain()
        {
            InitializeComponent();

        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmLogin());

        }

        private void toolStripStatusLabel1_Click(object sender, EventArgs e)
        {

        }

        private void btnDangKy_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmRegister());
        }

        private void btnKhoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmKhoa());
        }

        private void btnMonHoc_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmMonHoc());
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            frmLogin frmLogin = new frmLogin();
            openForm(frmLogin);
            frmLogin.btnDN_Click(sender, e);
        }

        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmLop());
        }

        private void btnSinhVien_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmSinhVien());
        }

        private void btnGiaoVien_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmGiaoVien());
        }

        private void barButtonItem3_ItemClick_1(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmBangDiemMonHoc());
        }

        private void barButtonItem4_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmDanhSachDKThi());
        }

        private void ribbonControl1_Click(object sender, EventArgs e) { }

        private void barButtonItem7_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmChuanBiThi());

        }

        private void barButtonItem8_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmThi());
        }

        private void barButtonItem9_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmNhapDe());
        }

        private void barButtonItem11_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            openForm(new frmChuanBiThi());
        }
    }
}
