namespace TN_CSDLPT
{
    public partial class XrptKetQuaBaiThi : DevExpress.XtraReports.UI.XtraReport
    {
        public XrptKetQuaBaiThi()
        {
            InitializeComponent();
            //mark();
        }
        private void mark()
        {
            //XRTable table = this.FindControl("xrTable1", true) as XRTable;
            //int tongCau = table.Rows.Count;
            //int cauDung = 0;
            //foreach (XRTableRow row in table.Rows)
            //{

            //    if (row.Cells[4].Text.Equals(row.Cells[5].Text))
            //    {
            //        ++cauDung;
            //    }
            //}
            //double diem = cauDung * 1.0 / tongCau;

            //lbCauDung.Text += (cauDung + " / " + tongCau).ToString();
            //lbDiem.Text += diem.ToString();


        }
        public XrptKetQuaBaiThi(string masv, string mamh, int lan)
        {
            InitializeComponent();
            this.sqlDataSource1.Connection.ConnectionString = Program.connstr;
            this.sqlDataSource1.Queries[0].Parameters[0].Value = masv;
            this.sqlDataSource1.Queries[0].Parameters[1].Value = mamh;
            this.sqlDataSource1.Queries[0].Parameters[2].Value = lan;
            this.sqlDataSource1.Queries[1].Parameters[0].Value = masv;
            this.sqlDataSource1.Queries[1].Parameters[1].Value = mamh;
            this.sqlDataSource1.Queries[1].Parameters[2].Value = lan;
            this.sqlDataSource1.Fill();
        }

    }
}
