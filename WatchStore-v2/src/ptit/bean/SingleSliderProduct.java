package ptit.bean;

public class SingleSliderProduct {
	private String idDongHo;
	private String ten;
	private double gia;
	private String urlChiTiet;
	private String hinhAnh[];
	private int giamGia = 0;
	private double giaSauGiam;
	private String ngayKetThucKM = "";
	public SingleSliderProduct(String idDongHo, String ten, double gia,String urlChiTiet, String[] hinhAnh) {
		super();
		this.idDongHo = idDongHo;
		this.urlChiTiet = urlChiTiet;
		this.hinhAnh = hinhAnh;
		this.ten = ten;
		this.gia = gia;
		init();
	}
	private void init() {
		for (String string : hinhAnh) {
			string = string.trim();
		}
		giaSauGiam = gia;
		}
	
	public String getIdDongHo() {
		return idDongHo;
	}
	public void setIdDongHo(String idDongHo) {
		this.idDongHo = idDongHo;
	}
	public double getGiaSauGiam() {
		return giaSauGiam;
	}
	
	public String getNgayKetThucKM() {
		return ngayKetThucKM;
	}
	public void setNgayKetThucKM(String ngayKetThucKM) {
		this.ngayKetThucKM = ngayKetThucKM;
	}
	public void setGiaSauGiam(double giaSauGiam) {
		this.giaSauGiam = giaSauGiam;
	}
	public int getGiamGia() {
		return giamGia;
	}
	public void setGiamGia(int giamGia) {
		this.giamGia = giamGia;
	
	    giaSauGiam = (int)(gia*(1-giamGia*1.0/100));
	    if(giamGia !=0) {
	 		    giaSauGiam /=10000;
	 		    giaSauGiam = Math.round(giaSauGiam);
	 		    giaSauGiam *=10000;
	 		    giaSauGiam -=1000;
	    }

	}

	public String getUrlChiTiet() {
		return urlChiTiet;
	}
	public void setUrlChiTiet(String urlChiTiet) {
		this.urlChiTiet = urlChiTiet;
	}
	public String[] getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String[] hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	
	
}
