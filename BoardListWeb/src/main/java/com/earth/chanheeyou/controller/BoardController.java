package com.earth.chanheeyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.earth.chanheeyou.domain.BoardDTO;
import com.earth.chanheeyou.domain.PageResolver;
import com.earth.chanheeyou.domain.SearchItem;
import com.earth.chanheeyou.service.BoardService;



@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/list")
	public String list(SearchItem sc, Model m, HttpServletRequest request) {
		
		//로그인이 되어있는 상태인지 체크 안되어있으면 로그인페이지로 이동 
		if( ! loginCheck(request))
			return "redirect:/login/login?toURL=" + request.getRequestURL();
		
		try {
			int totalCnt = boardService.getSearchResultCnt(sc);				//데이터베이스에 있는 게시글의 총 갯수를 반환
			m.addAttribute("totalCnt", totalCnt);							// 모델에 저장
			
			PageResolver pageResolver = new PageResolver(totalCnt, sc);		//pageResolver생성  totalCnt와 searchItem을 파라미터로 넘김
			
			List<BoardDTO> list = boardService.getSearchSelectPage(sc);		// 게시글 리스트 생성
			
			m.addAttribute("list", list);									//모델에 게시글리스트와 pageResolver를 저장후 jsp에서 사용
			m.addAttribute("pr", pageResolver);
						
		} catch (Exception e) {e.printStackTrace();}						
		return "boardList";			
	}
	

	private boolean loginCheck(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		return session != null && session.getAttribute("id") != null;
	}
}
