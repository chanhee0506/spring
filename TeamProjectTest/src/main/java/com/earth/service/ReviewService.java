package com.earth.service;

import com.earth.model.ReviewDTO;

public interface ReviewService {

	/* 댓글 등록 */
	public int enrollReview(ReviewDTO dto);
}
