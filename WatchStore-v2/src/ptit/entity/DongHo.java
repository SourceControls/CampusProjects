package ptit.entity;

import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;


@Entity
@Table(name = "DONGHO")
public class DongHo {
	@Id
	@Column(name = "MADH")
	private String maDH;
	
	@Column(name = "TENDONGHO")
	private String tenDongHo;
	
	@Column(name = "DOITUONGSUDUNG")
	private String doiTuongSuDung;
	
	@Column(name = "DODAIDAYDEO")
	private Integer doDaiDayDeo;
	
	@Column(name = "DORONGDAYDEO")
	private Integer doRongDayDeo;
	
	@Column(name = "TRONGLUONG")
	private String trongLuong;
	
	@Column(name = "CHATLIEUMATKINH")
	private String chatLieuMatKinh;
	
	@Column(name = "CHATLIEUDAYDEO")
	private String chatLieuDayDeo;
	
	@Column(name = "CHATLIEUKHUNGVIEN")
	private String chatLieuKhungVien;
	
	@Column(name = "NOISANXUAT")
	private String noiSanXuat;
	
	@Column(name = "KHANGNUOC")
	private boolean khangNuoc;
	
	@Column(name = "HINHANH")
	private String hinhAnh;
	
	@Column(name = "TINHNANGTIENICH")
	private String tinhNangTienIch;
	
	@Column(name = "SLTON")
	private Integer slTon;
	
	@Column(name = "GIA")
	private Double gia;
	
	@Column(name = "C_TENBOMAY")
	private String c_tenBoMay;
	
	@Column(name = "C_LOAIMATSO")
	private String c_loaiMatSo;
	
	@Column(name = "C_THOILUONGTHUDAYCOT")
	private String c_thoiLuongThuDayCot;
	
	@Column(name = "C_HOATIETMATSO")
	private String c_hoaTietMatSo;
	
	@Column(name = "C_DUONGKINHMAT")
	private Integer c_duongKinhMat;
	
	@Column(name = "S_KICHTHUOCMANHINH")
	private Double s_kichThuocManHinh;
	
	@Column(name = "S_CONGNGHEMANHINH")
	private String s_congNgheManHinh;
	
	@Column(name = "S_DOPHANGIAI")
	private String s_doPhanGiai;
	
	@Column(name = "S_KHANANGTHAYDAY")
	private boolean s_khaNangThayDay;
	
	@Column(name = "S_THOIGIANSUDUNGPIN")
	private Double s_thoiGianSuDungPin;
	
	@Column(name = "S_DUNGLUONGPIN")
	private Double s_dungLuongPin;
	
	@Column(name = "S_CONGSAC")
	private String s_congSac;
	
	@Column(name = "S_HEDIEUHANH")
	private String s_heDieuHanh;
	
	@Column(name = "S_CAMERA")
	private Integer s_camera;
	
	@Column(name = "S_KETNOI")
	private String s_ketNoi;
	
	@Column(name = "S_NGONNGU")
	private String s_ngonNgu;
	
	@Column(name = "MOTA")
	private String moTa;
	
	@Transient
	private List<String> displayImage;
	
	@ManyToOne
	@JoinColumn(name="MAHANG",referencedColumnName="MAHANG")
    private HangDongHo hangDongHo;
	
	@ManyToOne
	@JoinColumn(name="MALOAI",referencedColumnName="MALOAI")
	private LoaiDongHo loaiDongHo;
	
	@OneToMany(mappedBy = "dongHo", fetch = FetchType.EAGER)
	private Collection<ChiTietGioHang> chiTietGH;
	
	@Transient
	private String displaySingleImg;
	
