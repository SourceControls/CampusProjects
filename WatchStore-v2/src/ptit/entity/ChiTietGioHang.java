package ptit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CTGH")
public class ChiTietGioHang {
	@Id
	@GeneratedValue
	@Column(name = "IDCT")
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "IDGH")
	private GioHang gioHang;
	
	@ManyToOne
	@JoinColumn(name = "MADH")
	private DongHo dongHo;
	
	@Column(name = "SOLUONG")
	private Integer soLuong;


	public ChiTietGioHang() {
		super();
	}
	
	public ChiTietGioHang(DongHo dongHo, Integer soLuong) {
		super();
		this.dongHo = dongHo;
		this.soLuong = soLuong;
	}
	
	public ChiTietGioHang(GioHang gioHang, DongHo dongHo, Integer soLuong) {
		super();
		this.gioHang = gioHang;
		this.dongHo = dongHo;
		this.soLuong = soLuong;
	}

	public ChiTietGioHang(Integer id, GioHang gioHang, DongHo dongHo, Integer soLuong) {
		super();
		this.id = id;
		this.gioHang = gioHang;
		this.dongHo = dongHo;
		this.soLuong = soLuong;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public GioHang getGioHang() {
		return gioHang;
	}

	public void setGioHang(GioHang gioHang) {
		this.gioHang = gioHang;
	}

	public DongHo getDongHo() {
		return dongHo;
	}

	public void setDongHo(DongHo dongHo) {
		this.dongHo = dongHo;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}
}
