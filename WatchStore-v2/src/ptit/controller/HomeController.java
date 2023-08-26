package ptit.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.naming.java.javaURLContextFactory;
import org.apache.tomcat.util.http.fileupload.UploadContext;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import antlr.debug.NewLineListener;
import ptit.bean.RecaptchaVerification;
import ptit.bean.SingleSliderProduct;
import ptit.bean.TopWatch;
import ptit.bean.UploadFile;
import ptit.entity.ApDungKhuyenMai;
import ptit.entity.ChiTietGioHang;
import ptit.entity.DongHo;
import ptit.entity.GioHang;
import ptit.entity.KhachHang;

@Controller
@Transactional
public class HomeController {
	private String key = "";  //hỗ trợ trong search
	@Autowired
	private SessionFactory factory;
	@Autowired 
	TopWatch topWatch[];
	
	@RequestMapping()
	public String main(ModelMap model) {
		System.out.println("Vào Trang Chính");
		return "redirect:/home/index.htm";
	}

	//index
	@RequestMapping("home/index")
	public String index(ModelMap model, Principal principal,
			@CookieValue(value = "idGioHang", defaultValue = "") String idGioHangCookie,HttpServletResponse response) {
		//đổ list đồng hồ
		List<SingleSliderProduct> listProducts =selectAllSingleSliderProducts();
		List<SingleSliderProduct> listProductsToDay = selectAllDealToday(listProducts);

		model.addAttribute("TopWatch",topWatch); //topwatch
		model.addAttribute("ListProduct",listProducts);
		model.addAttribute("ListProductToDay",listProductsToDay);
		//set end date cho khuyến mãi hôm nay là ngày mai
		model.addAttribute("currentDay",LocalDate.now().plusDays(1).format(DateTimeFormatter.ISO_DATE).toString());
		//giỏ hàng
		
		GioHang gioHang = null;
		//lấy id giỏ hàng từ cookie
		if (principal == null) { 
			// Them gio hang moi
			if (idGioHangCookie.equals("")) {
				gioHang = this.insertGioHang();
				Cookie cookie = new Cookie("idGioHang", gioHang.getId() + "");
				cookie.setPath("/DongHoWeb/");
				response.addCookie(cookie);
//				System.out.println("Tạo mới gh: " + gioHang.getId());
			} else {
				// Neu co cookie, lay id gio hang cookie
				gioHang = this.getGioHangById(Integer.parseInt(idGioHangCookie));
//				System.out.println("Giỏ hàng cookie: " + gioHang.getId());

			}
		} else {
			// Lay gio hang cua user
			gioHang = this.getKhachHangByUsername(principal.getName()).getGioHang();
		}
		model.addAttribute("cartID", gioHang.getId());
		if(gioHang.getChiTietGH()!= null)
		model.addAttribute("cartQuantity", gioHang.getChiTietGH().size());
		else {
		model.addAttribute("cartQuantity", 0);
		}
		return "home/index";
	}
	 
	//thêm sản phẩm vào giỏ hàng
	@Transactional
	@RequestMapping("addToCart/{idCart}/{idDongHo}.htm")
	public String themVaoGioHang(@PathVariable("idCart") String idCart,@PathVariable("idDongHo") String idDongHo, ModelMap model)
	{
//	     System.out.print(idCart + " " +idDongHo);
			String hql = "FROM ChiTietGioHang ct WHERE ct.gioHang.id= :idCart and ct.dongHo.maDH = :idDongHo";
			Session session = factory.openSession();
			Query query = session.createQuery(hql);
			query.setParameter("idCart"	,Integer.parseInt(idCart));
			query.setParameter("idDongHo", idDongHo);
			ChiTietGioHang ct = (ChiTietGioHang) query.uniqueResult();
			
			if(ct != null) {  //update số lượng
				ct.setSoLuong(ct.getSoLuong()+1);
			}
			else {
				ct = new ChiTietGioHang(getGioHangById(Integer.parseInt(idCart)),getDongHo(idDongHo),1);	
			}
			
			Transaction t = session.beginTransaction();

			try {
				session.saveOrUpdate(ct);
				t.commit();
			} catch (Exception e) {
				e.printStackTrace();
				t.rollback();
			} finally {
				session.close();
			}
	     
		return "redirect:/home/index.htm";
	}
	//page tìm sản phẩm
	@RequestMapping("search")
	public String search(HttpServletRequest request, ModelMap model,Principal principal,
			@CookieValue(value = "idGioHang", defaultValue = "") String idGioHangCookie, HttpServletResponse response){
	
		if(request.getParameter("searchInput") != null)
			key = request.getParameter("searchInput").trim();
		model.addAttribute("key",key);
//		System.out.println(key);
		
		List<SingleSliderProduct> listProducts =selectAllSingleSliderProducts(key);
		model.addAttribute("ListProduct",listProducts);
		
		//giỏ hàng
		GioHang gioHang = null;
		//lấy id giỏ hàng từ cookie
		if (principal == null) { 
			// Them gio hang moi
			if (idGioHangCookie.equals("")) {
				gioHang = this.insertGioHang();
				Cookie cookie = new Cookie("idGioHang", gioHang.getId() + "");
				cookie.setPath("/DongHoWeb/");
				response.addCookie(cookie);
//				System.out.println("Tạo mới gh: " + gioHang.getId());
			} else {
				// Neu co cookie, lay id gio hang cookie
//				idGioHang = Integer.parseInt(idGioHangCookie);
				gioHang = this.getGioHangById(Integer.parseInt(idGioHangCookie));
//				System.out.println("Giỏ hàng cookie: " + gioHang.getId());

			}
		} else {
			// Lay gio hang cua user
			gioHang = this.getKhachHangByUsername(principal.getName()).getGioHang();
		}
		model.addAttribute("cartID", gioHang.getId());
		if(gioHang.getChiTietGH()!= null)
		model.addAttribute("cartQuantity", gioHang.getChiTietGH().size());
		else {
		model.addAttribute("cartQuantity", 0);
		}
		return "/home/search";
	}
	
