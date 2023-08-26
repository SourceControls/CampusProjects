package ptit.entity;

import java.util.Collection;

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

@Entity
@Table(name="CT_PHIEUDAT")
public class ChiTietPhieuDat {
	@Id
	@GeneratedValue
	@Column(name="MaCT_PhieuDat")
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "MADONGHO")
	private DongHo dongHo;
	
	@ManyToOne
	@JoinColumn(name = "MAPHIEU")
	private PhieuDat phieuDat;
	
	@Column(name="SOLUONG")
	private Integer soLuong;
	
	@Column(name="DONGIA")
	private Double donGia;
	
	@OneToMany(mappedBy = "idPhieuDat", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Collection<Ct_PhieuTra> ct_phieuTra;

	public ChiTietPhieuDat(Integer id, DongHo dongHo, PhieuDat phieuDat, Integer soLuong, Double donGia,
			Collection<Ct_PhieuTra> ct_phieuTra) {
		super();
		this.id = id;
		this.dongHo = dongHo;
		this.phieuDat = phieuDat;
		this.soLuong = soLuong;
		this.donGia = donGia;
		this.ct_phieuTra = ct_phieuTra;
	}

	public ChiTietPhieuDat() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public DongHo getDongHo() {
		return dongHo;
	}

	public void setDongHo(DongHo dongHo) {
		this.dongHo = dongHo;
	}

	public PhieuDat getPhieuDat() {
		return phieuDat;
	}

	public void setPhieuDat(PhieuDat phieuDat) {
		this.phieuDat = phieuDat;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public Double getDonGia() {
		return donGia;
	}

	public void setDonGia(Double donGia) {
		this.donGia = donGia;
	}

	public Collection<Ct_PhieuTra> getCt_phieuTra() {
		return ct_phieuTra;
	}

	public void setCt_phieuTra(Collection<Ct_PhieuTra> ct_phieuTra) {
		this.ct_phieuTra = ct_phieuTra;
	}

	
}
