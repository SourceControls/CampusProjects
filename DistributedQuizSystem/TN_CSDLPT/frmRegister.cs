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

namespace TN_CSDLPT
{
    public partial class frmRegister : DevExpress.XtraEditors.XtraForm
    {
        private static String nhom;
        private static String tenDangNhap;
        private static String matKhau;
        private static String ma;
        public frmRegister()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            nhom = cbNhom.SelectedValue.ToString();
        }

        private void frmRegister_Load(object sender, EventArgs e)
        {
            if(Program.mGroup == "CoSo")
            {
                Dictionary<String, String> comboSource = new Dictionary<String, String>();
                comboSource.Add("CoSo", "Cơ sở");
                comboSource.Add("GiangVien", "Giảng viên");
                cbNhom.DataSource = new BindingSource(comboSource, null);
                cbNhom.DisplayMember = "Value";
                cbNhom.ValueMember = "Key";
                cbNhom.Enabled = true;
                cbNhom.SelectedIndex = 0;
                nhom = cbNhom.SelectedValue.ToString();
            }
        }

        private void btnDangKy_Click(object sender, EventArgs e)
        {
            tenDangNhap = txtTenDangNhap.Text.Trim();
            matKhau = txtMatKhau.Text.Trim();
            ma = txtMa.Text.Trim();
            if(ma == "" || tenDangNhap == "" || matKhau == "")
            {
                MessageBox.Show("Cần nhập đầy đủ thông tin");
                return;
            }
            String cmd = "EXEC sp_dang_ky '" + tenDangNhap + "','" + matKhau + "', '" + ma + "', '";
            if (Program.mGroup != "Truong")
            {
                cmd += nhom + "'";
            } else
            {
                cmd += "Truong'";
            }

            if (Program.ExecSqlNonQuery(cmd) == 1) return;
            MessageBox.Show("Đăng ký tài khoản thành công");

        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}