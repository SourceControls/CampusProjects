package ptit.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptit.entity.ChiTietGioHang;
import ptit.entity.DongHo;
import ptit.entity.GioHang;
import ptit.entity.KhachHang;

@Controller
@RequestMapping("detail")
@org.springframework.transaction.annotation.Transactional
public class ProductDetailController {
	@Autowired
	private SessionFactory factory;

	private int idGioHang;

	// Tim san pham
	@Transactional
	public DongHo getDongHo(String id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM DongHo dongHo WHERE dongHo.maDH = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		DongHo dongHo = (DongHo) query.uniqueResult();
		return dongHo;
	}

	// Tim khach hang bang username
	@Transactional
	public KhachHang getKhachHangByUsername(String username) {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang kh WHERE kh.taikhoan.username = :username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);
		KhachHang kh = (KhachHang) query.uniqueResult();
		return kh;
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

	// Tim chi tiet gio hang
	@Transactional
	public ChiTietGioHang getCTGioHangById(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM ChiTietGioHang gh WHERE gh.id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		ChiTietGioHang gh = (ChiTietGioHang) query.uniqueResult();
		return gh;
	}

	@RequestMapping(value = "/index/{id}.htm", method = RequestMethod.GET)
	public String getProductDetail(@PathVariable("id") String id, ModelMap model, Principal principal, 
			HttpSession session) {
		session.removeAttribute("showModel");
		DongHo dongHo = getDongHo(id);
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("hideDropdown", "d-none");
			model.addAttribute("username", username);
		}
		if (dongHo != null) {
			// Hinh anh
			String[] arrayHinhAnh = dongHo.getHinhAnh().split(",");
			model.addAttribute("data_zoom_image", arrayHinhAnh[0]);
			model.addAttribute("arrayHinhAnh", arrayHinhAnh);

			model.addAttribute("dongHo", dongHo);
			model.addAttribute("idDongHo", id);
		}
		return "product/detail";
	}

	@RequestMapping(value = "/index2/{id}.htm", method = RequestMethod.GET)
	public String getProductDetail2(@PathVariable("id") String id, ModelMap model, Principal principal) {
		DongHo dongHo = getDongHo(id);
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("hideDropdown", "d-none");
			model.addAttribute("username", username);
		}
		if (dongHo != null) {
			// Hinh anh
			String[] arrayHinhAnh = dongHo.getHinhAnh().split(",");
			model.addAttribute("data_zoom_image", arrayHinhAnh[0]);
			model.addAttribute("arrayHinhAnh", arrayHinhAnh);

			model.addAttribute("dongHo", dongHo);
			model.addAttribute("idDongHo", id);
		}
		return "product/detail";
	}

	// Kiem tra san pham da co trong gio hang
	public int productIsInCart(GioHang gioHang, DongHo dongHo) {
		List<ChiTietGioHang> listCT = new ArrayList(gioHang.getChiTietGH());
		for (int i = 0; i < listCT.size(); i++) {
			if (listCT.get(i).getDongHo().getMaDH() == dongHo.getMaDH()) {
				return listCT.get(i).getId();
			}
		}
		return -1;
	}

	@RequestMapping("/add-to-cart")
	public String addToCartFn(HttpServletRequest request, Principal principal, HttpServletResponse response,
			@CookieValue(value = "idGioHang", defaultValue = "") String idGioHangCookie, ModelMap model,
			HttpSession session) {
		String idSanPham = request.getParameter("id");
		int soluong = Integer.parseInt(request.getParameter("quantity"));

		GioHang gioHang = new GioHang();
		GioHang gioHangFounded = new GioHang();
		int errorCode;
		ChiTietGioHang ct;
		System.out.println(idGioHangCookie);
		// response.addCookie(new Cookie("idGioHang", ""));
		if (principal == null) {
			// Them gio hang moi
			if (idGioHangCookie.equals("")) {
				errorCode = this.insertCart(gioHang);
				Cookie cookie = new Cookie("idGioHang", this.idGioHang + "");
				cookie.setPath("/DongHoWeb/");
				response.addCookie(cookie);
			} else {
				// Neu co cookie, lay id gio hang cookie
				this.idGioHang = Integer.parseInt(idGioHangCookie);
				gioHangFounded = this.getGioHangById(this.idGioHang);
			}
		} else {
			// Lay gio hang cua user
			gioHangFounded = this.getKhachHangByUsername(principal.getName()).getGioHang();
		}

		// Neu da co trong gio hang
		int idChiTietGH;
		if (gioHangFounded.getChiTietGH() == null) {
			idChiTietGH = -1;
		} else {
			idChiTietGH = productIsInCart(gioHangFounded, this.getDongHo(idSanPham));
		}
		if (idChiTietGH > 0) {
			System.out.println("da co trong gio hang " + idChiTietGH);
			ChiTietGioHang chiTietCapNhat = this.getCTGioHangById(idChiTietGH);
			chiTietCapNhat.setSoLuong(chiTietCapNhat.getSoLuong() + soluong);
			System.out.println(chiTietCapNhat.getSoLuong());
		} else {
			// Chi tiet gio hang moi
			ct = new ChiTietGioHang(gioHangFounded, this.getDongHo(idSanPham), soluong);
			Collection<ChiTietGioHang> chiTietArr = new ArrayList<ChiTietGioHang>();
			chiTietArr.add(ct);
			gioHangFounded.setChiTietGH(chiTietArr);
			errorCode = this.updateCart(gioHangFounded);
		}

		// Tra ve view
		DongHo dongHo = getDongHo(idSanPham);
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("hideDropdown", "d-none");
			model.addAttribute("username", username);
		}
		if (dongHo != null) {
			// Hinh anh
			String[] arrayHinhAnh = dongHo.getHinhAnh().split(",");
			model.addAttribute("data_zoom_image", arrayHinhAnh[0]);
			model.addAttribute("arrayHinhAnh", arrayHinhAnh);
			model.addAttribute("dongHo", dongHo);
			model.addAttribute("idDongHo", idSanPham);
		}
		session.setAttribute("showModel", "showModel");
		return "redirect:/detail/index2/" + idSanPham + ".htm";
	}

	// *INSERT/DELETE/UPDATE

	// Them moi gio hang
	@Transactional
	public Integer insertCart(GioHang gh) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			idGioHang = (int) session.save(gh);
			t.commit();
		} catch (Exception e) {
			e.printStackTrace();
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

	// Update gio hang
	@Transactional
	public Integer updateCart(GioHang gh) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.update(gh);
			t.commit();
		} catch (Exception e) {
			e.printStackTrace();
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}
}
