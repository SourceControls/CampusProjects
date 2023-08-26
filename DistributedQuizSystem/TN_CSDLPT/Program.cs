using DevExpress.Skins;
using DevExpress.UserSkins;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Windows.Forms;

namespace TN_CSDLPT
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        /// 

        public static SqlConnection conn = new SqlConnection();
        public static String connstr;
        public static String connstrPublisher = "Data Source=MYLAPTOP;Initial Catalog=TN_CSDLPT;Integrated Security=true";
        public static SqlDataReader myReader;
        public static String serverName = "";
        public static String username = "";   //user trong DB
        public static String mlogin = ""; //user Server
        public static String password = "";  //password Server

        public static String database = "TN_CSDLPT";
        public static String remoteLogin = "HTKN";
        public static String remotePassword = "123";
        public static String mloginDN = "";  //để quay về site ban đầu
        public static String passwordDN = ""; //để quay về site ban đầu
        public static String mGroup = "";
        public static String mHoTen = "";
        public static int mCoSo = 0;

        public static String loginSV = "SV";
        public static String passwordSV = "123";

        public static BindingSource bdsDSPM = new BindingSource();
        public static frmMain fMain;

        public static String hashWithSHA(String input)
        {
            SHA1CryptoServiceProvider sha = new SHA1CryptoServiceProvider();
            byte[] bs = System.Text.UTF8Encoding.UTF8.GetBytes(input);
            bs = sha.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach(byte b in bs)
            {
                s.Append(b);
            }
            return s.ToString();
        }
        public static int connectToOtherSite(String serverName)
        {
            if (Program.serverName.Equals(serverName))  //nếu vẫn là server hiện tại
                return 0;
            if (mlogin.Equals("HTKN"))  //từ site khác về site ban đầu
            {
                mlogin = mloginDN;
                password = passwordDN;
            } 
            else   //từ site ban đầu về site khác
            {
                mlogin = remoteLogin;
                password = remotePassword;
            }
            Program.serverName = serverName;
            return connectToDB();
        }
        public static int connectToDB()
        {
            if (conn != null && conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            try
            {
                // Khoi tao connection string
                connstr = "Data Source=" + Program.serverName +
                    ";Initial Catalog=" + Program.database + ";User ID=" +
                    Program.mlogin + ";Password=" + Program.password+"; MultipleActiveResultSets = true;";

                Program.conn.ConnectionString = connstr;

                conn.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi kết nối server!" + ex.Message);
                return 0;
            }
            return 1;
        }
        public static DataTable ExecSqlDatatable(String cmd)
        {
            DataTable dt = new DataTable();
            if (conn.State == ConnectionState.Closed) conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd, conn);
            da.Fill(dt);
            conn.Close();
            return dt;
        }
        public static int ExecSqlNonQuery(String cmd)
        {
            SqlCommand sqlCmd = new SqlCommand(cmd, conn);
            sqlCmd.CommandType = CommandType.Text;
            sqlCmd.CommandTimeout = 600;
            if (conn.State == ConnectionState.Closed) conn.Open();
            try
            {
                if (sqlCmd.ExecuteNonQuery() == 1)
                    throw new Exception("Has error");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi thực thi sql non query, chi tiết: " + ex.Message);
                return 1;
            } finally
            {
                conn.Close();
            }
            return 0;
        }
        public static SqlDataReader ExecSqlDataReader(String cmd)
        {
            SqlDataReader myReader;
            SqlCommand sqlCmd = new SqlCommand(cmd, conn);
            sqlCmd.CommandType = CommandType.Text;
            if (conn.State == ConnectionState.Closed) conn.Open();
            try
            {
                myReader = sqlCmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                conn.Close();
                return null;
            }
            return myReader;
        }

        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            fMain = new frmMain();
            Application.Run(fMain);

        }
    }
}
