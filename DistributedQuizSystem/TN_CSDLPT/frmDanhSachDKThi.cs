using DevExpress.XtraEditors;
using DevExpress.XtraReports.UI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TN_CSDLPT
{
    public partial class frmDanhSachDKThi : DevExpress.XtraEditors.XtraForm
    {
        public frmDanhSachDKThi()
        {
            InitializeComponent();
        }
        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void cbCoSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbCoSo.SelectedValue.ToString() == "System.Data.DataRowView")
            {
                return;
            }
            Program.mCoSo = cbCoSo.SelectedIndex;
            Program.connectToOtherSite(cbCoSo.SelectedValue.ToString());
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            xrptDanhSachDKThi xrptDSDKT = new xrptDanhSachDKThi(dtpTuNgay.Value, dtpDenNgay.Value);
            xrptDSDKT.lbDSDKT.Text = "DANH SÁCH ĐĂNG KÝ THI TRẮC NGHIỆM CƠ SỞ " + (Program.mCoSo + 1) +
                " TỪ NGÀY " + dtpTuNgay.Value.ToString("dd/MM/yyyy") + " ĐẾN NGÀY  " + dtpDenNgay.Value.ToString("dd/MM/yyyy");

            ReportPrintTool rpt = new ReportPrintTool(xrptDSDKT);
            rpt.ShowPreviewDialog();
        }

        private void frmDanhSachDKThi_Load(object sender, EventArgs e)
        {
            cbCoSo.DataSource = Program.bdsDSPM;
            cbCoSo.DisplayMember = "TENCN";
            cbCoSo.ValueMember = "TENSERVER";
            cbCoSo.SelectedIndex = Program.mCoSo;

            if (Program.mGroup.ToUpper().Equals("TRUONG"))
            {
                cbCoSo.Enabled = true;
            }
            else
            {
                cbCoSo.Enabled = false;
            }

        }
    }
}