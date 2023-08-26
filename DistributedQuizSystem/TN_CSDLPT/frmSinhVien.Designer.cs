
namespace TN_CSDLPT
{
    partial class frmSinhVien
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
            System.Windows.Forms.Label tENLOPLabel;
            System.Windows.Forms.Label mALOPLabel;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSinhVien));
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.barFrmKhoa = new DevExpress.XtraBars.Bar();
            this.btnThemLop = new DevExpress.XtraBars.BarButtonItem();
            this.btnHieuChinhLop = new DevExpress.XtraBars.BarButtonItem();
            this.btnXoaLop = new DevExpress.XtraBars.BarButtonItem();
            this.btnGhiLop = new DevExpress.XtraBars.BarButtonItem();
            this.btnReloadLop = new DevExpress.XtraBars.BarButtonItem();
            this.btnPhucHoiLop = new DevExpress.XtraBars.BarButtonItem();
            this.btnThoatLop = new DevExpress.XtraBars.BarButtonItem();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.label1 = new System.Windows.Forms.Label();
            this.cbCoSo = new System.Windows.Forms.ComboBox();
            this.DSet = new TN_CSDLPT.DSet();
            this.bdsLop = new System.Windows.Forms.BindingSource(this.components);
            this.lOPTableAdapter = new TN_CSDLPT.DSetTableAdapters.LOPTableAdapter();
            this.tableAdapterManager = new TN_CSDLPT.DSetTableAdapters.TableAdapterManager();
            this.bdsGV_DK = new System.Windows.Forms.BindingSource(this.components);
            this.bdsKhoa = new System.Windows.Forms.BindingSource(this.components);
            this.sINHVIENTableAdapter = new TN_CSDLPT.DSetTableAdapters.SINHVIENTableAdapter();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.thêmSinhViênToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ghiSinhViênToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.xoáSinhViênToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.phụcHồiToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.kHOATableAdapter = new TN_CSDLPT.DSetTableAdapters.KHOATableAdapter();
            this.gIAOVIEN_DANGKYTableAdapter = new TN_CSDLPT.DSetTableAdapters.GIAOVIEN_DANGKYTableAdapter();
            this.gcLop = new DevExpress.XtraGrid.GridControl();
            this.gvLop = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colMALOP = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTENLOP = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMAKH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelLop = new DevExpress.XtraEditors.PanelControl();
            this.txtMaKhoa = new System.Windows.Forms.TextBox();
            this.cbTenKhoa = new System.Windows.Forms.ComboBox();
            this.edtTenLop = new DevExpress.XtraEditors.TextEdit();
            this.edtMaLop = new DevExpress.XtraEditors.TextEdit();
            this.bdsSinhVien = new System.Windows.Forms.BindingSource(this.components);
            this.sINHVIENGridControl = new DevExpress.XtraGrid.GridControl();
            this.gvSinhVien = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colMASV = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNGAYSINH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDIACHI = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMALOP1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bdsBangDiem = new System.Windows.Forms.BindingSource(this.components);
            this.bANGDIEMTableAdapter = new TN_CSDLPT.DSetTableAdapters.BANGDIEMTableAdapter();
            mAKHLabel = new System.Windows.Forms.Label();
            tENKHLabel = new System.Windows.Forms.Label();
            tENLOPLabel = new System.Windows.Forms.Label();
            mALOPLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsLop)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsGV_DK)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsKhoa)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcLop)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvLop)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelLop)).BeginInit();
            this.panelLop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.edtTenLop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtMaLop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsSinhVien)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sINHVIENGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSinhVien)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsBangDiem)).BeginInit();
            this.SuspendLayout();
            // 
            // mAKHLabel
            // 
            mAKHLabel.AutoSize = true;
            mAKHLabel.Location = new System.Drawing.Point(251, 115);
            mAKHLabel.Name = "mAKHLabel";
            mAKHLabel.Size = new System.Drawing.Size(51, 13);
            mAKHLabel.TabIndex = 24;
            mAKHLabel.Text = "Mã khoa:";
            // 
            // tENKHLabel
            // 
            tENKHLabel.AutoSize = true;
            tENKHLabel.Location = new System.Drawing.Point(12, 112);
            tENKHLabel.Name = "tENKHLabel";
            tENKHLabel.Size = new System.Drawing.Size(55, 13);
            tENKHLabel.TabIndex = 23;
            tENKHLabel.Text = "Tên khoa:";
            // 
            // tENLOPLabel
            // 
            tENLOPLabel.AutoSize = true;
            tENLOPLabel.Location = new System.Drawing.Point(244, 55);
            tENLOPLabel.Name = "tENLOPLabel";
            tENLOPLabel.Size = new System.Drawing.Size(46, 13);
            tENLOPLabel.TabIndex = 17;
            tENLOPLabel.Text = "Tên lớp:";
            // 
            // mALOPLabel
            // 
            mALOPLabel.AutoSize = true;
            mALOPLabel.Location = new System.Drawing.Point(12, 55);
            mALOPLabel.Name = "mALOPLabel";
            mALOPLabel.Size = new System.Drawing.Size(42, 13);
            mALOPLabel.TabIndex = 16;
            mALOPLabel.Text = "Mã lớp:";
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
            this.btnHieuChinhLop,
            this.btnThemLop,
            this.btnGhiLop,
            this.btnXoaLop,
            this.btnPhucHoiLop,
            this.btnReloadLop,
            this.btnThoatLop});
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
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnThemLop, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnHieuChinhLop, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnXoaLop, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnGhiLop, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnReloadLop, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnPhucHoiLop, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnThoatLop, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.barFrmKhoa.Text = "Tools";
            // 
            // btnThemLop
            // 
            this.btnThemLop.Caption = "Thêm";
            this.btnThemLop.Id = 1;
            this.btnThemLop.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnThemLop.ImageOptions.SvgImage")));
            this.btnThemLop.Name = "btnThemLop";
            this.btnThemLop.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnThemLop_ItemClick);
            // 
            // btnHieuChinhLop
            // 
            this.btnHieuChinhLop.Caption = "Hiệu Chỉnh";
            this.btnHieuChinhLop.Id = 0;
            this.btnHieuChinhLop.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnHieuChinhLop.ImageOptions.SvgImage")));
            this.btnHieuChinhLop.Name = "btnHieuChinhLop";
            this.btnHieuChinhLop.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnHieuChinhLop_ItemClick);
            // 
            // btnXoaLop
            // 
            this.btnXoaLop.Caption = "Xóa";
            this.btnXoaLop.Id = 3;
            this.btnXoaLop.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnXoaLop.ImageOptions.SvgImage")));
            this.btnXoaLop.Name = "btnXoaLop";
            this.btnXoaLop.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnXoaLop_ItemClick);
            // 
            // btnGhiLop
            // 
            this.btnGhiLop.Caption = "Ghi";
            this.btnGhiLop.Id = 2;
            this.btnGhiLop.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnGhiLop.ImageOptions.SvgImage")));
            this.btnGhiLop.Name = "btnGhiLop";
            this.btnGhiLop.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnGhiLop_ItemClick);
            // 
            // btnReloadLop
            // 
            this.btnReloadLop.Caption = "Reload";
            this.btnReloadLop.Id = 5;
            this.btnReloadLop.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnReloadLop.ImageOptions.SvgImage")));
            this.btnReloadLop.Name = "btnReloadLop";
            this.btnReloadLop.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnReloadLop_ItemClick);
            // 
            // btnPhucHoiLop
            // 
            this.btnPhucHoiLop.Caption = "Phục Hồi";
            this.btnPhucHoiLop.Id = 4;
            this.btnPhucHoiLop.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnPhucHoiLop.ImageOptions.SvgImage")));
            this.btnPhucHoiLop.Name = "btnPhucHoiLop";
            this.btnPhucHoiLop.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPhucHoiLop_ItemClick);
            // 
            // btnThoatLop
            // 
            this.btnThoatLop.Caption = "Thoát";
            this.btnThoatLop.Id = 6;
            this.btnThoatLop.ImageOptions.SvgImage = ((DevExpress.Utils.Svg.SvgImage)(resources.GetObject("btnThoatLop.ImageOptions.SvgImage")));
            this.btnThoatLop.Name = "btnThoatLop";
            this.btnThoatLop.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnThoatLop_ItemClick);
            // 
            // barDockControlTop
            // 
            this.barDockControlTop.CausesValidation = false;
            this.barDockControlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControlTop.Location = new System.Drawing.Point(0, 0);
            this.barDockControlTop.Manager = this.barManager1;
            this.barDockControlTop.Margin = new System.Windows.Forms.Padding(4);
            this.barDockControlTop.Size = new System.Drawing.Size(1150, 24);
            // 
            // barDockControlBottom
            // 
            this.barDockControlBottom.CausesValidation = false;
            this.barDockControlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControlBottom.Location = new System.Drawing.Point(0, 756);
            this.barDockControlBottom.Manager = this.barManager1;
            this.barDockControlBottom.Margin = new System.Windows.Forms.Padding(4);
            this.barDockControlBottom.Size = new System.Drawing.Size(1150, 0);
            // 
            // barDockControlLeft
            // 
            this.barDockControlLeft.CausesValidation = false;
            this.barDockControlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControlLeft.Location = new System.Drawing.Point(0, 24);
            this.barDockControlLeft.Manager = this.barManager1;
            this.barDockControlLeft.Margin = new System.Windows.Forms.Padding(4);
            this.barDockControlLeft.Size = new System.Drawing.Size(0, 732);
            // 
            // barDockControlRight
            // 
            this.barDockControlRight.CausesValidation = false;
            this.barDockControlRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControlRight.Location = new System.Drawing.Point(1150, 24);
            this.barDockControlRight.Manager = this.barManager1;
            this.barDockControlRight.Margin = new System.Windows.Forms.Padding(4);
            this.barDockControlRight.Size = new System.Drawing.Size(0, 732);
            // 
            // panelControl1
            // 
            this.panelControl1.Controls.Add(this.label1);
            this.panelControl1.Controls.Add(this.cbCoSo);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 24);
            this.panelControl1.Margin = new System.Windows.Forms.Padding(4);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1150, 53);
            this.panelControl1.TabIndex = 6;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(68, 20);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Cơ sở:";
            // 
            // cbCoSo
            // 
            this.cbCoSo.FormattingEnabled = true;
            this.cbCoSo.Location = new System.Drawing.Point(136, 16);
            this.cbCoSo.Margin = new System.Windows.Forms.Padding(4);
            this.cbCoSo.Name = "cbCoSo";
            this.cbCoSo.Size = new System.Drawing.Size(473, 21);
            this.cbCoSo.TabIndex = 0;
            this.cbCoSo.SelectedIndexChanged += new System.EventHandler(this.cbCoSo_SelectedIndexChanged);
            // 
            // DSet
            // 
            this.DSet.DataSetName = "DSet";
            this.DSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // bdsLop
            // 
            this.bdsLop.DataMember = "LOP";
            this.bdsLop.DataSource = this.DSet;
            // 
            // lOPTableAdapter
            // 
            this.lOPTableAdapter.ClearBeforeFill = true;
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
            this.tableAdapterManager.LOPTableAdapter = this.lOPTableAdapter;
            this.tableAdapterManager.MONHOCTableAdapter = null;
            this.tableAdapterManager.SINHVIENTableAdapter = null;
            this.tableAdapterManager.SP_SELECT_BO_DETableAdapter = null;
            this.tableAdapterManager.UpdateOrder = TN_CSDLPT.DSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // bdsGV_DK
            // 
            this.bdsGV_DK.DataMember = "FK_GIAOVIEN_DANGKY_LOP";
            this.bdsGV_DK.DataSource = this.bdsLop;
            // 
            // bdsKhoa
            // 
            this.bdsKhoa.DataMember = "KHOA";
            this.bdsKhoa.DataSource = this.DSet;
            // 
            // sINHVIENTableAdapter
            // 
            this.sINHVIENTableAdapter.ClearBeforeFill = true;
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.thêmSinhViênToolStripMenuItem,
            this.ghiSinhViênToolStripMenuItem,
            this.xoáSinhViênToolStripMenuItem,
            this.phụcHồiToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(155, 92);
            // 
            // thêmSinhViênToolStripMenuItem
            // 
            this.thêmSinhViênToolStripMenuItem.Name = "thêmSinhViênToolStripMenuItem";
            this.thêmSinhViênToolStripMenuItem.Size = new System.Drawing.Size(154, 22);
            this.thêmSinhViênToolStripMenuItem.Text = "Thêm sinh viên";
            this.thêmSinhViênToolStripMenuItem.Click += new System.EventHandler(this.thêmSinhViênToolStripMenuItem_Click);
            // 
            // ghiSinhViênToolStripMenuItem
            // 
            this.ghiSinhViênToolStripMenuItem.Name = "ghiSinhViênToolStripMenuItem";
            this.ghiSinhViênToolStripMenuItem.Size = new System.Drawing.Size(154, 22);
            this.ghiSinhViênToolStripMenuItem.Text = "Ghi sinh viên";
            this.ghiSinhViênToolStripMenuItem.Click += new System.EventHandler(this.ghiSinhViênToolStripMenuItem_Click);
            // 
            // xoáSinhViênToolStripMenuItem
            // 
            this.xoáSinhViênToolStripMenuItem.Name = "xoáSinhViênToolStripMenuItem";
            this.xoáSinhViênToolStripMenuItem.Size = new System.Drawing.Size(154, 22);
            this.xoáSinhViênToolStripMenuItem.Text = "Xoá sinh viên";
            this.xoáSinhViênToolStripMenuItem.Click += new System.EventHandler(this.xoáSinhViênToolStripMenuItem_Click);
            // 
            // phụcHồiToolStripMenuItem
            // 
            this.phụcHồiToolStripMenuItem.Name = "phụcHồiToolStripMenuItem";
            this.phụcHồiToolStripMenuItem.Size = new System.Drawing.Size(154, 22);
            this.phụcHồiToolStripMenuItem.Text = "Phục hồi";
            this.phụcHồiToolStripMenuItem.Click += new System.EventHandler(this.phụcHồiToolStripMenuItem_Click);
            // 
            // kHOATableAdapter
            // 
            this.kHOATableAdapter.ClearBeforeFill = true;
            // 
            // gIAOVIEN_DANGKYTableAdapter
            // 
            this.gIAOVIEN_DANGKYTableAdapter.ClearBeforeFill = true;
            // 
            // gcLop
            // 
            this.gcLop.DataSource = this.bdsLop;
            this.gcLop.Dock = System.Windows.Forms.DockStyle.Top;
            this.gcLop.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(2);
            this.gcLop.Location = new System.Drawing.Point(0, 77);
            this.gcLop.MainView = this.gvLop;
            this.gcLop.MenuManager = this.barManager1;
            this.gcLop.Name = "gcLop";
            this.gcLop.Size = new System.Drawing.Size(1150, 342);
            this.gcLop.TabIndex = 17;
            this.gcLop.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvLop});
            // 
            // gvLop
            // 
            this.gvLop.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMALOP,
            this.colTENLOP,
            this.colMAKH});
            this.gvLop.GridControl = this.gcLop;
            this.gvLop.Name = "gvLop";
            // 
            // colMALOP
            // 
            this.colMALOP.FieldName = "MALOP";
            this.colMALOP.Name = "colMALOP";
            this.colMALOP.OptionsColumn.AllowEdit = false;
            this.colMALOP.OptionsColumn.AllowFocus = false;
            this.colMALOP.Visible = true;
            this.colMALOP.VisibleIndex = 0;
            // 
            // colTENLOP
            // 
            this.colTENLOP.FieldName = "TENLOP";
            this.colTENLOP.Name = "colTENLOP";
            this.colTENLOP.OptionsColumn.AllowEdit = false;
            this.colTENLOP.OptionsColumn.AllowFocus = false;
            this.colTENLOP.Visible = true;
            this.colTENLOP.VisibleIndex = 1;
            // 
            // colMAKH
            // 
            this.colMAKH.FieldName = "MAKH";
            this.colMAKH.Name = "colMAKH";
            this.colMAKH.OptionsColumn.AllowEdit = false;
            this.colMAKH.OptionsColumn.AllowFocus = false;
            this.colMAKH.Visible = true;
            this.colMAKH.VisibleIndex = 2;
            // 
            // panelLop
            // 
            this.panelLop.Controls.Add(mAKHLabel);
            this.panelLop.Controls.Add(this.txtMaKhoa);
            this.panelLop.Controls.Add(tENKHLabel);
            this.panelLop.Controls.Add(this.cbTenKhoa);
            this.panelLop.Controls.Add(tENLOPLabel);
            this.panelLop.Controls.Add(this.edtTenLop);
            this.panelLop.Controls.Add(mALOPLabel);
            this.panelLop.Controls.Add(this.edtMaLop);
            this.panelLop.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelLop.Location = new System.Drawing.Point(0, 419);
            this.panelLop.Name = "panelLop";
            this.panelLop.Size = new System.Drawing.Size(613, 337);
            this.panelLop.TabIndex = 18;
            // 
            // txtMaKhoa
            // 
            this.txtMaKhoa.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bdsLop, "MAKH", true));
            this.txtMaKhoa.Location = new System.Drawing.Point(307, 112);
            this.txtMaKhoa.Name = "txtMaKhoa";
            this.txtMaKhoa.ReadOnly = true;
            this.txtMaKhoa.Size = new System.Drawing.Size(100, 21);
            this.txtMaKhoa.TabIndex = 25;
            // 
            // cbTenKhoa
            // 
            this.cbTenKhoa.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.bdsLop, "MAKH", true));
            this.cbTenKhoa.DataSource = this.bdsKhoa;
            this.cbTenKhoa.DisplayMember = "TENKH";
            this.cbTenKhoa.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbTenKhoa.FormattingEnabled = true;
            this.cbTenKhoa.Location = new System.Drawing.Point(82, 109);
            this.cbTenKhoa.Name = "cbTenKhoa";
            this.cbTenKhoa.Size = new System.Drawing.Size(121, 21);
            this.cbTenKhoa.TabIndex = 24;
            this.cbTenKhoa.ValueMember = "MAKH";
            this.cbTenKhoa.SelectedIndexChanged += new System.EventHandler(this.cbTenKhoa_SelectedIndexChanged_1);
            // 
            // edtTenLop
            // 
            this.edtTenLop.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bdsLop, "TENLOP", true));
            this.edtTenLop.Location = new System.Drawing.Point(307, 52);
            this.edtTenLop.MenuManager = this.barManager1;
            this.edtTenLop.Name = "edtTenLop";
            this.edtTenLop.Size = new System.Drawing.Size(148, 20);
            this.edtTenLop.TabIndex = 20;
            // 
            // edtMaLop
            // 
            this.edtMaLop.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bdsLop, "MALOP", true));
            this.edtMaLop.Location = new System.Drawing.Point(82, 54);
            this.edtMaLop.MenuManager = this.barManager1;
            this.edtMaLop.Name = "edtMaLop";
            this.edtMaLop.Size = new System.Drawing.Size(121, 20);
            this.edtMaLop.TabIndex = 18;
            // 
            // bdsSinhVien
            // 
            this.bdsSinhVien.DataMember = "FK_SINHVIEN_LOP";
            this.bdsSinhVien.DataSource = this.bdsLop;
            // 
            // sINHVIENGridControl
            // 
            this.sINHVIENGridControl.DataSource = this.bdsSinhVien;
            this.sINHVIENGridControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.sINHVIENGridControl.EmbeddedNavigator.Margin = new System.Windows.Forms.Padding(2);
            this.sINHVIENGridControl.Location = new System.Drawing.Point(613, 419);
            this.sINHVIENGridControl.MainView = this.gvSinhVien;
            this.sINHVIENGridControl.MenuManager = this.barManager1;
            this.sINHVIENGridControl.Name = "sINHVIENGridControl";
            this.sINHVIENGridControl.Size = new System.Drawing.Size(537, 337);
            this.sINHVIENGridControl.TabIndex = 22;
            this.sINHVIENGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvSinhVien});
            // 
            // gvSinhVien
            // 
            this.gvSinhVien.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMASV,
            this.colHO,
            this.colTEN,
            this.colNGAYSINH,
            this.colDIACHI,
            this.colMALOP1});
            this.gvSinhVien.GridControl = this.sINHVIENGridControl;
            this.gvSinhVien.Name = "gvSinhVien";
            // 
            // colMASV
            // 
            this.colMASV.Caption = "Mã sinh viên";
            this.colMASV.FieldName = "MASV";
            this.colMASV.Name = "colMASV";
            this.colMASV.Visible = true;
            this.colMASV.VisibleIndex = 0;
            // 
            // colHO
            // 
            this.colHO.Caption = "Họ";
            this.colHO.FieldName = "HO";
            this.colHO.Name = "colHO";
            this.colHO.Visible = true;
            this.colHO.VisibleIndex = 1;
            // 
            // colTEN
            // 
            this.colTEN.Caption = "Tên";
            this.colTEN.FieldName = "TEN";
            this.colTEN.Name = "colTEN";
            this.colTEN.Visible = true;
            this.colTEN.VisibleIndex = 2;
            // 
            // colNGAYSINH
            // 
            this.colNGAYSINH.Caption = "Ngày sinh";
            this.colNGAYSINH.FieldName = "NGAYSINH";
            this.colNGAYSINH.Name = "colNGAYSINH";
            this.colNGAYSINH.Visible = true;
            this.colNGAYSINH.VisibleIndex = 3;
            // 
            // colDIACHI
            // 
            this.colDIACHI.Caption = "Địa chỉ";
            this.colDIACHI.FieldName = "DIACHI";
            this.colDIACHI.Name = "colDIACHI";
            this.colDIACHI.Visible = true;
            this.colDIACHI.VisibleIndex = 4;
            // 
            // colMALOP1
            // 
            this.colMALOP1.Caption = "Mã lơp";
            this.colMALOP1.FieldName = "MALOP";
            this.colMALOP1.MinWidth = 70;
            this.colMALOP1.Name = "colMALOP1";
            this.colMALOP1.Visible = true;
            this.colMALOP1.VisibleIndex = 5;
            // 
            // bdsBangDiem
            // 
            this.bdsBangDiem.DataMember = "FK_BANGDIEM_SINHVIEN1";
            this.bdsBangDiem.DataSource = this.bdsSinhVien;
            // 
            // bANGDIEMTableAdapter
            // 
            this.bANGDIEMTableAdapter.ClearBeforeFill = true;
            // 
            // frmSinhVien
            // 
            this.Appearance.Options.UseFont = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(1150, 756);
            this.ContextMenuStrip = this.contextMenuStrip1;
            this.Controls.Add(this.sINHVIENGridControl);
            this.Controls.Add(this.panelLop);
            this.Controls.Add(this.gcLop);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmSinhVien";
            this.Text = "Sinh viên";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmSinhVien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsLop)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsGV_DK)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsKhoa)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcLop)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvLop)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelLop)).EndInit();
            this.panelLop.ResumeLayout(false);
            this.panelLop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.edtTenLop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtMaLop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsSinhVien)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sINHVIENGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvSinhVien)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdsBangDiem)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar barFrmKhoa;
        private DevExpress.XtraBars.BarButtonItem btnThemLop;
        private DevExpress.XtraBars.BarButtonItem btnHieuChinhLop;
        private DevExpress.XtraBars.BarButtonItem btnXoaLop;
        private DevExpress.XtraBars.BarButtonItem btnGhiLop;
        private DevExpress.XtraBars.BarButtonItem btnReloadLop;
        private DevExpress.XtraBars.BarButtonItem btnPhucHoiLop;
        private DevExpress.XtraBars.BarButtonItem btnThoatLop;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbCoSo;
        private System.Windows.Forms.BindingSource bdsLop;
        private DSet DSet;
        private DSetTableAdapters.LOPTableAdapter lOPTableAdapter;
        private DSetTableAdapters.TableAdapterManager tableAdapterManager;
        private DSetTableAdapters.SINHVIENTableAdapter sINHVIENTableAdapter;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem thêmSinhViênToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ghiSinhViênToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem xoáSinhViênToolStripMenuItem;
        private System.Windows.Forms.BindingSource bdsKhoa;
        private DSetTableAdapters.KHOATableAdapter kHOATableAdapter;
        private System.Windows.Forms.BindingSource bdsGV_DK;
        private DSetTableAdapters.GIAOVIEN_DANGKYTableAdapter gIAOVIEN_DANGKYTableAdapter;
        private DevExpress.XtraEditors.PanelControl panelLop;
        private System.Windows.Forms.TextBox txtMaKhoa;
        private System.Windows.Forms.ComboBox cbTenKhoa;
        private DevExpress.XtraEditors.TextEdit edtTenLop;
        private DevExpress.XtraEditors.TextEdit edtMaLop;
        private DevExpress.XtraGrid.GridControl gcLop;
        private DevExpress.XtraGrid.Views.Grid.GridView gvLop;
        private System.Windows.Forms.ToolStripMenuItem phụcHồiToolStripMenuItem;
        private DevExpress.XtraGrid.Columns.GridColumn colMALOP;
        private DevExpress.XtraGrid.Columns.GridColumn colTENLOP;
        private DevExpress.XtraGrid.Columns.GridColumn colMAKH;
        private DevExpress.XtraGrid.GridControl sINHVIENGridControl;
        private System.Windows.Forms.BindingSource bdsSinhVien;
        private DevExpress.XtraGrid.Views.Grid.GridView gvSinhVien;
        private DevExpress.XtraGrid.Columns.GridColumn colMASV;
        private DevExpress.XtraGrid.Columns.GridColumn colHO;
        private DevExpress.XtraGrid.Columns.GridColumn colTEN;
        private DevExpress.XtraGrid.Columns.GridColumn colNGAYSINH;
        private DevExpress.XtraGrid.Columns.GridColumn colDIACHI;
        private DevExpress.XtraGrid.Columns.GridColumn colMALOP1;
        private System.Windows.Forms.BindingSource bdsBangDiem;
        private DSetTableAdapters.BANGDIEMTableAdapter bANGDIEMTableAdapter;
    }
}