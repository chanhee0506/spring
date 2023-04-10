package com.earth.ottt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earth.model.MemberVO;
import com.earth.service.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberservice;
	
	//회원가입 페이지 이동
	@RequestMapping(value = "/login/join", method = RequestMethod.GET)
	public void loginGET() {
		
		
		
	}
	
	//회원가입
	@RequestMapping(value="/login/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception{

		// 회원가입 서비스 실행
		memberservice.memberJoin(member);
		
		return "redirect:/otttmain";
		
	}
	
	//로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void joinGET() {
		
	}
	
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)	
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception{
		int result = memberservice.idCheck(memberId);
		
		
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}
	
	}	
		
	
}