	@OneToMany(mappedBy="dongHo")
	Collection<ApDungKhuyenMai> apDungKhuyenMai;

	
	public DongHo() {
		
	}
	//đồng hồ cơ
	public DongHo(String maDH, String tenDongHo, String doiTuongSuDung, Integer doDaiDayDeo, Integer doRongDayDeo,
			String trongLuong, String chatLieuMatKinh, String chatLieuDayDeo, String chatLieuKhungVien,
			String noiSanXuat, boolean khangNuoc, String hinhAnh, String tinhNangTienIch, Integer slTon, Double gia,
			String c_tenBoMay, String c_loaiMatSo, String c_thoiLuongThuDayCot, String c_hoaTietMatSo,
			Integer c_duongKinhMat,HangDongHo hangDongHo,LoaiDongHo loaiDongHo) {
		super();
		this.maDH = maDH;
		this.tenDongHo = tenDongHo;
		this.doiTuongSuDung = doiTuongSuDung;
		this.doDaiDayDeo = doDaiDayDeo;
		this.doRongDayDeo = doRongDayDeo;
		this.trongLuong = trongLuong;
		this.chatLieuMatKinh = chatLieuMatKinh;
		this.chatLieuDayDeo = chatLieuDayDeo;
		this.chatLieuKhungVien = chatLieuKhungVien;
		this.noiSanXuat = noiSanXuat;
		this.khangNuoc = khangNuoc;
		this.hinhAnh = hinhAnh;
		this.tinhNangTienIch = tinhNangTienIch;
		this.slTon = slTon;
		this.gia = gia;
		this.c_tenBoMay = c_tenBoMay;
		this.c_loaiMatSo = c_loaiMatSo;
		this.c_thoiLuongThuDayCot = c_thoiLuongThuDayCot;
		this.c_hoaTietMatSo = c_hoaTietMatSo;
		this.c_duongKinhMat = c_duongKinhMat;	
	}
	//đồng hồ smart
	public DongHo(String maDH, String tenDongHo, String doiTuongSuDung, Integer doDaiDayDeo, Integer doRongDayDeo,
			String trongLuong, String chatLieuMatKinh, String chatLieuDayDeo, String chatLieuKhungVien,
			String noiSanXuat, boolean khangNuoc, String hinhAnh, String tinhNangTienIch, Integer slTon, Double gia,
			Double s_kichThuocManHinh, String s_congNgheManHinh, String s_doPhanGiai,
			boolean s_khaNangThayDay, Double s_thoiGianSuDungPin, Double s_dungLuongPin, String s_congSac,
			String s_heDieuHanh, Integer s_camera, String s_ketNoi, String s_ngonNgu, HangDongHo hangDongHo,
			LoaiDongHo loaiDongHo) {
		super();
		this.maDH = maDH;
		this.tenDongHo = tenDongHo;
		this.doiTuongSuDung = doiTuongSuDung;
		this.doDaiDayDeo = doDaiDayDeo;
		this.doRongDayDeo = doRongDayDeo;
		this.trongLuong = trongLuong;
		this.chatLieuMatKinh = chatLieuMatKinh;
		this.chatLieuDayDeo = chatLieuDayDeo;
		this.chatLieuKhungVien = chatLieuKhungVien;
		this.noiSanXuat = noiSanXuat;
		this.khangNuoc = khangNuoc;
		this.hinhAnh = hinhAnh;
		this.tinhNangTienIch = tinhNangTienIch;
		this.slTon = slTon;
		this.gia = gia;
		this.s_kichThuocManHinh = s_kichThuocManHinh;
		this.s_congNgheManHinh = s_congNgheManHinh;
		this.s_doPhanGiai = s_doPhanGiai;
		this.s_khaNangThayDay = s_khaNangThayDay;
		this.s_thoiGianSuDungPin = s_thoiGianSuDungPin;
		this.s_dungLuongPin = s_dungLuongPin;
		this.s_congSac = s_congSac;
		this.s_heDieuHanh = s_heDieuHanh;
		this.s_camera = s_camera;
		this.s_ketNoi = s_ketNoi;
		this.s_ngonNgu = s_ngonNgu;
		this.hangDongHo = hangDongHo;
		this.loaiDongHo = loaiDongHo;
	}
	
	
	public Collection<ApDungKhuyenMai> getApDungKhuyenMai() {
		return apDungKhuyenMai;
	}
	public void setApDungKhuyenMai(Collection<ApDungKhuyenMai> apDungKhuyenMai) {
		this.apDungKhuyenMai = apDungKhuyenMai;
	}
	public String getMaDH() {
		return maDH;
	}
	public void setMaDH(String maDH) {
		this.maDH = maDH;
	}
	public String getTenDongHo() {
		return tenDongHo;
	}
	public void setTenDongHo(String tenDongHo) {
		this.tenDongHo = tenDongHo;
	}
	public String getDoiTuongSuDung() {
		return doiTuongSuDung;
	}
	public void setDoiTuongSuDung(String doiTuongSuDung) {
		this.doiTuongSuDung = doiTuongSuDung;
	}
	public Integer getDoDaiDayDeo() {
		return doDaiDayDeo;
	}
	public void setDoDaiDayDeo(Integer doDaiDayDeo) {
		this.doDaiDayDeo = doDaiDayDeo;
	}
	public Integer getDoRongDayDeo() {
		return doRongDayDeo;
	}
	public void setDoRongDayDeo(Integer doRongDayDeo) {
		this.doRongDayDeo = doRongDayDeo;
	}
	public String getTrongLuong() {
		return trongLuong;
	}
	public void setTrongLuong(String trongLuong) {
		this.trongLuong = trongLuong;
	}
	public String getChatLieuMatKinh() {
		return chatLieuMatKinh;
	}
	public void setChatLieuMatKinh(String chatLieuMatKinh) {
		this.chatLieuMatKinh = chatLieuMatKinh;
	}
	public String getChatLieuDayDeo() {
		return chatLieuDayDeo;
	}
	public void setChatLieuDayDeo(String chatLieuDayDeo) {
		this.chatLieuDayDeo = chatLieuDayDeo;
	}
	public String getChatLieuKhungVien() {
		return chatLieuKhungVien;
	}
	public void setChatLieuKhungVien(String chatLieuKhungVien) {
		this.chatLieuKhungVien = chatLieuKhungVien;
	}
	public String getNoiSanXuat() {
		return noiSanXuat;
	}
	public void setNoiSanXuat(String noiSanXuat) {
		this.noiSanXuat = noiSanXuat;
	}
	public boolean isKhangNuoc() {
		return khangNuoc;
	}
	public void setKhangNuoc(boolean khangNuoc) {
		this.khangNuoc = khangNuoc;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public String getTinhNangTienIch() {
		return tinhNangTienIch;
	}
	public void setTinhNangTienIch(String tinhNangTienIch) {
		this.tinhNangTienIch = tinhNangTienIch;
	}
	public Integer getSlTon() {
		return slTon;
	}
	public void setSlTon(Integer slTon) {
		this.slTon = slTon;
	}
	public Double getGia() {
		return gia;
	}
	public void setGia(Double gia) {
		this.gia = gia;
	}
	public String getC_tenBoMay() {
		return c_tenBoMay;
	}
	public void setC_tenBoMay(String c_tenBoMay) {
		this.c_tenBoMay = c_tenBoMay;
	}
	public String getC_loaiMatSo() {
		return c_loaiMatSo;
	}
	public void setC_loaiMatSo(String c_loaiMatSo) {
		this.c_loaiMatSo = c_loaiMatSo;
	}
	public String getC_thoiLuongThuDayCot() {
		return c_thoiLuongThuDayCot;
	}
	public void setC_thoiLuongThuDayCot(String c_thoiLuongThuDayCot) {
		this.c_thoiLuongThuDayCot = c_thoiLuongThuDayCot;
	}
	public String getC_hoaTietMatSo() {
		return c_hoaTietMatSo;
	}
	public void setC_hoaTietMatSo(String c_hoaTietMatSo) {
		this.c_hoaTietMatSo = c_hoaTietMatSo;
	}
	public Integer getC_duongKinhMat() {
		return c_duongKinhMat;
	}
	public void setC_duongKinhMat(Integer c_duongKinhMat) {
		this.c_duongKinhMat = c_duongKinhMat;
	}
	public Double getS_kichThuocManHinh() {
		return s_kichThuocManHinh;
	}
	public void setS_kichThuocManHinh(Double s_kichThuocManHinh) {
		this.s_kichThuocManHinh = s_kichThuocManHinh;
	}
	public String getS_congNgheManHinh() {
		return s_congNgheManHinh;
	}
	public void setS_congNgheManHinh(String s_congNgheManHinh) {
		this.s_congNgheManHinh = s_congNgheManHinh;
	}
	public String getS_doPhanGiai() {
		return s_doPhanGiai;
	}
	public void setS_doPhanGiai(String s_doPhanGiai) {
		this.s_doPhanGiai = s_doPhanGiai;
	}
	public boolean isS_khaNangThayDay() {
		return s_khaNangThayDay;
	}
	public void setS_khaNangThayDay(boolean s_khaNangThayDay) {
		this.s_khaNangThayDay = s_khaNangThayDay;
	}
	public Double getS_thoiGianSuDungPin() {
		return s_thoiGianSuDungPin;
	}
	public void setS_thoiGianSuDungPin(Double s_thoiGianSuDungPin) {
		this.s_thoiGianSuDungPin = s_thoiGianSuDungPin;
	}
	public Double getS_dungLuongPin() {
		return s_dungLuongPin;
	}
	public void setS_dungLuongPin(Double s_dungLuongPin) {
		this.s_dungLuongPin = s_dungLuongPin;
	}
	public String getS_congSac() {
		return s_congSac;
	}
	public void setS_congSac(String s_congSac) {
		this.s_congSac = s_congSac;
	}
	public String getS_heDieuHanh() {
		return s_heDieuHanh;
	}
	public void setS_heDieuHanh(String s_heDieuHanh) {
		this.s_heDieuHanh = s_heDieuHanh;
	}
	public Integer getS_camera() {
		return s_camera;
	}
	public void setS_camera(Integer s_camera) {
		this.s_camera = s_camera;
	}
	public String getS_ketNoi() {
		return s_ketNoi;
	}
	public void setS_ketNoi(String s_ketNoi) {
		this.s_ketNoi = s_ketNoi;
	}
	public String getS_ngonNgu() {
		return s_ngonNgu;
	}
	public void setS_ngonNgu(String s_ngonNgu) {
		this.s_ngonNgu = s_ngonNgu;
	}
	public HangDongHo getHangDongHo() {
		return hangDongHo;
	}
	public void setHangDongHo(HangDongHo hangDongHo) {
		this.hangDongHo = hangDongHo;
	}
	public LoaiDongHo getLoaiDongHo() {
		return loaiDongHo;
	}
	public void setLoaiDongHo(LoaiDongHo loaiDongHo) {
		this.loaiDongHo = loaiDongHo;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public Collection<ChiTietGioHang> getChiTietGH() {
		return chiTietGH;
	}
	public void setChiTietGH(Collection<ChiTietGioHang> chiTietGH) {
		this.chiTietGH = chiTietGH;
	}
	public List<String> getDisplayImage() {
		return displayImage;
	}
	public void setDisplayImage(List<String> displayImage) {
		this.displayImage = displayImage;
	}
	public String getDisplaySingleImg() {
		return displaySingleImg;
	}
	public void setDisplaySingleImg(String displaySingleImg) {
		this.displaySingleImg = displaySingleImg;
	}
}
