package ptit.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "APDUNGKM")
@IdClass(ApDungKhuyenMai.class)
public class ApDungKhuyenMai implements Serializable{
	
//	 @Id
//	    private String maKM;
//	 @Id
//	 	private String maDH;
//	 
		@Id
	    @ManyToOne
	    @JoinColumn(name = "MAKM",referencedColumnName = "MAKM")
	    @MapsId
	    private KhuyenMai khuyenMai;
	    
		@Id
	    @ManyToOne
	    @JoinColumn(name = "MADONGHO", referencedColumnName = "MADH")
	    @MapsId
	    private DongHo dongHo;
	    
	    
	    private int tiLeGiam;
	    
	    
	    
	    
		public ApDungKhuyenMai() {
			super();
		}
		public KhuyenMai getKhuyenMai() {
			return khuyenMai;
		}
		public void setKhuyenMai(KhuyenMai khuyenMai) {
			this.khuyenMai = khuyenMai;
		}
		public DongHo getDongHo() {
			return dongHo;
		}
		public void setDongHo(DongHo dongHo) {
			this.dongHo = dongHo;
		}
		public int getTiLeGiam() {
			return tiLeGiam;
		}
		public void setTiLeGiam(int tiLeGiam) {
			this.tiLeGiam = tiLeGiam;
		}

	    
	    
}
