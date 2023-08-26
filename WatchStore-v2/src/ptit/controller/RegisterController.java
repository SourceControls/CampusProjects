package ptit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptit.entity.GioHang;
import ptit.entity.TaiKhoan;
import ptit.entity.KhachHang;
import ptit.entity.Role;

@Controller
@Transactional
public class RegisterController {
	@Autowired
	private SessionFactory factory;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Autowired
	PasswordEncoder passwordEncoder;

	private int idKhachHang;

	// Tim tai khoan theo username
	@Transactional
	public TaiKhoan getTaiKhoanByUsername(String username) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TaiKhoan taiKhoan WHERE taiKhoan.username = :username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);
		TaiKhoan taiKhoan = (TaiKhoan) query.uniqueResult();
		return taiKhoan;
	}

	// Tim ROLE
	@Transactional
	public Role getRole(String role) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Role role WHERE role.role = :role";
		Query query = session.createQuery(hql);
		query.setParameter("role", role);
		Role r = (Role) query.uniqueResult();
		return r;
	}

	// Tim khach hang theo id
	@Transactional
	public KhachHang getKHById(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM KhachHang kh WHERE kh.id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		KhachHang kh = (KhachHang) query.uniqueResult();
		return kh;
	}

	@RequestMapping("register")
	public String main() {
		return "register/register";
	}

	@RequestMapping("register/confirm")
	public String confirmFn(HttpServletRequest request, ModelMap model) {
		String name = request.getParameter("name");
		String gender = request.getParameter("gender").trim();
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String message = "";

		if (name.equals("") || phone.equals("") || email.equals("") || username.equals("") || password.equals("")) {
			message = "Hãy cung cấp đủ thông tin !";
		} else if (this.getTaiKhoanByUsername(username) != null) {
			message = "Username này đã tồn tại !";
		}
		// Khi hop le tat ca input
		else {
			KhachHang khachHang = new KhachHang(name, gender, phone, email);
			int errorCode = this.insertKhachHang(khachHang);
			if (errorCode != 1) {
				message = "Thêm khách hàng thất bại";
				model.addAttribute("message", message);
				return "register/register";
			}
			KhachHang khachHangFounded = this.getKHById(this.idKhachHang);
			String encryptedPassword = passwordEncoder.encode(password);
			Role role = this.getRole("ROLE_USER");
			TaiKhoan taikhoan = new TaiKhoan(username, encryptedPassword, role, true, khachHangFounded);
			// Them vao db
			errorCode = this.insertTaiKhoan(taikhoan);
			if (errorCode != 1) {
				message = "Thêm tài khoản thất bại";
				model.addAttribute("message", message);
				return "register/register";
			}
			// Tao gio hang
			GioHang gioHang = new GioHang(khachHangFounded);
			errorCode = this.insertCart(gioHang);
			if (errorCode != 1) {
				message = "Thêm giỏ hàng thất bại";
				model.addAttribute("message", message);
				return "register/register";
			}
			return "login/login";
		}

		model.addAttribute("message", message);
		return "register/register";
	}

	// *INSERT/DELETE/UPDATE

	// Them khach hang
	@Transactional
	public Integer insertKhachHang(KhachHang kh) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			this.idKhachHang = (int) session.save(kh);
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

	// Them tai khoan
	@Transactional
	public Integer insertTaiKhoan(TaiKhoan tk) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(tk);
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

	// Them moi gio hang
	@Transactional
	public Integer insertCart(GioHang gh) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(gh);
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
