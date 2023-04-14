package com.earth.ottt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.earth.model.MemberVO;
import com.earth.service.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	@Autowired
	private MemberService memberservice;
	
	//회원가입 페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void loginGET() {
		
			
		
	}
	
	
	
	//회원가입
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception{

		// 회원가입 서비스 실행
		memberservice.memberJoin(member);
		
		return "redirect:/member/joincomplete";
		
	}
	//회원가입 완료 페이지 이동
	@RequestMapping(value = "/joincomplete", method = RequestMethod.GET)
	public void joincompleteGET() {
		
	}
	
	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void joinGET() {
		
	}
	
	// 아이디 중복 검사
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception{
		
		
		int result = memberservice.idCheck(memberId);
		
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}
		
		
	} // memberIdChkPOST() 종료	
	
    /* 로그인 */
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
        
//        System.out.println("login 메서드 진입");
//        System.out.println("전달된 데이터 : " + member);
    	
    	 HttpSession session = request.getSession();
    	 MemberVO lvo = memberservice.memberLogin(member);
    	 
 
    	 
         if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
             
             int result = 0;
             rttr.addFlashAttribute("result", result);
             return "redirect:/member/login";
             
         }
         
         session.setAttribute("member", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
         return "redirect:/main";
        
        
    }
    
    /* 회원가입완료페이지로그인 */
    @RequestMapping(value="/joincomplete", method=RequestMethod.POST)
    public String login2POST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
        
//        System.out.println("login 메서드 진입");
//        System.out.println("전달된 데이터 : " + member);
    	
    	 HttpSession session = request.getSession();
    	 MemberVO lvo = memberservice.memberLogin(member);
    	 
 
    	 
         if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
             
             int result = 0;
             rttr.addFlashAttribute("result", result);
             return "redirect:/member/joincomplete";
             
         }
         
         session.setAttribute("member", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
         return "redirect:/main";
        
        
    }
	
}
