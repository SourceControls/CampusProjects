using DevExpress.XtraReports.UI;
using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;

namespace TN_CSDLPT
{
    public partial class XrptBangDiemMonHoc : DevExpress.XtraReports.UI.XtraReport
    {
        public XrptBangDiemMonHoc()
        {
            InitializeComponent();
        }

        public XrptBangDiemMonHoc(String maLop, String maMonHoc, int lanThi)
        {
            InitializeComponent();
            this.sqlDataSource1.Connection.ConnectionString = Program.connstr;
            this.sqlDataSource1.Queries[0].Parameters[0].Value = maLop;
            this.sqlDataSource1.Queries[0].Parameters[1].Value = maMonHoc;
            this.sqlDataSource1.Queries[0].Parameters[2].Value = lanThi;
            this.sqlDataSource1.Fill();
        }

    }
}
