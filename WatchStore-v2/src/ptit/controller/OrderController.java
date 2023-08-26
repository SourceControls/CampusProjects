package ptit.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptit.entity.ChiTietGioHang;
import ptit.entity.GioHang;
import ptit.entity.KhachHang;
import ptit.entity.PhieuDat;

@Transactional
@Controller
@RequestMapping("order")
public class OrderController {
	@Autowired
	private SessionFactory factory;

	@Transactional
	public int getKhachHangByUsername(String username) {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang kh WHERE kh.taikhoan.username = :username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);
		KhachHang kh = (KhachHang) query.uniqueResult();
		return kh.getId();
	}
	
	@Transactional
	public ChiTietGioHang getCTGioHangById(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM ChiTietGioHang gh WHERE gh.id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		ChiTietGioHang gh = (ChiTietGioHang) query.uniqueResult();
		return gh;
	}
	
	@RequestMapping(value="/{idCart}.htm", method = RequestMethod.GET)
	public String showOrder(@PathVariable("idCart") String idCart, HttpServletRequest request, ModelMap model) {
		ChiTietGioHang s = getCTGioHangById(Integer.parseInt(idCart));
		model.addAttribute("DatHang", s);
		
		return "order/FormOrder";
	}
	
//	@RequestMapping(value="submit/{idCart}.htm", method = RequestMethod.GET)
//	public String submit(@PathVariable("idCart") String idCart, HttpServletRequest request, ModelMap model) {
//		Session session = factory.openSession();
//		Transaction t = session.beginTransaction();
//		Date date = new Date();
//		String name = request.getParameter("name");
//		String address = request.getParameter("address");
//		String sdt = request.getParameter("sdt");
//		String ngayDat = date.toString();
//		String trangThai = "Đã duyệt";
//		String maNv = "NV01";
//		PhieuDat pd = new PhieuDat();
//		pd.setFullName(name);
//		pd.setAddress(address);
//		pd.setNgayDat(date);
//		pd.setNhanVien(maNv);
//		
//		return "order/FormOrder";
//	}
}
