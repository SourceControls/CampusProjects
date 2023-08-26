package ptit.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NHANVIEN")
public class NhanVien {
	@Column(name = "MANV")
	@Id
	private String maNV;
	@Column(name = "HO")
	private String ho;
	@Column(name = "TEN")
	private String ten;
	@Column(name = "GIOITINH")
	private String gioiTinh;
	@Column(name = "SDT")
	private String sdt;
	@Column(name = "EMAIL")
	private String email;
	@Column(name = "NGAYSINH")
	private Date ngaySinh;
	@Column(name = "DIACHI")
	private String diaChi;
	@Column(name = "DAXOA")
	private boolean daXoa;
	public NhanVien() {
		super();
	}
	public NhanVien(String maNV, String ho, String ten, String gioiTinh, String sdt, String email, Date ngaySinh,
			String diaChi, boolean daXoa) {
		super();
		this.maNV = maNV;
		this.ho = ho;
		this.ten = ten;
		this.gioiTinh = gioiTinh;
		this.sdt = sdt;
		this.email = email;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.daXoa = daXoa;
	}
	public String getMaNV() {
		return maNV;
	}
	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}
	public String getHo() {
		return ho;
	}
	public void setHo(String ho) {
		this.ho = ho;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
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
	public Date getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public boolean isDaXoa() {
		return daXoa;
	}
	public void setDaXoa(boolean daXoa) {
		this.daXoa = daXoa;
	}
	
}
