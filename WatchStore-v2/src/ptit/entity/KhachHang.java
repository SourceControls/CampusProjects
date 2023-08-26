package ptit.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "KHACHHANG")
public class KhachHang {
	@Id
	@GeneratedValue
	@Column(name = "MAKH")
	private Integer id;
	
	@Column(name = "HOTEN")
	private String hoTen;
	
	@Column(name = "GIOITINH")
	private String gioiTinh;
	
	@Column(name = "SDT")
	private String sdt;
	
	@Column(name = "EMAIL")
	private String email;
	
	@OneToOne(mappedBy = "khachHang", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private TaiKhoan taikhoan;
	
	@OneToOne(mappedBy = "khachHang", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private GioHang gioHang;

	public KhachHang() {
		super();
	}
	
	public KhachHang(String hoTen, String gioiTinh, String sdt, String email) {
		super();
		this.hoTen = hoTen;
		this.gioiTinh = gioiTinh;
		this.sdt = sdt;
		this.email = email;
	}

	public KhachHang(Integer id, String hoTen, String gioiTinh, String sdt, String email, TaiKhoan taikhoan,
			GioHang gioHang) {
		super();
		this.id = id;
		this.hoTen = hoTen;
		this.gioiTinh = gioiTinh;
		this.sdt = sdt;
		this.email = email;
		this.taikhoan = taikhoan;
		this.gioHang = gioHang;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public TaiKhoan getTaikhoan() {
		return taikhoan;
	}

	public void setTaikhoan(TaiKhoan taikhoan) {
		this.taikhoan = taikhoan;
	}

	public GioHang getGioHang() {
		return gioHang;
	}

	public void setGioHang(GioHang gioHang) {
		this.gioHang = gioHang;
	}
}
