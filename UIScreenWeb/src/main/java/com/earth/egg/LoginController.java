package com.earth.egg;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class LoginController {

	@RequestMapping(value = "/login")
	public String login() {
		return "loginForm";				//로그인 화면		
	}
	
	@RequestMapping(value = "/main")
	public String save(User user) {
		return "index";
	}
}
