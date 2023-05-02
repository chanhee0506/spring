package com.earth.mapper;

import com.earth.model.ReviewDTO;

public interface ReviewMapper {
	/* 댓글 등록 */
	public int enrollReview(ReviewDTO dto);
	
	public Integer checkReview(ReviewDTO dto);
}
