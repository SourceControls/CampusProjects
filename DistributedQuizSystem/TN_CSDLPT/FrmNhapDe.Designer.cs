
namespace TN_CSDLPT
{
    partial class frmNhapDe
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label tENMHLabel;
            System.Windows.Forms.Label label1;
            this.pn1 = new System.Windows.Forms.Panel();
            this.cbMonHoc = new System.Windows.Forms.ComboBox();
            this.bdsMonHoc = new System.Windows.Forms.BindingSource(this.components);
            this.dSet = new TN_CSDLPT.DSet();
            this.btnBatDauNhap = new System.Windows.Forms.Button();
            this.MONHOCTableAdapter = new TN_CSDLPT.DSetTableAdapters.MONHOCTableAdapter();
            this.tableAdapterManager = new TN_CSDLPT.DSetTableAdapters.TableAdapterManager();
            this.bdsBoDe = new System.Windows.Forms.BindingSource(this.components);
            this.sP_SELECT_BO_DETableAdapter = new TN_CSDLPT.DSetTableAdapters.SP_SELECT_BO_DETableAdapter();
            this.dSet1 = new TN_CSDLPT.DSet();
            this.behaviorManager1 = new DevExpress.Utils.Behaviors.BehaviorManager(this.components);
            this.pn2 = new DevExpress.XtraEditors.PanelControl();
            this.sP_SELECT_BO_DEGridControl = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSTT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCAUHOI = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTRINHDO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNOIDUNG = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colB = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colC = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colD = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDAP_AN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.cbTrinhDo1 = new System.Windows.Forms.ComboBox();
            this.btnHuyNhap = new System.Windows.Forms.Button();
            this.btnThemCauHoi = new System.Windows.Forms.Button();
            this.btnLuuBoDe = new System.Windows.Forms.Button();
            tENMHLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            this.pn1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bdsMonHoc)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsBoDe)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.behaviorManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pn2)).BeginInit();
            this.pn2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.sP_SELECT_BO_DEGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // tENMHLabel
            // 
            tENMHLabel.AutoSize = true;
            tENMHLabel.Location = new System.Drawing.Point(57, 56);
            tENMHLabel.Name = "tENMHLabel";
            tENMHLabel.Size = new System.Drawing.Size(69, 13);
            tENMHLabel.TabIndex = 0;
            tENMHLabel.Text = "Tên Môn Học";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(57, 32);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(48, 13);
            label1.TabIndex = 11;
            label1.Text = "Trình Độ";
            // 
            // pn1
            // 
            this.pn1.Controls.Add(this.cbMonHoc);
            this.pn1.Controls.Add(tENMHLabel);
            this.pn1.Controls.Add(this.btnBatDauNhap);
            this.pn1.Dock = System.Windows.Forms.DockStyle.Top;
            this.pn1.Location = new System.Drawing.Point(0, 0);
            this.pn1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pn1.Name = "pn1";
            this.pn1.Size = new System.Drawing.Size(1052, 80);
            this.pn1.TabIndex = 0;
            // 
            // cbMonHoc
            // 
            this.cbMonHoc.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bdsMonHoc, "TENMH", true));
            this.cbMonHoc.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbMonHoc.FormattingEnabled = true;
            this.cbMonHoc.Location = new System.Drawing.Point(145, 54);
            this.cbMonHoc.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbMonHoc.Name = "cbMonHoc";
            this.cbMonHoc.Size = new System.Drawing.Size(278, 21);
            this.cbMonHoc.TabIndex = 1;
            // 
            // bdsMonHoc
            // 
            this.bdsMonHoc.DataMember = "MONHOC";
            this.bdsMonHoc.DataSource = this.dSet;
            // 
            // dSet
            // 
            this.dSet.DataSetName = "DSet";
            this.dSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // btnBatDauNhap
            // 
            this.btnBatDauNhap.Location = new System.Drawing.Point(513, 49);
            this.btnBatDauNhap.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnBatDauNhap.Name = "btnBatDauNhap";
            this.btnBatDauNhap.Size = new System.Drawing.Size(177, 27);
            this.btnBatDauNhap.TabIndex = 4;
            this.btnBatDauNhap.Text = "Bắt Đầu Nhập / Chỉnh Sửa";
            this.btnBatDauNhap.UseVisualStyleBackColor = true;
            this.btnBatDauNhap.Click += new System.EventHandler(this.btnbatDauNhap_Click);
            // 
            // MONHOCTableAdapter
            // 
            this.MONHOCTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.BANGDIEMTableAdapter = null;
            this.tableAdapterManager.BODETableAdapter = null;
            this.tableAdapterManager.COSOTableAdapter = null;
            this.tableAdapterManager.GIAOVIEN_DANGKYTableAdapter = null;
            this.tableAdapterManager.GIAOVIENTableAdapter = null;
            this.tableAdapterManager.KHOATableAdapter = null;
            this.tableAdapterManager.LOPTableAdapter = null;
            this.tableAdapterManager.MONHOCTableAdapter = this.MONHOCTableAdapter;
            this.tableAdapterManager.SINHVIENTableAdapter = null;
            this.tableAdapterManager.SP_SELECT_BO_DETableAdapter = null;
            this.tableAdapterManager.UpdateOrder = TN_CSDLPT.DSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // bdsBoDe
            // 
            this.bdsBoDe.DataMember = "SP_SELECT_BO_DE";
            this.bdsBoDe.DataSource = this.dSet;
            // 
            // sP_SELECT_BO_DETableAdapter
            // 
            this.sP_SELECT_BO_DETableAdapter.ClearBeforeFill = true;
            // 
            // dSet1
            // 
            this.dSet1.DataSetName = "DSet";
            this.dSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // pn2
            // 
            this.pn2.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pn2.Controls.Add(this.sP_SELECT_BO_DEGridControl);
            this.pn2.Controls.Add(this.cbTrinhDo1);
            this.pn2.Controls.Add(this.btnHuyNhap);
            this.pn2.Controls.Add(this.btnThemCauHoi);
            this.pn2.Controls.Add(label1);
            this.pn2.Controls.Add(this.btnLuuBoDe);
            this.pn2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pn2.Enabled = false;
            this.pn2.Location = new System.Drawing.Point(0, 80);
            this.pn2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pn2.Name = "pn2";
            this.pn2.Size = new System.Drawing.Size(1052, 516);
            this.pn2.TabIndex = 14;
            // 
            // sP_SELECT_BO_DEGridControl
            // 
            this.sP_SELECT_BO_DEGridControl.DataMember = "SP_SELECT_BO_DE";
            this.sP_SELECT_BO_DEGridControl.DataSource = this.dSet1;
            this.sP_SELECT_BO_DEGridControl.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.sP_SELECT_BO_DEGridControl.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.sP_SELECT_BO_DEGridControl.Location = new System.Drawing.Point(0, 174);
            this.sP_SELECT_BO_DEGridControl.MainView = this.gridView1;
            this.sP_SELECT_BO_DEGridControl.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.sP_SELECT_BO_DEGridControl.Name = "sP_SELECT_BO_DEGridControl";
            this.sP_SELECT_BO_DEGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemComboBox1});
            this.sP_SELECT_BO_DEGridControl.Size = new System.Drawing.Size(1052, 342);
            this.sP_SELECT_BO_DEGridControl.TabIndex = 3;
            this.sP_SELECT_BO_DEGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSTT,
            this.colCAUHOI,
            this.colTRINHDO,
            this.colNOIDUNG,
            this.colA,
            this.colB,
            this.colC,
            this.colD,
            this.colDAP_AN});
            this.gridView1.DetailHeight = 284;
            this.gridView1.GridControl = this.sP_SELECT_BO_DEGridControl;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.AllowAddRows = DevExpress.Utils.DefaultBoolean.False;
            this.gridView1.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
            // 
            // colSTT
            // 
            this.colSTT.AppearanceCell.Options.UseTextOptions = true;
            this.colSTT.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSTT.AppearanceHeader.Options.UseTextOptions = true;
            this.colSTT.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSTT.FieldName = "STT";
            this.colSTT.MaxWidth = 86;
            this.colSTT.MinWidth = 21;
            this.colSTT.Name = "colSTT";
            this.colSTT.Visible = true;
            this.colSTT.VisibleIndex = 0;
            this.colSTT.Width = 44;
            // 
            // colCAUHOI
            // 
            this.colCAUHOI.FieldName = "CAUHOI";
            this.colCAUHOI.MinWidth = 21;
            this.colCAUHOI.Name = "colCAUHOI";
            this.colCAUHOI.Width = 81;
            // 
            // colTRINHDO
            // 
            this.colTRINHDO.AppearanceCell.Options.UseTextOptions = true;
            this.colTRINHDO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTRINHDO.Caption = "Trình Độ";
            this.colTRINHDO.FieldName = "TRINHDO";
            this.colTRINHDO.MaxWidth = 86;
            this.colTRINHDO.MinWidth = 21;
            this.colTRINHDO.Name = "colTRINHDO";
            this.colTRINHDO.Visible = true;
            this.colTRINHDO.VisibleIndex = 1;
            this.colTRINHDO.Width = 58;
            // 
            // colNOIDUNG
            // 
            this.colNOIDUNG.AppearanceHeader.Options.UseTextOptions = true;
            this.colNOIDUNG.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colNOIDUNG.Caption = "Nội Dung";
            this.colNOIDUNG.FieldName = "NOIDUNG";
            this.colNOIDUNG.MinWidth = 21;
            this.colNOIDUNG.Name = "colNOIDUNG";
            this.colNOIDUNG.Visible = true;
            this.colNOIDUNG.VisibleIndex = 2;
            this.colNOIDUNG.Width = 289;
            // 
            // colA
            // 
            this.colA.AppearanceHeader.Options.UseTextOptions = true;
            this.colA.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colA.FieldName = "A";
            this.colA.MinWidth = 21;
            this.colA.Name = "colA";
            this.colA.Visible = true;
            this.colA.VisibleIndex = 3;
            this.colA.Width = 93;
            // 
            // colB
            // 
            this.colB.AppearanceHeader.Options.UseTextOptions = true;
            this.colB.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colB.FieldName = "B";
            this.colB.MinWidth = 21;
            this.colB.Name = "colB";
            this.colB.Visible = true;
            this.colB.VisibleIndex = 4;
            this.colB.Width = 93;
            // 
            // colC
            // 
            this.colC.AppearanceHeader.Options.UseTextOptions = true;
            this.colC.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colC.FieldName = "C";
            this.colC.MinWidth = 21;
            this.colC.Name = "colC";
            this.colC.Visible = true;
            this.colC.VisibleIndex = 5;
            this.colC.Width = 99;
            // 
            // colD
            // 
            this.colD.AppearanceHeader.Options.UseTextOptions = true;
            this.colD.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colD.FieldName = "D";
            this.colD.MinWidth = 21;
            this.colD.Name = "colD";
            this.colD.Visible = true;
            this.colD.VisibleIndex = 6;
            this.colD.Width = 88;
            // 
            // colDAP_AN
            // 
            this.colDAP_AN.AppearanceHeader.Options.UseTextOptions = true;
            this.colDAP_AN.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDAP_AN.Caption = "Đáp Án";
            this.colDAP_AN.FieldName = "DAP_AN";
            this.colDAP_AN.MaxWidth = 86;
            this.colDAP_AN.MinWidth = 21;
            this.colDAP_AN.Name = "colDAP_AN";
            this.colDAP_AN.Visible = true;
            this.colDAP_AN.VisibleIndex = 7;
            this.colDAP_AN.Width = 54;
            // 
            // repositoryItemComboBox1
            // 
            this.repositoryItemComboBox1.AutoHeight = false;
            this.repositoryItemComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox1.Items.AddRange(new object[] {
            "A - Đại học,chuyên ngành",
            "B - Đại học,không chuyên ngành",
            "C - Cao Đẳng"});
            this.repositoryItemComboBox1.Name = "repositoryItemComboBox1";
            // 
            // cbTrinhDo1
            // 
            this.cbTrinhDo1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bdsMonHoc, "TENMH", true));
            this.cbTrinhDo1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbTrinhDo1.FormattingEnabled = true;
            this.cbTrinhDo1.Items.AddRange(new object[] {
            "A - Đại học,chuyên ngành",
            "B - Đại học,không chuyên ngành",
            "C - Cao Đẳng"});
            this.cbTrinhDo1.Location = new System.Drawing.Point(145, 29);
            this.cbTrinhDo1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.cbTrinhDo1.Name = "cbTrinhDo1";
            this.cbTrinhDo1.Size = new System.Drawing.Size(278, 21);
            this.cbTrinhDo1.TabIndex = 12;
            this.cbTrinhDo1.SelectedIndexChanged += new System.EventHandler(this.cbTrinhDo1_SelectedIndexChanged);
            // 
            // btnHuyNhap
            // 
            this.btnHuyNhap.Location = new System.Drawing.Point(513, 7);
            this.btnHuyNhap.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnHuyNhap.Name = "btnHuyNhap";
            this.btnHuyNhap.Size = new System.Drawing.Size(177, 27);
            this.btnHuyNhap.TabIndex = 8;
            this.btnHuyNhap.Text = "Hủy Nhập / Chỉnh Sửa";
            this.btnHuyNhap.UseVisualStyleBackColor = true;
            this.btnHuyNhap.Click += new System.EventHandler(this.btnHuyNhap_Click);
            // 
            // btnThemCauHoi
            // 
            this.btnThemCauHoi.Location = new System.Drawing.Point(515, 46);
            this.btnThemCauHoi.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnThemCauHoi.Name = "btnThemCauHoi";
            this.btnThemCauHoi.Size = new System.Drawing.Size(89, 27);
            this.btnThemCauHoi.TabIndex = 9;
            this.btnThemCauHoi.Text = "Thêm Câu Hỏi";
            this.btnThemCauHoi.UseVisualStyleBackColor = true;
            this.btnThemCauHoi.Click += new System.EventHandler(this.btnThemCauHoi_Click);
            // 
            // btnLuuBoDe
            // 
            this.btnLuuBoDe.Location = new System.Drawing.Point(609, 46);
            this.btnLuuBoDe.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnLuuBoDe.Name = "btnLuuBoDe";
            this.btnLuuBoDe.Size = new System.Drawing.Size(81, 27);
            this.btnLuuBoDe.TabIndex = 5;
            this.btnLuuBoDe.Text = "Lưu Bộ Đề";
            this.btnLuuBoDe.UseVisualStyleBackColor = true;
            this.btnLuuBoDe.Click += new System.EventHandler(this.btnLuuBoDe_Click_1);
            // 
            // frmNhapDe
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1052, 596);
            this.Controls.Add(this.pn2);
            this.Controls.Add(this.pn1);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "frmNhapDe";
            this.Text = "Nhập đề";
            this.Load += new System.EventHandler(this.frmNhapDe_Load);
            this.pn1.ResumeLayout(false);
            this.pn1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bdsMonHoc)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsBoDe)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.behaviorManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pn2)).EndInit();
            this.pn2.ResumeLayout(false);
            this.pn2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.sP_SELECT_BO_DEGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pn1;
        private DSet dSet;
        private System.Windows.Forms.BindingSource bdsMonHoc;
        private DSetTableAdapters.MONHOCTableAdapter MONHOCTableAdapter;
        private DSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.ComboBox cbMonHoc;
        private System.Windows.Forms.Button btnBatDauNhap;
        private System.Windows.Forms.BindingSource bdsBoDe;
        private DSetTableAdapters.SP_SELECT_BO_DETableAdapter sP_SELECT_BO_DETableAdapter;
        private DSet dSet1;
        private DevExpress.Utils.Behaviors.BehaviorManager behaviorManager1;
        private DevExpress.XtraEditors.PanelControl pn2;
        private DevExpress.XtraGrid.GridControl sP_SELECT_BO_DEGridControl;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colSTT;
        private DevExpress.XtraGrid.Columns.GridColumn colCAUHOI;
        private DevExpress.XtraGrid.Columns.GridColumn colTRINHDO;
        private DevExpress.XtraGrid.Columns.GridColumn colNOIDUNG;
        private DevExpress.XtraGrid.Columns.GridColumn colA;
        private DevExpress.XtraGrid.Columns.GridColumn colB;
        private DevExpress.XtraGrid.Columns.GridColumn colC;
        private DevExpress.XtraGrid.Columns.GridColumn colD;
        private DevExpress.XtraGrid.Columns.GridColumn colDAP_AN;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox1;
        private System.Windows.Forms.ComboBox cbTrinhDo1;
        private System.Windows.Forms.Button btnHuyNhap;
        private System.Windows.Forms.Button btnThemCauHoi;
        private System.Windows.Forms.Button btnLuuBoDe;
    }
}