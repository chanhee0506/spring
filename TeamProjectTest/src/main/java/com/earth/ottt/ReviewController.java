package com.earth.ottt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.earth.model.ReviewDTO;
import com.earth.service.ReviewService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ReviewController {
	
	
	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public void reviewPageGET() {
	
	}
	
	@Autowired
	private ReviewService reviewService;
	
	/* 댓글 등록 */
	@PostMapping("/enroll")
	public void enrollReviewPOST(ReviewDTO dto) {
		reviewService.enrollReview(dto);
	}
}
