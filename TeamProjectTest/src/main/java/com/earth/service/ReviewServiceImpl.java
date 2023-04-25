package com.earth.service;

import org.springframework.stereotype.Service;

import com.earth.mapper.ReviewMapper;
import com.earth.model.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService{

	private ReviewMapper reviewMapper;
	
	/* 댓글등록 */
	@Override
	public int enrollReview(ReviewDTO dto) {
		int result = reviewMapper.enrollReview(dto);
		
		return result;
	}

}
