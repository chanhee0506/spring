package com.earth.model;

public class MovieVO {
	/* 영화 번호 */
	private int movie_no;
	
	/* 영화 이름 */
	private String movie_name;
	
	/* 상영 시간 */
	private int movie_runtime;

	public int getMovie_no() {
		return movie_no;
	}

	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public int getMovie_runtime() {
		return movie_runtime;
	}

	public void setMovie_runtime(int movie_runtime) {
		this.movie_runtime = movie_runtime;
	}

	@Override
	public String toString() {
		return "MovieVO [movie_no=" + movie_no + ", movie_name=" + movie_name + ", movie_runtime=" + movie_runtime
				+ "]";
	}

	
}