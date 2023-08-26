package ptit.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "LOAIDONGHO")
public class LoaiDongHo {
	@Id
	@Column(name = "MALOAI")
	private String maLoai;
	@Column(name = "TENLOAI")
	private String tenLoai;
	@OneToMany(mappedBy="loaiDongHo")
	Collection<DongHo> dongHo;
	public String getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	public Collection<DongHo> getDongHo() {
		return dongHo;
	}
	public void setDongHo(Collection<DongHo> dongHo) {
		this.dongHo = dongHo;
	}
	public boolean isCo() {
		return this.maLoai.trim().equals("2");
	}

}
