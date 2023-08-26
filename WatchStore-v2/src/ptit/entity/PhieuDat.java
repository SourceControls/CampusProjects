package ptit.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="PHIEUDAT")
public class PhieuDat {
	@Id
	@GeneratedValue
	@Column(name="MAPHIEU")
	private Integer maPD;
	
	@Column(name="HoTenNguoiNhan")
	private String fullName;
	
	@Column(name="DiaChiNhan")
	private String address;
	
	@Column(name="SDTNhan")
	private String sdt;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name="NGAYDAT")
	private Date ngayDat;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name="NGAYNHAN")
	private Date ngayNhan;
	
	@Column(name="TRANGTHAI")
	private String trangThai;
	
	@ManyToOne
	@JoinColumn(name="MaKhachHang", referencedColumnName="MAKH")
	private KhachHang khachHang;
	
	@OneToMany(mappedBy = "phieuDat", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Collection<HoaDon> hoaDon;
	
	@ManyToOne
	@JoinColumn(name="MaNhanVien",referencedColumnName="MANV")
    private NhanVien nhanVien;
	
	@OneToMany(mappedBy = "phieuDat", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Collection<ChiTietPhieuDat> ct_phieuDat;

	public PhieuDat(Integer maPD, String fullName, String address, String sdt, Date ngayDat, Date ngayNhan,
			String trangThai, KhachHang khachHang, Collection<HoaDon> hoaDon, NhanVien nhanVien,
			Collection<ChiTietPhieuDat> ct_phieuDat) {
		super();
		this.maPD = maPD;
		this.fullName = fullName;
		this.address = address;
		this.sdt = sdt;
		this.ngayDat = ngayDat;
		this.ngayNhan = ngayNhan;
		this.trangThai = trangThai;
		this.khachHang = khachHang;
		this.hoaDon = hoaDon;
		this.nhanVien = nhanVien;
		this.ct_phieuDat = ct_phieuDat;
	}
	

	public PhieuDat(Integer maPD, String fullName, String address, String sdt, Date ngayDat, Date ngayNhan,
			String trangThai, KhachHang khachHang, NhanVien nhanVien, Collection<ChiTietPhieuDat> ct_phieuDat) {
		super();
		this.maPD = maPD;
		this.fullName = fullName;
		this.address = address;
		this.sdt = sdt;
		this.ngayDat = ngayDat;
		this.ngayNhan = ngayNhan;
		this.trangThai = trangThai;
		this.khachHang = khachHang;
		this.nhanVien = nhanVien;
		this.ct_phieuDat = ct_phieuDat;
	}


	public PhieuDat() {
		super();
	}

	public Integer getMaPD() {
		return maPD;
	}

	public void setMaPD(Integer maPD) {
		this.maPD = maPD;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public Date getNgayDat() {
		return ngayDat;
	}

	public void setNgayDat(Date ngayDat) {
		this.ngayDat = ngayDat;
	}

	public Date getNgayNhan() {
		return ngayNhan;
	}

	public void setNgayNhan(Date ngayNhan) {
		this.ngayNhan = ngayNhan;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public Collection<HoaDon> getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(Collection<HoaDon> hoaDon) {
		this.hoaDon = hoaDon;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public Collection<ChiTietPhieuDat> getCt_phieuDat() {
		return ct_phieuDat;
	}

	public void setCt_phieuDat(Collection<ChiTietPhieuDat> ct_phieuDat) {
		this.ct_phieuDat = ct_phieuDat;
	}

	
	
	
}
