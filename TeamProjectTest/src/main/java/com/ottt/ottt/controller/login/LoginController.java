package com.ottt.ottt.controller.login;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ottt.ottt.dao.login.LoginUserDao;
import com.ottt.ottt.dto.UserDTO;


@Controller
public class LoginController {
	
	@Autowired
	LoginUserDao userDao;

	//로그인 페이지
	@GetMapping(value = "/login")
	public String login(String toURL) {
		System.out.println("==========login=============== toURL : " + toURL);
		
	return "/login/loginForm";		
	}
	
	@PostMapping("/login")
	public String login(String user_id, String user_pwd, String toURL, boolean rememberId,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

	    if (!loginCheck(user_id, user_pwd)) {
	        UserDTO user = userDao.select(user_id);
	        if (user != null && user.getBlock_yn()) {
	            String msg = URLEncoder.encode("정지된 회원입니다.", "utf-8");
	            return "redirect:/login?msg=" + msg;
	        }
	        String msg = URLEncoder.encode("id 또는 pwd가 일치하지 않습니다", "utf-8");
	        return "redirect:/login?msg=" + msg;
	    }

		if(rememberId) {
		Cookie cookie = new Cookie("id", user_id);
		response.addCookie(cookie);
		}
		else {
		Cookie cookie = new Cookie("id", user_id);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		}

		UserDTO userDTO = userDao.select(user_id);		
		HttpSession session = request.getSession();
		session.setAttribute("id", user_id);
		session.setAttribute("admin", userDTO.getAdmin());
		session.setAttribute("user_no", userDTO.getUser_no());
		session.setAttribute("user_nicknm", userDTO.getUser_nicknm());
		session.setAttribute("user_img", userDTO.getImage());
		
		System.out.println("==========login post=============== toURL : " + toURL);

		toURL = (toURL == null || toURL.equals("") || toURL.equals("null")) ? "/" : toURL;
				
		String encodedURL = URLEncoder.encode(toURL, "UTF-8")
				.replace("%2F", "/")
				.replace("%3A", ":")
				.replace("%3F", "?")
		        .replace("%3D", "=");
		
		System.out.println("==========encode=============== toURL : " + toURL);
		return "redirect:" + encodedURL;
	}
	
	private boolean loginCheck(String id, String pwd) {
	    UserDTO user = userDao.select(id);
	    if (user == null) return false;
	    if (user.getBlock_yn()) return false; 
	    return user.getUser_pwd().equals(pwd);
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
		
	}
	

}







