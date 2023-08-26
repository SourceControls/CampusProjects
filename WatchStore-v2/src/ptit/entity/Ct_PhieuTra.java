package ptit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CT_PHIEUTRA")
public class Ct_PhieuTra {
	@Id
	@GeneratedValue
	@Column(name="IdCt_PhieuTra")
	private Integer idPhieuTra;
	
	@ManyToOne
	@JoinColumn(name = "MaCT_PhieuDat")
	private ChiTietPhieuDat idPhieuDat;
	
	@ManyToOne
	@JoinColumn(name = "MAPT")
	private PhieuTra phieuTra;
	
	@Column(name="SOLUONG")
	private Integer soLuong;
	
	@Column(name="LYDO")
	private String lyDo;

	public Ct_PhieuTra(Integer idPhieuTra, ChiTietPhieuDat idPhieuDat, PhieuTra phieuTra, Integer soLuong,
			String lyDo) {
		super();
		this.idPhieuTra = idPhieuTra;
		this.idPhieuDat = idPhieuDat;
		this.phieuTra = phieuTra;
		this.soLuong = soLuong;
		this.lyDo = lyDo;
	}

	public Ct_PhieuTra() {
		super();
	}

	public Integer getIdPhieuTra() {
		return idPhieuTra;
	}

	public void setIdPhieuTra(Integer idPhieuTra) {
		this.idPhieuTra = idPhieuTra;
	}

	public ChiTietPhieuDat getIdPhieuDat() {
		return idPhieuDat;
	}

	public void setIdPhieuDat(ChiTietPhieuDat idPhieuDat) {
		this.idPhieuDat = idPhieuDat;
	}

	public PhieuTra getPhieuTra() {
		return phieuTra;
	}

	public void setPhieuTra(PhieuTra phieuTra) {
		this.phieuTra = phieuTra;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public String getLyDo() {
		return lyDo;
	}

	public void setLyDo(String lyDo) {
		this.lyDo = lyDo;
	}
	
}
