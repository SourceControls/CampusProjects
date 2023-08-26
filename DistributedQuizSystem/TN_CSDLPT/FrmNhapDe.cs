using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
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
    public partial class frmNhapDe : DevExpress.XtraEditors.XtraForm
    {
        int viTri = 0;
        public frmNhapDe()
        {
            InitializeComponent();
        }
       
        private void mONHOCBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.bdsMonHoc.EndEdit();
            this.tableAdapterManager.UpdateAll(this.dSet);

        }

        private void frmNhapDe_Load(object sender, EventArgs e)
        {
            dSet.EnforceConstraints = true;
            // TODO: This line of code loads data into the 'dSet.MONHOC' table. You can move, or remove it, as needed.
            this.MONHOCTableAdapter.Connection.ConnectionString = Program.connstr;
            this.MONHOCTableAdapter.Fill(this.dSet.MONHOC);
            //loại bỏ dSet 1
            this.bdsBoDe.DataSource = dSet.SP_SELECT_BO_DE;
            this.sP_SELECT_BO_DEGridControl.DataSource = bdsBoDe;

            cbMonHoc.DataSource = bdsMonHoc;
            cbMonHoc.DisplayMember = "TENMH";
            cbMonHoc.ValueMember = "MAMH";


       

            cbTrinhDo1.SelectedIndex = 0;
            if (bdsMonHoc.Count > 0)
                cbMonHoc.SelectedIndex = 0;
       

        }

        private void btnbatDauNhap_Click(object sender, EventArgs e)
        {
            if (bdsMonHoc.Count == 0)
            {
                MessageBox.Show("Không có môn học");
                return;
            }

            MessageBox.Show(Program.mloginDN + " " + cbMonHoc.SelectedValue.ToString());
            this.sP_SELECT_BO_DETableAdapter.Connection.ConnectionString = Program.connstr;
            this.sP_SELECT_BO_DETableAdapter.Fill(this.dSet.SP_SELECT_BO_DE, Program.mloginDN, cbMonHoc.SelectedValue.ToString());

            pn2.Enabled = true;
            pn1.Enabled = false;
        }

        private void btnLuuBoDe_Click_1(object sender, EventArgs e)
        {

            bdsBoDe.EndEdit();
            if (bdsBoDe.Position >= 0)
            {
                String dapAn = ((DataRowView)bdsBoDe[bdsBoDe.Position])["DAP_AN"].ToString().Trim().ToUpper();
                if (!"ABCD".Contains(dapAn) || dapAn.Length > 1) //check miền giá trị và độ dài
                {
                    MessageBox.Show("Đáp Án Phải Là 1 Trong Các Giá Trị A,B,C,D");
                    return;
                }
                ((DataRowView)bdsBoDe[bdsBoDe.Position])["DAP_AN"] = dapAn; //chuyển đáp án về uppercase

            }
            DataTable dt = dSet.SP_SELECT_BO_DE.Copy();
            String maMH = cbMonHoc.SelectedValue.ToString();
            DataRow dtrow;
            dt.Columns.Remove("STT");
            bool blankRow = true;
            for (int row = dt.Rows.Count - 1; row > -1; row--)  //check empty row
            {
                dtrow = dt.Rows[row];
                blankRow = true;
                for (int col = 2; col < 8; col++)  //row không có câu hỏi, câu tl, đáp án
                {
                    if (dtrow[col].ToString().Trim().Length != 0)
                    {
                        blankRow = false;
                        break;
                    }
                }
                if (blankRow)
                {
                  
                    dtrow.Delete();
                    continue;
                }
                for (int col = 2; col < 8; col++) //row chỉ trống 1 vài field
                {
                    if (dtrow[col].ToString().Trim().Length == 0)
                    {
                        bdsBoDe.Position = row;
                        gridView1.FocusedRowHandle = row;
                        System.Threading.Thread.Sleep(1000);
                        if (MessageBox.Show("Dòng Có Dữ Liệu Trống, Bỏ Lưu Xuống Server?\n", "", MessageBoxButtons.OKCancel) == DialogResult.OK)
                        {
                            dtrow.Delete();
                            break;
                        }
                        else
                        {
                            MessageBox.Show("Lưu đề thất bại, dữ liệu không được để trống");
                            return;
                        }

                    }
                }
            }
            dt.AcceptChanges();
            SqlParameter para = new SqlParameter();
            para.SqlDbType = SqlDbType.Structured;
            para.TypeName = "dbo.TYPE_BO_DE";
            para.ParameterName = "@BODE";
            para.Value = dt;

            SqlParameter para1 = new SqlParameter();
            para1.SqlDbType = SqlDbType.Char;
            para1.ParameterName = "@MAGV";
            para1.Value = Program.username;

            SqlParameter para2 = new SqlParameter();
            para2.SqlDbType = SqlDbType.Char;
            para2.ParameterName = "@MAMH";
            para2.Value = maMH; 
            

            Program.connectToDB();
            SqlCommand Sqlcmd = new SqlCommand("SP_INSERT_BODE", Program.conn);
            Sqlcmd.Parameters.Clear();
            Sqlcmd.CommandType = CommandType.StoredProcedure;
            Sqlcmd.Parameters.Add(para);
            Sqlcmd.Parameters.Add(para1);
            Sqlcmd.Parameters.Add(para2);

            try
            {
                Sqlcmd.ExecuteNonQuery();
                MessageBox.Show("Lưu bộ đề thành công");
                dSet.SP_SELECT_BO_DE.Clear();
                pn1.Enabled = true;
                pn2.Enabled = false;
                viTri = 0;
            }
            catch(SqlException ex)
            {
                MessageBox.Show("Lưu bộ đề thất bại: " + ex.Message);

            }


        }

        private void btnThemCauHoi_Click(object sender, EventArgs e)
        {
           
            bdsBoDe.EndEdit();
            if(bdsBoDe.Count > 0)//check dòng trước bị trống

            {
                DataRowView row = (DataRowView)bdsBoDe[bdsBoDe.Count - 1];
                for (int i = 3; i < 9; i++)  
                {
                    if (row[i].ToString().Trim().Length == 0)
                    {

                            MessageBox.Show("Dữ liệu không được để trống");
                        bdsBoDe.Position = bdsBoDe.Count - 1;
                        return;
                    }
                }
            }
            if (bdsBoDe.Position >= 0)
            {
                String dapAn = ((DataRowView)bdsBoDe[bdsBoDe.Position])["DAP_AN"].ToString().Trim().ToUpper();
                if (!"ABCD".Contains(dapAn) || dapAn.Length > 1) //check miền giá trị và độ dài
                {
                    MessageBox.Show("Đáp Án Phải Là 1 Trong Các Giá Trị A,B,C,D");
                    return;
                }
                ((DataRowView)bdsBoDe[bdsBoDe.Position])["DAP_AN"] = dapAn; //chuyển đáp án về uppercase
            }



            bdsBoDe.AddNew();
                ((DataRowView)bdsBoDe[bdsBoDe.Position])["STT"] = bdsBoDe.Count;
                ((DataRowView)bdsBoDe[bdsBoDe.Position])["TRINHDO"] = cbTrinhDo1.SelectedItem.ToString().Substring(0, 1);
             bdsBoDe.ResetCurrentItem();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            //if (bdsBoDe.Position < 0)
            //    return;

            //if (MessageBox.Show("Xác nhận xóa câu hỏi? ", "Xác Nhận", MessageBoxButtons.OKCancel) == DialogResult.OK)
            //{
            //    int STT = int.Parse(((DataRowView)bdsBoDe[bdsBoDe.Position])["STT"].ToString());

            //    bdsBoDe.RemoveCurrent();
            //    for (int i = STT; i <= bdsBoDe.Count; i++)
            //    {
            //        ((DataRowView)bdsBoDe[i - 1])["STT"] = i;
            //    }
            //    bdsBoDe.EndEdit();
            //}
        }



        private void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            
            if (bdsBoDe.Position < 0)
                return;
            if (bdsBoDe.Position == viTri)
                return;
            String dapAn = ((DataRowView)bdsBoDe[viTri])["DAP_AN"].ToString().Trim().ToUpper();
            if (!"ABCD".Contains(dapAn) || dapAn.Length > 1) //check miền giá trị và độ dài
            {
                bdsBoDe.Position = viTri;
                MessageBox.Show("Đáp Án Phải Là 1 Trong Các Giá Trị A,B,C,D");
                return;
            }
            ((DataRowView)bdsBoDe[viTri])["DAP_AN"] = dapAn; //chuyển đáp án về uppercase
            viTri = bdsBoDe.Position;
            //set lại cb trình độ
            String trinhDo = ((DataRowView)bdsBoDe[bdsBoDe.Position])["TRINHDO"].ToString();
            if (trinhDo.Trim().Length == 0)
                return;
            else
            {
                if (trinhDo == "A")
                {
                    cbTrinhDo1.SelectedIndex = 0;
                }
                else if (trinhDo == "B")
                {
                    cbTrinhDo1.SelectedIndex = 1;

                }
                else if (trinhDo == "C")
                {
                    cbTrinhDo1.SelectedIndex = 2;

                }
            }
        }


        private void btnHuyNhap_Click(object sender, EventArgs e)
        {
            bdsBoDe.CancelEdit();
            viTri = 0;
            dSet.SP_SELECT_BO_DE.Clear();
            pn2.Enabled = false;
            pn1.Enabled = true;

        }

        private void cbTrinhDo1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bdsBoDe.Position < 0)
                return;
            else
            {
                ((DataRowView)bdsBoDe[bdsBoDe.Position])["TRINHDO"] = cbTrinhDo1.SelectedItem.ToString().Substring(0, 1);
                bdsBoDe.ResetCurrentItem();
            }
        }
    }
}