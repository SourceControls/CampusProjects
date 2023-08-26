package ptit.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping("login")
	public String loginMaping() {
		return "login/login";
	}

	// Dang xuat tai khoan quay tro lai view login
	@RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
	public String logoutSuccessfulPage(Model model) {
		return "redirect:/home.htm";
	}
	
	@RequestMapping(value = "login", params = "failed")
	public String loginFailed(Model model, HttpServletRequest request) {	
		model.addAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng");
		return "login/login";
	}
	
	@RequestMapping(value = "/j_spring_security_check", method = RequestMethod.POST)
	public String login(Model model, HttpServletRequest request) {
		return "login/login";
	}
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {
		return "404Page";
	}
}
