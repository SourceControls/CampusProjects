package ptit.entity;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "GIOHANG")
public class GioHang {
	@Id
	@GeneratedValue
	@Column(name = "IDGH")
	private Integer id;
	
	@OneToOne
	@JoinColumn(name = "IDKH")
	private KhachHang khachHang;
	
	@OneToMany(mappedBy = "gioHang", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Collection<ChiTietGioHang> chiTietGH;

	public GioHang() {
		super();
	}
	
	public GioHang(KhachHang khachHang) {
		super();
		this.khachHang = khachHang;
	}

	public GioHang(Integer id, KhachHang khachHang) {
		super();
		this.id = id;
		this.khachHang = khachHang;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public Collection<ChiTietGioHang> getChiTietGH() {
		return chiTietGH;
	}

	public void setChiTietGH(Collection<ChiTietGioHang> chiTietGH) {
		this.chiTietGH = chiTietGH;
	}

	@Override
	public String toString() {
		return "GioHang [id=" + id + ", khachHang=" + khachHang + ", chiTietGH=" + chiTietGH + "]";
	}
}
