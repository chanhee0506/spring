package com.earth.ottt;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpClientErrorException.BadRequest;

@Controller
public class MypageController {
	
	//메인 페이지 이동
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public void mypageGET() {
	
	}
	
}
