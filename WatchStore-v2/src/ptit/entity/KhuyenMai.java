package ptit.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "KHUYENMAI")
public class KhuyenMai {
	@Id
	@Column(name = "MAKM")
	private String maKM;
	@Column(name = "TENKM")
	private String tenKM;
	@Column(name = "NGAYBATDAU")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date ngayBD;
	@Column(name = "NGAYKETTHUC")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date ngayKT;	
	
	@OneToMany(mappedBy="khuyenMai")
	Collection<ApDungKhuyenMai> apDungKhuyenMai;

	
	
	public KhuyenMai() {
		super();
	}


	public String getMaKM() {
		return maKM;
	}

	public void setMaKM(String maKM) {
		this.maKM = maKM;
	}

	public String getTenKM() {
		return tenKM;
	}

	public void setTenKM(String tenKM) {
		this.tenKM = tenKM;
	}

	public Date getNgayBD() {
		return ngayBD;
	}

	public void setNgayBD(Date ngayBD) {
		this.ngayBD = ngayBD;
	}

	public Date getNgayKT() {
		return ngayKT;
	}

	public void setNgayKT(Date ngayKT) {
		this.ngayKT = ngayKT;
	}

	public Collection<ApDungKhuyenMai> getApDungKhuyenMai() {
		return apDungKhuyenMai;
	}

	public void setApDungKhuyenMai(Collection<ApDungKhuyenMai> apDungKhuyenMai) {
		this.apDungKhuyenMai = apDungKhuyenMai;
	}
	
	
}

