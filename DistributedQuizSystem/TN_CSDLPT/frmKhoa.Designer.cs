
namespace TN_CSDLPT
{
    partial class frmKhoa
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
            System.Windows.Forms.Label mAKHLabel;
            System.Windows.Forms.Label tENKHLabel;
            System.Windows.Forms.Label mACSLabel;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmKhoa));
            this.barKhoa = new DevExpress.XtraBars.Bar();
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.bar2 = new DevExpress.XtraBars.Bar();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.label1 = new System.Windows.Forms.Label();
            this.cbCoSo = new System.Windows.Forms.ComboBox();
            this.bdsKhoa = new System.Windows.Forms.BindingSource(this.components);
            this.DSet = new TN_CSDLPT.DSet();
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.barFrmKhoa = new DevExpress.XtraBars.Bar();
            this.btnThemKhoa = new DevExpress.XtraBars.BarButtonItem();
            this.btnHieuChinhKhoa = new DevExpress.XtraBars.BarButtonItem();
            this.btnXoaKhoa = new DevExpress.XtraBars.BarButtonItem();
            this.btnGhiKhoa = new DevExpress.XtraBars.BarButtonItem();
            this.btnPhucHoiKhoa = new DevExpress.XtraBars.BarButtonItem();
            this.btnReloadKhoa = new DevExpress.XtraBars.BarButtonItem();
            this.btnThoatKhoa = new DevExpress.XtraBars.BarButtonItem();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.bdsLop = new System.Windows.Forms.BindingSource(this.components);
            this.lopTableAdapter = new TN_CSDLPT.DSetTableAdapters.LOPTableAdapter();
            this.bdsGiaoVien = new System.Windows.Forms.BindingSource(this.components);
            this.giaoVienTableAdapter = new TN_CSDLPT.DSetTableAdapters.GIAOVIENTableAdapter();
            this.khoaTableAdapter = new TN_CSDLPT.DSetTableAdapters.KHOATableAdapter();
            this.tableAdapterManager = new TN_CSDLPT.DSetTableAdapters.TableAdapterManager();
            this.kHOAGridControl = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colMAKH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTENKH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMACS = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelKhoa = new DevExpress.XtraEditors.PanelControl();
            this.txtMaCoSo = new System.Windows.Forms.TextBox();
            this.txtTenKhoa = new System.Windows.Forms.TextBox();
            this.txtMaKhoa = new System.Windows.Forms.TextBox();
            mAKHLabel = new System.Windows.Forms.Label();
            tENKHLabel = new System.Windows.Forms.Label();
            mACSLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bdsKhoa)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsLop)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsGiaoVien)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.kHOAGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelKhoa)).BeginInit();
            this.panelKhoa.SuspendLayout();
            this.SuspendLayout();
            // 
            // mAKHLabel
            // 
            mAKHLabel.AutoSize = true;
            mAKHLabel.Location = new System.Drawing.Point(312, 68);
            mAKHLabel.Name = "mAKHLabel";
            mAKHLabel.Size = new System.Drawing.Size(60, 17);
            mAKHLabel.TabIndex = 0;
            mAKHLabel.Text = "Mã Khoa";
            // 
            // tENKHLabel
            // 
            tENKHLabel.AutoSize = true;
            tENKHLabel.Location = new System.Drawing.Point(297, 130);
            tENKHLabel.Name = "tENKHLabel";
            tENKHLabel.Size = new System.Drawing.Size(75, 17);
            tENKHLabel.TabIndex = 2;
            tENKHLabel.Text = "Tên Khoa: ";
            // 
            // mACSLabel
            // 
            mACSLabel.AutoSize = true;
            mACSLabel.Location = new System.Drawing.Point(581, 68);
            mACSLabel.Name = "mACSLabel";
            mACSLabel.Size = new System.Drawing.Size(66, 17);
            mACSLabel.TabIndex = 4;
            mACSLabel.Text = "Mã Cơ Sở";
            // 
            // barKhoa
            // 
            this.barKhoa.BarName = "Tools";
            this.barKhoa.DockCol = 0;
            this.barKhoa.DockRow = 0;
            this.barKhoa.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.barKhoa.Offset = 1;
            this.barKhoa.Text = "Tools";
            // 
            // bar1
            // 
            this.bar1.BarName = "Tools";
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 0;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar1.Offset = 2;
            this.bar1.Text = "Tools";
            // 
            // bar2
            // 
            this.bar2.BarName = "Tools";
            this.bar2.DockCol = 0;
            this.bar2.DockRow = 0;
            this.bar2.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar2.Offset = 2;
            this.bar2.Text = "Tools";
            // 
            // panelControl1
            // 
            this.panelControl1.Controls.Add(this.label1);
            this.panelControl1.Controls.Add(this.cbCoSo);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 30);
            this.panelControl1.Margin = new System.Windows.Forms.Padding(4);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1203, 77);
            this.panelControl1.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(68, 30);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(48, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "Cơ sở:";
            // 
            // cbCoSo
            // 
            this.cbCoSo.FormattingEnabled = true;
            this.cbCoSo.Location = new System.Drawing.Point(136, 26);
            this.cbCoSo.Margin = new System.Windows.Forms.Padding(4);
            this.cbCoSo.Name = "cbCoSo";
            this.cbCoSo.Size = new System.Drawing.Size(473, 24);
            this.cbCoSo.TabIndex = 0;
            this.cbCoSo.SelectedIndexChanged += new System.EventHandler(this.cbCoSo_SelectedIndexChanged);
            // 
            // bdsKhoa
            // 
            this.bdsKhoa.DataMember = "KHOA";
            this.bdsKhoa.DataSource = this.DSet;
            // 
            // DSet
            // 
            this.DSet.DataSetName = "DSet";
            this.DSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.barFrmKhoa});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnHieuChinhKhoa,
            this.btnThemKhoa,
            this.btnGhiKhoa,
            this.btnXoaKhoa,
            this.btnPhucHoiKhoa,
            this.btnReloadKhoa,
            this.btnThoatKhoa});
            this.barManager1.MaxItemId = 7;
            // 
            // barFrmKhoa
            // 
            this.barFrmKhoa.BarName = "Tools";
            this.barFrmKhoa.DockCol = 0;
            this.barFrmKhoa.DockRow = 0;
            this.barFrmKhoa.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.barFrmKhoa.FloatLocation = new System.Drawing.Point(59, 196);
            this.barFrmKhoa.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnThemKhoa, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnHieuChinhKhoa, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnXoaKhoa, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnGhiKhoa, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnPhucHoiKhoa, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnReloadKhoa, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnThoatKhoa, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.barFrmKhoa.Text = "Tools";
            // 
            // btnThemKhoa
            // 
            this.btnThemKhoa.Caption = "Thêm";
            this.btnThemKhoa.Id = 1;
            this.btnThemKhoa.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnThemKhoa.ImageOptions.SvgImage")));
            this.btnThemKhoa.Name = "btnThemKhoa";
            this.btnThemKhoa.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnThemKhoa_ItemClick);
            // 
            // btnHieuChinhKhoa
            // 
            this.btnHieuChinhKhoa.Caption = "Hiệu Chỉnh";
            this.btnHieuChinhKhoa.Id = 0;
            this.btnHieuChinhKhoa.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnHieuChinhKhoa.ImageOptions.SvgImage")));
            this.btnHieuChinhKhoa.Name = "btnHieuChinhKhoa";
            this.btnHieuChinhKhoa.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnHieuChinhKhoa_ItemClick);
            // 
            // btnXoaKhoa
            // 
            this.btnXoaKhoa.Caption = "Xóa";
            this.btnXoaKhoa.Id = 3;
            this.btnXoaKhoa.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnXoaKhoa.ImageOptions.SvgImage")));
            this.btnXoaKhoa.Name = "btnXoaKhoa";
            this.btnXoaKhoa.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnXoaKhoa_ItemClick);
            // 
            // btnGhiKhoa
            // 
            this.btnGhiKhoa.Caption = "Ghi";
            this.btnGhiKhoa.Id = 2;
            this.btnGhiKhoa.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnGhiKhoa.ImageOptions.SvgImage")));
            this.btnGhiKhoa.Name = "btnGhiKhoa";
            this.btnGhiKhoa.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnGhiKhoa_ItemClick);
            // 
            // btnPhucHoiKhoa
            // 
            this.btnPhucHoiKhoa.Caption = "Phục Hồi";
            this.btnPhucHoiKhoa.Id = 4;
            this.btnPhucHoiKhoa.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnPhucHoiKhoa.ImageOptions.SvgImage")));
            this.btnPhucHoiKhoa.Name = "btnPhucHoiKhoa";
            this.btnPhucHoiKhoa.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPhucHoiKhoa_ItemClick);
            // 
            // btnReloadKhoa
            // 
            this.btnReloadKhoa.Caption = "Reload";
            this.btnReloadKhoa.Id = 5;
            this.btnReloadKhoa.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnReloadKhoa.ImageOptions.SvgImage")));
            this.btnReloadKhoa.Name = "btnReloadKhoa";
            this.btnReloadKhoa.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnReloadKhoa_ItemClick);
            // 
            // btnThoatKhoa
            // 
            this.btnThoatKhoa.Caption = "Thoát";
            this.btnThoatKhoa.Id = 6;
            this.btnThoatKhoa.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnThoatKhoa.ImageOptions.SvgImage")));
            this.btnThoatKhoa.Name = "btnThoatKhoa";
            this.btnThoatKhoa.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnThoatKhoa_ItemClick);
            // 
            // barDockControlTop
            // 
            this.barDockControlTop.CausesValidation = false;
            this.barDockControlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControlTop.Location = new System.Drawing.Point(0, 0);
            this.barDockControlTop.Manager = this.barManager1;
            this.barDockControlTop.Margin = new System.Windows.Forms.Padding(4);
            this.barDockControlTop.Size = new System.Drawing.Size(1203, 30);
            // 
            // barDockControlBottom
            // 
            this.barDockControlBottom.CausesValidation = false;
            this.barDockControlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControlBottom.Location = new System.Drawing.Point(0, 756);
            this.barDockControlBottom.Manager = this.barManager1;
            this.barDockControlBottom.Margin = new System.Windows.Forms.Padding(4);
            this.barDockControlBottom.Size = new System.Drawing.Size(1203, 0);
            // 
            // barDockControlLeft
            // 
            this.barDockControlLeft.CausesValidation = false;
            this.barDockControlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControlLeft.Location = new System.Drawing.Point(0, 30);
            this.barDockControlLeft.Manager = this.barManager1;
            this.barDockControlLeft.Margin = new System.Windows.Forms.Padding(4);
            this.barDockControlLeft.Size = new System.Drawing.Size(0, 726);
            // 
            // barDockControlRight
            // 
            this.barDockControlRight.CausesValidation = false;
            this.barDockControlRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControlRight.Location = new System.Drawing.Point(1203, 30);
            this.barDockControlRight.Manager = this.barManager1;
            this.barDockControlRight.Margin = new System.Windows.Forms.Padding(4);
            this.barDockControlRight.Size = new System.Drawing.Size(0, 726);
            // 
            // bdsLop
            // 
            this.bdsLop.DataMember = "FK_LOP_KHOA";
            this.bdsLop.DataSource = this.bdsKhoa;
            // 
            // lopTableAdapter
            // 
            this.lopTableAdapter.ClearBeforeFill = true;
            // 
            // bdsGiaoVien
            // 
            this.bdsGiaoVien.DataMember = "FK_GIAOVIEN_KHOA";
            this.bdsGiaoVien.DataSource = this.bdsKhoa;
            // 
            // giaoVienTableAdapter
            // 
            this.giaoVienTableAdapter.ClearBeforeFill = true;
            // 
            // khoaTableAdapter
            // 
            this.khoaTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.BANGDIEMTableAdapter = null;
            this.tableAdapterManager.BODETableAdapter = null;
            this.tableAdapterManager.COSOTableAdapter = null;
            this.tableAdapterManager.GIAOVIEN_DANGKYTableAdapter = null;
            this.tableAdapterManager.GIAOVIENTableAdapter = this.giaoVienTableAdapter;
            this.tableAdapterManager.KHOATableAdapter = this.khoaTableAdapter;
            this.tableAdapterManager.LOPTableAdapter = this.lopTableAdapter;
            this.tableAdapterManager.MONHOCTableAdapter = null;
            this.tableAdapterManager.SINHVIENTableAdapter = null;
            this.tableAdapterManager.UpdateOrder = TN_CSDLPT.DSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // kHOAGridControl
            // 
            this.kHOAGridControl.DataSource = this.bdsKhoa;
            this.kHOAGridControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.kHOAGridControl.Location = new System.Drawing.Point(0, 107);
            this.kHOAGridControl.MainView = this.gridView1;
            this.kHOAGridControl.MenuManager = this.barManager1;
            this.kHOAGridControl.Name = "kHOAGridControl";
            this.kHOAGridControl.Size = new System.Drawing.Size(1203, 379);
            this.kHOAGridControl.TabIndex = 16;
            this.kHOAGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.kHOAGridControl.Click += new System.EventHandler(this.kHOAGridControl_Click);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMAKH,
            this.colTENKH,
            this.colMACS});
            this.gridView1.GridControl = this.kHOAGridControl;
            this.gridView1.Name = "gridView1";
            // 
            // colMAKH
            // 
            this.colMAKH.Caption = "Mã Khoa";
            this.colMAKH.FieldName = "MAKH";
            this.colMAKH.MinWidth = 25;
            this.colMAKH.Name = "colMAKH";
            this.colMAKH.OptionsColumn.AllowEdit = false;
            this.colMAKH.Visible = true;
            this.colMAKH.VisibleIndex = 0;
            this.colMAKH.Width = 94;
            // 
            // colTENKH
            // 
            this.colTENKH.Caption = "Tên Khoa";
            this.colTENKH.FieldName = "TENKH";
            this.colTENKH.MinWidth = 25;
            this.colTENKH.Name = "colTENKH";
            this.colTENKH.OptionsColumn.AllowEdit = false;
            this.colTENKH.Visible = true;
            this.colTENKH.VisibleIndex = 1;
            this.colTENKH.Width = 94;
            // 
            // colMACS
            // 
            this.colMACS.Caption = "Mã Cơ Sở";
            this.colMACS.FieldName = "MACS";
            this.colMACS.MinWidth = 25;
            this.colMACS.Name = "colMACS";
            this.colMACS.OptionsColumn.AllowEdit = false;
            this.colMACS.Visible = true;
            this.colMACS.VisibleIndex = 2;
            this.colMACS.Width = 94;
            // 
            // panelKhoa
            // 
            this.panelKhoa.Controls.Add(mACSLabel);
            this.panelKhoa.Controls.Add(this.txtMaCoSo);
            this.panelKhoa.Controls.Add(tENKHLabel);
            this.panelKhoa.Controls.Add(this.txtTenKhoa);
            this.panelKhoa.Controls.Add(mAKHLabel);
            this.panelKhoa.Controls.Add(this.txtMaKhoa);
            this.panelKhoa.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelKhoa.Enabled = false;
            this.panelKhoa.Location = new System.Drawing.Point(0, 486);
            this.panelKhoa.Margin = new System.Windows.Forms.Padding(4);
            this.panelKhoa.Name = "panelKhoa";
            this.panelKhoa.Size = new System.Drawing.Size(1203, 270);
            this.panelKhoa.TabIndex = 17;
            // 
            // txtMaCoSo
            // 
            this.txtMaCoSo.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bdsKhoa, "MACS", true));
            this.txtMaCoSo.Location = new System.Drawing.Point(670, 65);
            this.txtMaCoSo.Name = "txtMaCoSo";
            this.txtMaCoSo.ReadOnly = true;
            this.txtMaCoSo.Size = new System.Drawing.Size(150, 23);
            this.txtMaCoSo.TabIndex = 5;
            // 
            // txtTenKhoa
            // 
            this.txtTenKhoa.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bdsKhoa, "TENKH", true));
            this.txtTenKhoa.Location = new System.Drawing.Point(395, 127);
            this.txtTenKhoa.Name = "txtTenKhoa";
            this.txtTenKhoa.Size = new System.Drawing.Size(425, 23);
            this.txtTenKhoa.TabIndex = 3;
            // 
            // txtMaKhoa
            // 
            this.txtMaKhoa.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bdsKhoa, "MAKH", true));
            this.txtMaKhoa.Location = new System.Drawing.Point(395, 65);
            this.txtMaKhoa.Name = "txtMaKhoa";
            this.txtMaKhoa.Size = new System.Drawing.Size(150, 23);
            this.txtMaKhoa.TabIndex = 1;
            // 
            // frmKhoa
            // 
            this.Appearance.Options.UseFont = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 21F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1203, 756);
            this.Controls.Add(this.panelKhoa);
            this.Controls.Add(this.kHOAGridControl);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Font = new System.Drawing.Font("Tahoma", 10F);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmKhoa";
            this.Text = "Khoa";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmKhoa1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bdsKhoa)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsLop)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsGiaoVien)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.kHOAGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelKhoa)).EndInit();
            this.panelKhoa.ResumeLayout(false);
            this.panelKhoa.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.Bar barKhoa;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraBars.Bar bar2;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbCoSo;
        private DSet DSet;
        private System.Windows.Forms.BindingSource bdsKhoa;
        private System.Windows.Forms.BindingSource bdsLop;
        private DSetTableAdapters.LOPTableAdapter lopTableAdapter;
        private System.Windows.Forms.BindingSource bdsGiaoVien;
        private DSetTableAdapters.GIAOVIENTableAdapter giaoVienTableAdapter;
        private DevExpress.XtraBars.BarButtonItem btnHieuChinhKhoa;
        private DevExpress.XtraBars.BarButtonItem btnThemKhoa;
        private DevExpress.XtraBars.BarButtonItem btnGhiKhoa;
        private DevExpress.XtraBars.BarButtonItem btnXoaKhoa;
        private DevExpress.XtraBars.BarButtonItem btnPhucHoiKhoa;
        private DevExpress.XtraBars.BarButtonItem btnReloadKhoa;
        private DevExpress.XtraBars.BarButtonItem btnThoatKhoa;
        private DevExpress.XtraBars.Bar barFrmKhoa;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DSetTableAdapters.KHOATableAdapter khoaTableAdapter;
        private DSetTableAdapters.TableAdapterManager tableAdapterManager;
        private DevExpress.XtraEditors.PanelControl panelKhoa;
        private DevExpress.XtraGrid.GridControl kHOAGridControl;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colMAKH;
        private DevExpress.XtraGrid.Columns.GridColumn colTENKH;
        private DevExpress.XtraGrid.Columns.GridColumn colMACS;
        private System.Windows.Forms.TextBox txtMaCoSo;
        private System.Windows.Forms.TextBox txtTenKhoa;
        private System.Windows.Forms.TextBox txtMaKhoa;
    }
}