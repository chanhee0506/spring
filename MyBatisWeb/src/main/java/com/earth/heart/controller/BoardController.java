package com.earth.heart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.earth.heart.domain.BoardDTO;
import com.earth.heart.domain.PageResolver;
import com.earth.heart.domain.SearchItem;
import com.earth.heart.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/list")
	public String list(SearchItem sc,
			           Model m,
			           HttpServletRequest request) {
		if( ! loginCheck(request))
			return "redirect:/login/login?toURL=" + request.getRequestURL();
		
//		if(page==null) page=1;	
//		if(pageSize==null) pageSize=10;
		
		try {
			int totalCnt = boardService.getSearchResultCnt(sc);
			m.addAttribute("totalCnt", totalCnt);
			
			PageResolver pageResolver = new PageResolver(totalCnt, sc);
			
			List<BoardDTO> list = boardService.getSearchSelectPage(sc);
			
			m.addAttribute("list", list);
			m.addAttribute("pr", pageResolver);
						
		} catch (Exception e) {e.printStackTrace();}
						
		return "boardList";			//로그인 한 상태, 게시물의 화면 목록으로 이동
	}
	
	@GetMapping("/read")
	public String read(Integer bno, SearchItem sc, Model m) {
		
		try {
			BoardDTO boardDTO = boardService.read(bno);
			//m.addAttribute("boardDTO", boardDTO);		//아래 코드와 동일함
			m.addAttribute(boardDTO);
			
		} catch (Exception e) {	
			e.printStackTrace();
			return "redirect:/board/list";
		}
		
		return"board";
	}

	private boolean loginCheck(HttpServletRequest request) {
		// 1. 세션을 얻어서 (false는 session이 없어도 새로 생성하지 않음, 반환값은 null)
		HttpSession session = request.getSession(false);
		// 2. 세션에 id가 있는지 확인, 있으면 true를 반환 
		return session != null && session.getAttribute("id") != null;
	}
}
