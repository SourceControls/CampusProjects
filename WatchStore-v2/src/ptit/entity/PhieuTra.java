package ptit.entity;

import java.util.Collection;
import java.util.Date;

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
@Table(name="PHIEUTRA")
public class PhieuTra {
	@Id
	@GeneratedValue
	@Column(name="MAPHIEUTRA")
	private Integer maPT;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name="NGAYTRA")
	private Date ngayTra;
	
	@ManyToOne
	@JoinColumn(name="MANV", referencedColumnName="MANV")
	private NhanVien nhanVien;
	
	@OneToMany(mappedBy = "phieuTra", fetch = FetchType.EAGER)
	private Collection<Ct_PhieuTra> ct_phieuTra;

	public PhieuTra(Integer maPT, Date ngayTra, NhanVien nhanVien, Collection<Ct_PhieuTra> ct_phieuTra) {
		super();
		this.maPT = maPT;
		this.ngayTra = ngayTra;
		this.nhanVien = nhanVien;
		this.ct_phieuTra = ct_phieuTra;
	}

	public PhieuTra() {
		super();
	}

	public Integer getMaPT() {
		return maPT;
	}

	public void setMaPT(Integer maPT) {
		this.maPT = maPT;
	}

	public Date getNgayTra() {
		return ngayTra;
	}

	public void setNgayTra(Date ngayTra) {
		this.ngayTra = ngayTra;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public Collection<Ct_PhieuTra> getCt_phieuTra() {
		return ct_phieuTra;
	}

	public void setCt_phieuTra(Collection<Ct_PhieuTra> ct_phieuTra) {
		this.ct_phieuTra = ct_phieuTra;
	}
	
	
}
