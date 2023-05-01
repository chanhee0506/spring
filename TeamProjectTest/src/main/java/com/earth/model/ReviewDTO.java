package com.earth.model;

import java.util.Date;

public class ReviewDTO {

	private int 	review_no;
	private double rating;
	private String 	review_content;
	private Date 	review_creat_dt;
	private int 	content_no;
	private String 	memberId;
	
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Date getReview_creat_dt() {
		return review_creat_dt;
	}
	public void setReview_creat_dt(Date review_creat_dt) {
		this.review_creat_dt = review_creat_dt;
	}
	public int getContent_no() {
		return content_no;
	}
	public void setContent_no(int content_no) {
		this.content_no = content_no;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "ReviewDTO [review_no=" + review_no + ", rating=" + rating + ", review_content=" + review_content
				+ ", review_creat_dt=" + review_creat_dt + ", content_no=" + content_no + ", memberId=" + memberId
				+ "]";
	}
	
}
