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
    public partial class frmLogin : DevExpress.XtraEditors.XtraForm
    {
        private SqlConnection connPublisher = new SqlConnection();
        private static String loaiTaiKhoan;
        public frmLogin()
        {
            InitializeComponent();

        }
        private void getDSPM(String cmd)
        {
            if (connPublisher.State == ConnectionState.Closed) connPublisher.Open();
            DataTable dt = new DataTable();
            // query cmd with connection connPublisher
            SqlDataAdapter da = new SqlDataAdapter(cmd, connPublisher);
            da.Fill(dt);
            connPublisher.Close();
            Program.bdsDSPM.DataSource = dt;
            cbCoSo.DataSource = Program.bdsDSPM;
            cbCoSo.DisplayMember = "TENCN";
            cbCoSo.ValueMember = "TENSERVER";

        }
        private int connectToDBRoot()
        {
            if (connPublisher != null && connPublisher.State == ConnectionState.Open)
            {
                connPublisher.Close();
            }
            try
            {
                connPublisher.ConnectionString = Program.connstrPublisher;
                connPublisher.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi kết nối server! " + ex.Message);
                return 0;
            }
            return 1;
        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void frmLogin_Load(object sender, EventArgs e)
        {
            if(connectToDBRoot() == 0)
            {
                return;
            }
            getDSPM("select * from v_dspm");
            cbCoSo.SelectedIndex = 0;
            Program.serverName = cbCoSo.SelectedValue.ToString();

            Dictionary<String, String> cbLoaiTaiKhoanSource = new Dictionary<string, string>();
            cbLoaiTaiKhoanSource.Add("SinhVien", "Sinh Viên");
            cbLoaiTaiKhoanSource.Add("GiangVien", "Giảng Viên");
            cbLoaiTaiKhoan.DataSource = new BindingSource(cbLoaiTaiKhoanSource, null);
            cbLoaiTaiKhoan.DisplayMember = "Value";
            cbLoaiTaiKhoan.ValueMember = "Key";
            cbLoaiTaiKhoan.SelectedIndex = 0;
            loaiTaiKhoan = cbLoaiTaiKhoan.SelectedValue.ToString();

        }

        private void cbCoSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            Program.serverName = cbCoSo.SelectedValue.ToString();
        }

        public void btnDN_Click(object sender, EventArgs e)
        {
            if (txtTenDN.Text.Trim() == "" || txtPassword.Text.Trim() == "")
            {
                MessageBox.Show("Tên đăng nhập và password không được để trống!");
                return;
            }
            String cmd;
            if (loaiTaiKhoan == "SinhVien")
            {
                Program.mlogin = Program.loginSV;
                Program.password = Program.passwordSV;
                cmd = "exec sp_get_infor_user '" + txtTenDN.Text.Trim() + "', '" + Program.hashWithSHA(txtPassword.Text.Trim()) + "'";
            }
            else
            {
                Program.mlogin = txtTenDN.Text.Trim();
                Program.password = txtPassword.Text.Trim();
                cmd = "exec sp_get_infor_user '" + Program.mlogin + "', ''";
            }
            if (Program.connectToDB() == 0) return;

            Program.mloginDN = Program.mlogin;
            Program.passwordDN = Program.password;
            Program.mCoSo = cbCoSo.SelectedIndex;


            Program.myReader = Program.ExecSqlDataReader(cmd);
            if (Program.myReader == null) return;
            Program.myReader.Read();

            Program.username = Program.myReader.GetString(0);

            if (Convert.IsDBNull(Program.username))
            {
                MessageBox.Show("Login bạn nhập không có quyền truy cập dữ liệu!");
                return;
            }

            Program.mHoTen = Program.myReader.GetString(1);
            Program.mGroup = Program.myReader.GetString(2);
            Program.myReader.Close();
            Program.conn.Close();
            Program.fMain.statusID.Text = Program.username;
            Program.fMain.statusHoTen.Text = Program.mHoTen;
            Program.fMain.statusNhom.Text = Program.mGroup;

            if (Program.mGroup == "SinhVien")
            {
                Program.fMain.btnDangKy.Enabled = Program.fMain.rbBaoCao.Visible
                    = Program.fMain.rbGV.Visible = Program.fMain.rbQL.Visible = false;
                Program.fMain.rbSV.Visible = true;
            } else if (Program.mGroup == "GiangVien")
            {
                Program.fMain.btnDangKy.Enabled = Program.fMain.rbBaoCao.Visible
                   = Program.fMain.rbQL.Visible = false;
                Program.fMain.rbSV.Visible = Program.fMain.rbGV.Visible = true;
            } else if (Program.mGroup == "Truong") {
                Program.fMain.btnDangKy.Enabled = Program.fMain.rbBaoCao.Visible
                     = Program.fMain.rbQL.Visible = true;
                Program.fMain.rbGV.Visible = Program.fMain.rbSV.Visible = false;
            }  else
            {
                Program.fMain.btnDangKy.Enabled = Program.fMain.rbBaoCao.Visible
                  = Program.fMain.rbQL.Visible = Program.fMain.rbGV.Visible = Program.fMain.rbSV.Visible = true;
            }
            
            foreach(Form f in Program.fMain.MdiChildren)
            {
                if (f.GetType() == typeof(frmLogin)) continue;
                f.Close();
            }
        }

        private void cbLoaiTaiKhoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            loaiTaiKhoan = cbLoaiTaiKhoan.SelectedValue.ToString();
            if(cbLoaiTaiKhoan.SelectedIndex == 0)
            {
                lbTK.Text = "Mã sinh viên";
            } else
            {
                lbTK.Text = "Tên đăng nhập";

                Console.WriteLine(Program.hashWithSHA("123"));
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
            Program.fMain.closeAllForm();
            Program.fMain.btnDangKy.Enabled = false;
            Program.fMain.statusHoTen.Text = "HoTen";
            Program.fMain.statusID.Text = "ID";
            Program.fMain.statusNhom.Text = "NHOM";
        }
    }
}