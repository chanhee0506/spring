package com.earth.mapper;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.earth.model.ReviewDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ReviewMapperTests {

	@Autowired
	private ReviewMapper mapper;
	
	@Test
	public void replyEnrollTest() {
		
		String id = "test2";
		int content_no = 1;
		int rating = 4;
		String content = "댓글 테스트33";
		
		
		ReviewDTO dto = new ReviewDTO();
		dto.setRating(rating);
		dto.setMemberId(id);
		dto.setReview_content(content);
		dto.setContent_no(content_no);
		
		mapper.enrollReview(dto);
		
		
	}
}
