package ptit.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="HOADON")
public class HoaDon {
	@Id
	@GeneratedValue
	@Column(name="MAHD")
	private Integer maHd;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name="NGAYIN")
	private Date ngayIn;
	
	@Column(name="TONGTIEN")
	private Double tongTien;
	
	@ManyToOne
	@JoinColumn(name="MAPHIEUDAT")
	private PhieuDat phieuDat;

	public HoaDon(Integer maHd, Date ngayIn, Double tongTien, PhieuDat phieuDat) {
		super();
		this.maHd = maHd;
		this.ngayIn = ngayIn;
		this.tongTien = tongTien;
		this.phieuDat = phieuDat;
	}

	public HoaDon() {
		super();
	}

	public Integer getMaHd() {
		return maHd;
	}

	public void setMaHd(Integer maHd) {
		this.maHd = maHd;
	}

	public Date getNgayIn() {
		return ngayIn;
	}

	public void setNgayIn(Date ngayIn) {
		this.ngayIn = ngayIn;
	}

	public Double getTongTien() {
		return tongTien;
	}

	public void setTongTien(Double tongTien) {
		this.tongTien = tongTien;
	}

	public PhieuDat getPhieuDat() {
		return phieuDat;
	}

	public void setPhieuDat(PhieuDat phieuDat) {
		this.phieuDat = phieuDat;
	}
	
	
}
