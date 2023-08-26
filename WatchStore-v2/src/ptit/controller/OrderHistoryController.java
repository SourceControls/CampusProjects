package ptit.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptit.entity.ChiTietGioHang;
import ptit.entity.ChiTietPhieuDat;
import ptit.entity.DongHo;
import ptit.entity.GioHang;
import ptit.entity.KhachHang;


@Transactional
@Controller
public class OrderHistoryController {
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
	
	public List<ChiTietPhieuDat> getChiTietPhieuDatKh(int id){
		Session session = factory.getCurrentSession();
		String hql = "FROM ChiTietPhieuDat ctpd where ctpd.phieuDat.khachHang.id = :id ";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		List<ChiTietPhieuDat> list = query.list();
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
	
	@RequestMapping("TestHistory")
	public String test() {
		return "history/showHistory";
	}
	
	@RequestMapping(value="ShowHistory", method = RequestMethod.GET)
	public String showHistory(HttpServletRequest request, Principal principal, HttpServletResponse response,
			@CookieValue(value = "idGioHang", defaultValue = "") String idGioHangCookie, ModelMap model,
			HttpSession session) {
		
		System.out.println("alo");
		List<ChiTietPhieuDat> gioHangFounded = new ArrayList<ChiTietPhieuDat>();
		List<ChiTietPhieuDat> ctpd = new ArrayList<ChiTietPhieuDat>();
		
		Cookie cookie = null;
		  Cookie[] cookies = null;
	      cookies = request.getCookies();

	    if(principal == null) {
	    	if( cookies != null ){
//		         for (int i = 0; i < cookies.length; i++){
//		            cookie = cookies[i];
//		            if((cookie.getName( )).compareTo("idGioHang") == 0 ){
//		            	id = Integer.parseInt(cookie.getValue());
//		            	idCart = (cookie.getValue());
//		            	gioHangFounded = getChiTietGioHangCookie(id);
//		            	System.out.println("IdCartCookie: " + idCart + gioHangFounded.get(0).getGioHang().getId());
//		            	model.addAttribute("listDongHo", gioHangFounded);
//		            }
//		         }
		     } else {
		    	 System.out.println();
		     }
	    }
	    else { 
	    	String username = principal.getName();
	    	model.addAttribute("username", username);
	    	gioHangFounded = getChiTietPhieuDatKh(getKhachHangByUsername(principal.getName()));
	    	for(ChiTietPhieuDat d : gioHangFounded) {
        		DongHo dh = d.getDongHo();
        		dh.setHinhAnh((dh.getHinhAnh().split(","))[0]);
        		d.setDongHo(dh);
        		System.out.println(dh.getHinhAnh());
        		ctpd.add(d);
        		
        	}
	    	System.out.println("Phieu Dat: " + gioHangFounded);
	    	model.addAttribute("listDongHo1", ctpd);
	    	}
   	 
		return "history/showHistory";
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
