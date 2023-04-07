package com.earth.sunny;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegisterContoller {
	
	@RequestMapping(value = "/register/add", method = {RequestMethod.GET, RequestMethod.POST})		
	public String register() {
		return "registerForm";				// 신규회원 가입 화면
	}
	
	@PostMapping("/register/save")		
	public String save(User user, Model m) throws UnsupportedEncodingException {
		//유효성 검사
		
		if(!isValid(user)) {
			String msg = URLEncoder.encode("id를 잘못입력했습니다.", "UTF-8");
			//return "redirect:/register/add?msg="+msg;
			return "forward:/register/add";
		}
		
		
		return "registerinfo";
	}

	private boolean isValid(User user) {
		
		return false;
	}
	
}