	//page khiếu nại 
	@RequestMapping("khieunai")
	public String khieuNai(HttpServletRequest request, ModelMap model) {
		return "home/khieunai";	
	}
	
	//gửi mail
	@Autowired
	JavaMailSender mailer;
	
	@Autowired
	@Qualifier("uploadfile")
	UploadFile baseUploadFile;
	@RequestMapping(value= "khieunai/send", method = RequestMethod.POST)
	public String guiKhieuNai(HttpServletRequest request, ModelMap model, @RequestParam("file") MultipartFile file) {
		//recapcha
		String key = request.getParameter("g-recaptcha-response");
		try {
			if(!RecaptchaVerification.verify(key)) {
				model.addAttribute("message", "Captcha sai hoặc chưa nhập!");
				   return "/home/khieunai";
			}
		} catch (IOException e) {
			System.out.println("captcha:" + e.getMessage());
			e.printStackTrace();
		}
	
		//check dữ liệu rtoongs
		String to = "hungbuituan1@gmail.com";
		String subject = "Khiếu nại / Góp ý";

		String from = (String) request.getParameter("email");
		String body = (String) request.getParameter("noiDung");
		if(from.isEmpty() | body.isEmpty()) {
			model.addAttribute("message", "Email và nội dung không được để trống!");	
			return "/home/khieunai";
		}
		
		try {

			// Tạo mail
			MimeMessage mail = mailer.createMimeMessage();
					// Sử dụng lớp trợ giúp
			MimeMessageHelper helper = new MimeMessageHelper(mail,true);
			helper.setFrom(from, from);
			helper.setTo(to);
			helper.setReplyTo(from, from);
			helper.setSubject(subject);
			helper.setText(body, true);
			if(!file.getOriginalFilename().isEmpty()) {
				String filepath =  baseUploadFile.getBasePath() + File.separator + java.time.LocalDateTime.now().toString().replace(":","-") + file.getOriginalFilename();
				file.transferTo(new File(filepath)); 
				Resource res = new FileSystemResource(new File(filepath));
				helper.addInline("Hình Ảnh", res);
			
			}
			// Gửi mail
			mailer.send(mail);
			model.addAttribute("message", "Gửi khiếu nại thành công!");
		} catch (MessagingException | MailException | IOException ex) {
			System.out.println(ex.getMessage());
			model.addAttribute("message", "Khiếu nại thất bại, hãy thử lại sau!");
		}
		return "/home/khieunai";
	}
	
	
	//thêm sản phẩm vào giỏ hàng 2 - tu page tim san pham
	@Transactional
	@RequestMapping("search/addToCart/{idCart}/{idDongHo}.htm")
	public String themVaoGioHang2(@PathVariable("idCart") String idCart,@PathVariable("idDongHo") String idDongHo, ModelMap model, HttpServletRequest request)
	{
			String hql = "FROM ChiTietGioHang ct WHERE ct.gioHang.id= :idCart and ct.dongHo.maDH = :idDongHo";
			Session session = factory.openSession();
			Query query = session.createQuery(hql);
			query.setParameter("idCart"	,Integer.parseInt(idCart));
			query.setParameter("idDongHo", idDongHo);
			ChiTietGioHang ct = (ChiTietGioHang) query.uniqueResult();
			
			if(ct != null) {  //update số lượng
				ct.setSoLuong(ct.getSoLuong()+1);
			}
			else {
				ct = new ChiTietGioHang(getGioHangById(Integer.parseInt(idCart)),getDongHo(idDongHo),1);	
			}
			
			Transaction t = session.beginTransaction();

			try {
				session.saveOrUpdate(ct);
				t.commit();
			} catch (Exception e) {
				e.printStackTrace();
				t.rollback();
			} finally {
				session.close();
			}
		return "redirect:/search.htm";
	}
	
