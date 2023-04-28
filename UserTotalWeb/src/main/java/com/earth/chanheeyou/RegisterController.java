package com.earth.chanheeyou;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class RegisterController {
	
	@Autowired
	UserDao userDao;
	
	final int FAIL = 0;

	@GetMapping("/register")
	public String registerForm() {
		return "registerForm";
	}
	
	@PostMapping("/register")
	public String save( User user, BindingResult result, Model m) throws UnsupportedEncodingException {
		
		System.out.println("user = " + user);
		System.out.println("result = " + result);
		
		// DB에 새회원 정보를 저장
		
		if (!result.hasErrors()) {
			int rowCnt = userDao.insertUser(user);
			if (rowCnt != FAIL) return "loginForm";
		}
				System.out.println("컨트롤러 넘어감");
		return "registerForm";
	}
}
