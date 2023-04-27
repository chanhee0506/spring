package com.earth.ottt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.earth.model.ReviewDTO;
import com.earth.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class ReviewController {
	
	
	@RequestMapping(value = "/review", method = {RequestMethod.GET,RequestMethod.POST})
	public void reviewPageGET() {
	
	}
	
	@Autowired
	private ReviewService reviewService;
	
	/* 댓글 등록 */
	@PostMapping("/enroll")
	public String enrollReviewPOST(ReviewDTO dto) throws Exception {
		System.out.println("컨트롤러 넘어감");
		reviewService.enrollReview(dto);
		return "redirect:/review";
	}
}
