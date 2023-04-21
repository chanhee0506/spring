package com.earth.fire;

	import java.io.UnsupportedEncodingException;
	import java.net.URLEncoder;

	import javax.servlet.http.Cookie;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PostMapping;

	@Controller
	public class LoginController {
		
		@GetMapping("/login")
		public String loginForm() {
			return "loginForm";
		}
		
		@PostMapping("/login")
		public String login(String id, String pwd, boolean rememberId, HttpServletRequest request, HttpServletResponse response ) throws UnsupportedEncodingException {
			System.out.println("id = " + id);
			System.out.println("pwd = " + pwd);
			System.out.println("rememberId = " + rememberId);
			
				//id와 pw를 확인 
			if(!loginCheck(id, pwd)) {
				//일치하지 않으면, loginForm으로 이동
				String msg = URLEncoder.encode("id 또는 pwd가 일치하지 않습니다.", "UTF-8");
				return "redirect:/login/login?msg="+msg;
			}
			
				
			
				//일치하면 로그인 후 화면(홈) 이동

			if(rememberId) {
				//쿠키를 생성후 응답헤더에 저장
				Cookie cookie = new Cookie("id", id);
				response.addCookie(cookie);
			}else {
				//쿠키를 삭제후 응답헤더에 저장
				Cookie cookie = new Cookie("id", id);
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}		
			//	 세션 객체 얻어오기
			HttpSession session = request.getSession();
			// 	 세션 객체에 id를 저장
			session.setAttribute("id", id);
			
			
			return "redirect:/";
		}

		private boolean loginCheck(String id, String pwd) {
			
			return "earth".equals(id) && "0629".equals(pwd);
		}
		@GetMapping("/logout")
		public String logout(HttpSession session) {
			//세션 종료
			session.invalidate();
			return "redirect:/";
		}
		
	}

