﻿using DevExpress.XtraReports.UI;
using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;

namespace BANDONGHO_TTCS
{
    public partial class rpDOANHTHU_SP : DevExpress.XtraReports.UI.XtraReport
    {
        public rpDOANHTHU_SP(string tungay, string denngay)
        {
            InitializeComponent();
            sqlDataSource1.Connection.ConnectionString = Program.connstr;
            label1.Text = "Thống kê doanh thu theo sản phẩm từ ngày " + tungay
                + " đến ngày " + denngay;
            this.Parameters["TUNGAY"].Value = tungay;
            this.Parameters["DENNGAY"].Value = denngay;
        }

    }
}
