using DevExpress.XtraReports.UI;
using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;

namespace TN_CSDLPT
{
    public partial class xrptDanhSachDKThi : DevExpress.XtraReports.UI.XtraReport
    {
        public xrptDanhSachDKThi(DateTime tungay, DateTime denngay)
        {
            InitializeComponent();
            this.sqlDataSource1.Connection.ConnectionString = Program.connstr;
            this.sqlDataSource1.Queries[0].Parameters[0].Value = tungay;
            this.sqlDataSource1.Queries[0].Parameters[1].Value = denngay;
            this.sqlDataSource1.Fill();
        }

    }
}
