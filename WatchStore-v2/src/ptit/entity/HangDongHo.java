package ptit.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "HANGDONGHO")
public class HangDongHo {
	@Id
	@Column(name = "MAHANG")
	private String maHang;
	@Column(name = "TENHANG")
	private String tenHang;
	@OneToMany(mappedBy="hangDongHo")
	Collection<DongHo> dongHo;
	public String getMaHang() {
		return maHang;
	}
	public void setMaHang(String maHang) {
		this.maHang = maHang;
	}
	public String getTenHang() {
		return tenHang;
	}
	public void setTenHang(String tenHang) {
		this.tenHang = tenHang;
	}
	public Collection<DongHo> getDongHo() {
		return dongHo;
	}
	public void setDongHo(Collection<DongHo> dongHo) {
		this.dongHo = dongHo;
	}
	

}
