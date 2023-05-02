package com.earth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.earth.mapper.ReviewMapper;
import com.earth.model.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	ReviewMapper reviewMapper;
	
	/* 댓글등록 */
	@Override
	public int enrollReview(ReviewDTO dto) throws Exception {
		
		int result = reviewMapper.enrollReview(dto);
		System.out.println("ReviewServiceImpl");
		
		return result;
	}

	@Override
	public String checkReply(ReviewDTO dto) {
		Integer result = reviewMapper.checkReview(dto);
		
		if(result == null) {
			return "0";
		} else {
			return "1";
		}
	}

}
