package com.earth.mapper;

import com.earth.model.ReviewDTO;

public interface ReviewMapper {
	/* 댓글 등록 */
	public void enrollReview(ReviewDTO dto);
}
