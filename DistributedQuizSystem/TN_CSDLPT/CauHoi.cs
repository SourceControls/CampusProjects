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
    public partial class CauHoi : UserControl
    {
        public CauHoi()
        {
            InitializeComponent();
        }

        private int stt;
        private int cauHoi;
        private string noiDung;
        private string a;
        private string b;
        private string c;
        private string d;
        private string dapAn;
        private String svChon;

        public CauHoi(int stt, int cauHoi, string noiDung, string a, string b, string c, string d, string dapAn)
        {
            InitializeComponent();
            this.stt = stt;
            this.cauHoi = cauHoi;
            this.noiDung = noiDung;
            this.a = a;
            this.b = b;
            this.c = c;
            this.d = d;
            this.dapAn = dapAn;

            lbSTT.Text = "Câu " + stt + ": ";
            lbNDCH.Text = noiDung;
            lbTLA.Text = a;
            lbTLB.Text = b;
            lbTLC.Text = c;
            lbTLD.Text = d;
        }

        //dung luon radioButton da keo tha vi co da co group
        //khong can xet them dk
        [Category("Custom props")]
        public int STT
        {
            get { return stt; }
            set { stt = value; lbSTT.Text = "Câu " + value + ": "; }
        }


        [Category("Custom props")]
        public String SV_Chon
        {
            get { return svChon; }
            set { svChon = value; }
        }

        [Category("Custom props")]
        public string NoiDung
        {
            get { return noiDung; }
            set { noiDung = value; lbNDCH.Text = value; }
        }

        [Category("Custom props")]
        public string DapAn
        {
            get { return dapAn; }
            set { dapAn = value; }
        }

        [Category("Custom props")]
        public string A
        {
            get { return a; }
            set { a = value; lbTLA.Text = value; }
        }

        [Category("Custom props")]
        public string B
        {
            get { return b; }
            set { b = value; lbTLB.Text = value; }
        }

        [Category("Custom props")]
        public string C
        {
            get { return c; }
            set { c = value; lbTLC.Text = value; }
        }

        [Category("Custom props")]
        public string D
        {
            get { return d; }
            set { d = value; lbTLD.Text = value; }
        }

        [Category("Custom props")]
        public RadioButton Rbtn_A
        {
            get { return rdbA; }
            set { rdbA = value; }
        }

        [Category("Custom props")]
        public RadioButton Rbtn_B
        {
            get { return rdbB; }
            set { rdbB = value; }
        }

        [Category("Custom props")]
        public RadioButton Rbtn_C
        {
            get { return rdbC; }
            set { rdbC = value; }
        }

        [Category("Custom props")]
        public RadioButton Rbtn_D
        {
            get { return rdbD; }
            set { rdbD = value; }
        }


        private void radio_A_CheckedChanged(object sender, EventArgs e)
        {
            // radio_A.Checked = true;
        }

        private void lb_textA_Click(object sender, EventArgs e)
        {
            rdbA.Checked = true;

        }

        private void lb_textB_Click(object sender, EventArgs e)
        {
            rdbB.Checked = true;

        }

        private void lb_textC_Click(object sender, EventArgs e)
        {
            rdbC.Checked = true;
        }

        private void lb_textD_Click(object sender, EventArgs e)
        {
            rdbD.Checked = true;

        }

        
        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void rdbA_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void CauHoi_Load(object sender, EventArgs e)
        {

        }
    }
}
