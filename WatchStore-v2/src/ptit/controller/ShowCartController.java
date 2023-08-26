package ptit.controller;


import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptit.entity.ChiTietGioHang;
import ptit.entity.DongHo;
import ptit.entity.GioHang;
import ptit.entity.KhachHang;

@Transactional
@Controller
@RequestMapping("cartDetail")
public class ShowCartController {
	@Autowired
	private SessionFactory factory;

	private int idGioHang;
	public int id;

	// Tim san pham
//	@Transactional
//	public DongHo getDongHo(String id) {
//		Session session = factory.getCurrentSession();
//		String hql = "FROM DongHo dongHo WHERE dongHo.maDH = :id";
//		Query query = session.createQuery(hql);
//		query.setParameter("id", id);
//		DongHo dongHo = (DongHo) query.uniqueResult();
//		return dongHo;
//	}
	@Transactional
	public List<DongHo> getDongHo() {
		Session session = factory.getCurrentSession();
		String hql = "FROM DongHo";
		Query query = session.createQuery(hql);
		List<DongHo> dongHo = query.list();
		return dongHo;
	}
	
	public List<ChiTietGioHang> getChiTietGioHangCookie(int id){
		Session session = factory.getCurrentSession();
		String hql = "FROM ChiTietGioHang ctgh where ctgh.gioHang.id = :id ";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		List<ChiTietGioHang> list = query.list();
		return list;
	}
	
	public List<ChiTietGioHang> getChiTietGioHangKh(int id){
		Session session = factory.getCurrentSession();
		String hql = "FROM ChiTietGioHang ctgh where ctgh.gioHang.khachHang.id = :id ";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		List<ChiTietGioHang> list = query.list();
		return list;
	}

	// Tim khach hang bang username
	@Transactional
	public int getKhachHangByUsername(String username) {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang kh WHERE kh.taikhoan.username = :username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);
		KhachHang kh = (KhachHang) query.uniqueResult();
		return kh.getId();
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
	
	@RequestMapping(value="/{idCart}.htm", method = RequestMethod.GET)
	public String showCTGH(@PathVariable("idCart") String idCart, HttpServletRequest request, Principal principal, ModelMap model) {
		List<ChiTietGioHang> gioHangFounded = new ArrayList<ChiTietGioHang>();
		Cookie cookie = null;
		  Cookie[] cookies = null;
	      cookies = request.getCookies();
	      List<ChiTietGioHang> ctgh = new ArrayList<ChiTietGioHang>();
	      
	    if(principal == null) {
	    	if( cookies != null ){
		         for (int i = 0; i < cookies.length; i++){
		            cookie = cookies[i];
		            if((cookie.getName( )).compareTo("idGioHang") == 0 ){
		            	id = Integer.parseInt(cookie.getValue());
		            	gioHangFounded = getChiTietGioHangCookie(id);
		            	for(ChiTietGioHang d : gioHangFounded) {
		            		DongHo dh = d.getDongHo();
		            		dh.setHinhAnh((dh.getHinhAnh().split(","))[0]);
		            		d.setDongHo(dh);
		            		System.out.println(dh.getHinhAnh());
		            		ctgh.add(d);
		            		
		            	}
		            	model.addAttribute("listDongHo", ctgh);
		            }
		         }
		     }
	    }
	    else { 
	    	String username = principal.getName();
	    	model.addAttribute("username", username);
	    	gioHangFounded = getChiTietGioHangKh(getKhachHangByUsername(principal.getName()));
	    	for(ChiTietGioHang d : gioHangFounded) {
        		DongHo dh = d.getDongHo();
        		dh.setHinhAnh((dh.getHinhAnh().split(","))[0]);
        		d.setDongHo(dh);
        		System.out.println(dh.getHinhAnh());
        		ctgh.add(d);
	    	model.addAttribute("listDongHo", ctgh);
	    	}
	    }
	    	
   	 
		return "cart/showCart";
	    }
	
	@RequestMapping(value="delete/{idCart}.htm", method = RequestMethod.GET)
	public String deleteCTGH(@PathVariable("idCart") String idCart, HttpServletRequest request, ModelMap model) {
		System.out.println("id chi tiet gio hang" + idCart);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		ChiTietGioHang s = getCTGioHangById(Integer.parseInt(idCart));
		try {
			session.delete(s);
			t.commit();
			model.addAttribute("mess", "Xóa thành công " + idCart);
		} catch(Exception e) {
			t.rollback();
			model.addAttribute("mess", "Xóa thất bại");
		} finally {
			session.close();
		}
		return "redirect:/cartDetail/" + idCart + ".htm";
	    }
	
	@RequestMapping(value="update/{idCart}.htm", method = RequestMethod.GET)
	public String updateCTGH(@PathVariable("idCart") String idCart, HttpServletRequest request, ModelMap model) {
		System.out.println("id chi tiet gio hang" + idCart);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		ChiTietGioHang s = getCTGioHangById(Integer.parseInt(idCart));
		int soluong = Integer.parseInt(request.getParameter("quantity" + s.getDongHo().getMaDH()));
		s.setSoLuong(soluong);
		try {
			session.update(s);
			t.commit();
			model.addAttribute("mess", "Cập nhật thành công " + idCart);
		} catch(Exception e) {
			t.rollback();
			model.addAttribute("mess", "Cập nhật thất bại");
		} finally {
			session.close();
		}
		return "redirect:/cartDetail/" + idCart + ".htm";
	    }
}