	// Tim gio hang
	@Transactional
	public GioHang getGioHangById(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM GioHang gh WHERE gh.id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		GioHang gh = (GioHang) query.uniqueResult();
		return gh;
	}

	
	//section listProducts
	public List<SingleSliderProduct> selectAllDealToday(List<SingleSliderProduct> listProducts){
		List<SingleSliderProduct> listProductsDealToday = new ArrayList<SingleSliderProduct>();
		for (SingleSliderProduct s : listProducts) {
			if(s.getNgayKetThucKM().equals(java.time.LocalDate.now().toString().trim())) {
				listProductsDealToday.add(s);
			}
		}
		return listProductsDealToday;
	}
	//select tất cả sản phẩm
	public List<SingleSliderProduct> selectAllSingleSliderProducts(){  
		List<SingleSliderProduct> listProducts = new ArrayList<SingleSliderProduct>();
		Session session = factory.openSession();
		Query query = session.createQuery("FROM DongHo");
		List<DongHo> listDongHo = query.list();
		for (DongHo dongHo : listDongHo) {
			listProducts.add(new SingleSliderProduct(dongHo.getMaDH(), dongHo.getTenDongHo(),dongHo.getGia(),"detail/index/" +dongHo.getMaDH()+".htm",dongHo.getHinhAnh().split(",")));
			for (ApDungKhuyenMai km : dongHo.getApDungKhuyenMai()) {
				   if(khuyenMaiConHan(km.getKhuyenMai().getNgayBD(),km.getKhuyenMai().getNgayKT())) {
				   listProducts.get(listProducts.size()-1).setGiamGia(km.getTiLeGiam());
				   listProducts.get(listProducts.size()-1).setNgayKetThucKM(km.getKhuyenMai().getNgayKT().toString().trim());
				   }
				}
		}
		return listProducts;
	}
	
	//search đồng hồ
	@Transactional
	public List<SingleSliderProduct> selectAllSingleSliderProducts(String key){	
		List<SingleSliderProduct> listProducts = new ArrayList<SingleSliderProduct>();
		Session session = factory.openSession();
		Query query = session.createQuery("FROM DongHo");
		List<DongHo> listDongHo = query.list();
		for (DongHo dongHo : listDongHo) {
			if(baoGomKey(dongHo,key)) {
				listProducts.add(new SingleSliderProduct(dongHo.getMaDH(), dongHo.getTenDongHo(),dongHo.getGia(),"detail/index/" +dongHo.getMaDH()+".htm",dongHo.getHinhAnh().split(",")));
				for (ApDungKhuyenMai km : dongHo.getApDungKhuyenMai()) {
					   if(khuyenMaiConHan(km.getKhuyenMai().getNgayBD(),km.getKhuyenMai().getNgayKT())) {
					   listProducts.get(listProducts.size()-1).setGiamGia(km.getTiLeGiam());
					   listProducts.get(listProducts.size()-1).setNgayKetThucKM(km.getKhuyenMai().getNgayKT().toString().trim());
					   }
					}
			}
		}
		return listProducts;
	}
	
	private boolean baoGomKey(DongHo dongHo, String key) {
		if(key == null)
			return false;
		if(dongHo.getTenDongHo().toLowerCase().contains(key.toLowerCase()))
			return true;
		if(dongHo.getHangDongHo().getTenHang().toLowerCase().contains(key.toLowerCase()))
			return true;
		if(dongHo.getLoaiDongHo().getTenLoai().toLowerCase().contains(key.toLowerCase()))
			return true;
		return false;
	}
	
	private boolean khuyenMaiConHan(Date ngayBD, Date ngayKT) {
		long millis=System.currentTimeMillis();  
	    java.sql.Date date = new java.sql.Date(millis);
	    if(ngayKT.toString().equals(date.toString()) | ngayBD.toString().equals(date.toString())) {
	    	return true;
	    }
	    if(date.after(ngayBD) & date.before(ngayKT)) {
	    	return true;
	    }
	    return false;
	}
	
	@Transactional
	public GioHang insertGioHang() {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		GioHang gioHang = new GioHang();
		try {
			session.save(gioHang);
			t.commit();
		} catch (Exception e) {
			e.printStackTrace();
			t.rollback();
			return null;
		} finally {
			session.close();
		}
	    return gioHang;

	}
	
	@Transactional
	public KhachHang getKhachHangByUsername(String username) {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang kh WHERE kh.taikhoan.username = :username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);
		KhachHang kh = (KhachHang) query.uniqueResult();
		return kh;
	}
	@Transactional
	public DongHo getDongHo(String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM DongHo dongHo WHERE dongHo.maDH = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		DongHo dongHo = (DongHo) query.uniqueResult();
		return dongHo;
	}
	
	


}
