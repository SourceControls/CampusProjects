﻿using DevExpress.XtraEditors;
using DevExpress.XtraReports.UI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace TN_CSDLPT
{
    public partial class frmBangDiemMonHoc : DevExpress.XtraEditors.XtraForm
    {
        private String maLop;
        private String maMonHoc;

        public frmBangDiemMonHoc()
        {
            InitializeComponent();
            // This line of code is generated by Data Source Configuration Wizard
        }

        private void initBDS()
        {
            this.DSet.EnforceConstraints = false;

            this.kHOATableAdapter.Connection.ConnectionString = Program.connstr;
            this.kHOATableAdapter.Fill(this.DSet.KHOA);

            this.mONHOCTableAdapter.Connection.ConnectionString = Program.connstr;
            this.mONHOCTableAdapter.Fill(this.DSet.MONHOC);

            this.tENLOPMALOPTableAdapter.Connection.ConnectionString = Program.connstr;
            this.tENLOPMALOPTableAdapter.Fill(this.DSet.TENLOPMALOP);

            //this.sP_DSSV_CO_BAI_THITableAdapter.Connection.ConnectionString = Program.connstr;

        }

        private void frmBangDiemMonHoc_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'DSet.KHOA' table. You can move, or remove it, as needed.
            initBDS();

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
            cbTuyChon.SelectedIndex = 0;
            cbLanThi.SelectedIndex = 0;
        }

        private void cbCoSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbCoSo.SelectedValue.ToString() == "System.Data.DataRowView")
            {
                return;
            }
            Program.mCoSo = cbCoSo.SelectedIndex;
            Program.connectToOtherSite(cbCoSo.SelectedValue.ToString());
            initBDS();
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {

            if(cbTuyChon.SelectedIndex == 0) //xem danh sách điểm
            {
                XrptBangDiemMonHoc rptBDMH = new XrptBangDiemMonHoc(maLop, maMonHoc, int.Parse(cbLanThi.Text.ToString()));
                rptBDMH.lbHeaderBangDiemMonHoc.Text = "DANH SÁCH ĐIỂM KẾT THÚC MÔN CỦA LỚP " + cbLop.Text.ToString().ToUpper()
                        + " MÔN HỌC " + cbMonHoc.Text.ToString() + " LẦN " + cbLanThi.Text.ToString();
                ReportPrintTool rpt = new ReportPrintTool(rptBDMH);
                rpt.ShowPreviewDialog();
            }
            else //xem chi tiết bài thi
            {   
                if(bdsDSSV.Count <= 0)
                {
                    MessageBox.Show("Chưa tải danh sách sinh viên hoặc không có sinh viên!");
                    return;
                }
                
                String maSV = ((DataRowView)bdsDSSV[bdsDSSV.Position])["MASV"].ToString();

                String maLop = cbLop.SelectedValue.ToString();

                String maMH = cbMonHoc.SelectedValue.ToString();
                int lan = int.Parse(cbLanThi.Text);
                MessageBox.Show(maSV + " "+ lan);
                XrptKetQuaBaiThi x = new XrptKetQuaBaiThi(maSV,maMH,lan);
                ReportPrintTool rpt = new ReportPrintTool(x);
                rpt.ShowPreviewDialog();
            }

        }

        private void cbLop_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                maLop = cbLop.SelectedValue.ToString();
            } catch(Exception)
            {

            }
        }

        private void cbMonHoc_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                maMonHoc = cbMonHoc.SelectedValue.ToString();
            }
            catch (Exception)
            {

            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(cbTuyChon.SelectedIndex == 1)
            {
                 cbLanThi.Enabled = cbMonHoc.Enabled = cbLop.Enabled = false;
                 btnTaiDSSV.Enabled = true;
            }
            else
            {
                cbLanThi.Enabled = cbMonHoc.Enabled = cbLop.Enabled = true;
                btnTaiDSSV.Enabled = false;
            }

        }

        private void dssv_Click(object sender, EventArgs e)
        {
            MessageBox.Show(cbLop.SelectedValue.ToString() + "  " + cbMonHoc.SelectedValue.ToString());
            sP_DSSV_CO_BAI_THIGridControl.DataSource = DSet.SP_DSSV_CO_BAI_THI;
            this.sP_DSSV_CO_BAI_THITableAdapter.Fill(this.DSet.SP_DSSV_CO_BAI_THI, cbLop.SelectedValue.ToString(), cbMonHoc.SelectedValue.ToString(), int.Parse(cbLanThi.Text));
        }

        private void panelControl1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}