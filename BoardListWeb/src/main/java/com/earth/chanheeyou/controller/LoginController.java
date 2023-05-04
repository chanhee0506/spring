package com.earth.chanheeyou.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.earth.chanheeyou.dao.UserDao;
import com.earth.chanheeyou.domain.User;

	
	@Controller
	@RequestMapping("/login")
	public class LoginController {
		
		@Autowired
		UserDao userDao;
		
		@GetMapping("/login")
		public String loginForm() {
			return "loginForm";
		}
		
		@PostMapping("/login")
		public String login(String id, String pwd, String toURL, boolean rememberId, HttpServletRequest request, HttpServletResponse response ) throws UnsupportedEncodingException {
			System.out.println("id = " + id);
			System.out.println("pwd = " + pwd);
			System.out.println("rememberId = " + rememberId);
			

			if(!loginCheck(id, pwd)) {
				String msg = URLEncoder.encode("id 또는 pwd가 일치하지 않습니다.", "UTF-8");
				return "redirect:/login/login?msg="+msg;
			}

			if(rememberId) {
				Cookie cookie = new Cookie("id", id);
				response.addCookie(cookie);
			}else {
				Cookie cookie = new Cookie("id", id);
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}		
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			
			toURL = toURL==null || toURL.equals("") ? "/" : toURL;
			
			return "redirect:"+ toURL;
		}

		private boolean loginCheck(String id, String pwd) {
			User user = userDao.selectUser(id);
			if (user == null) return false;
			return user.getPwd().equals(pwd);
		}
		
		@GetMapping("/logout")
		public String logout(HttpSession session) {
			session.invalidate();
			return "redirect:/";
		}
		
	}

