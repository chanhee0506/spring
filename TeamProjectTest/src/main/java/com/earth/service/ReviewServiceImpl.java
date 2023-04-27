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
	public void enrollReview(ReviewDTO dto) throws Exception {
		reviewMapper.enrollReview(dto);
		System.out.println("ReviewServiceImpl");
		
	}

}
