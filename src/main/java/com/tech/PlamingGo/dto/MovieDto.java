package com.tech.PlamingGo.dto;

import java.sql.Timestamp;
import java.util.Date;

public class MovieDto {
	private int movie_code;
	private String movie_title;
	private String movie_img;
	private String movie_age;
	private String movie_time;
	private String movie_summary;
	private String movie_director;
	private String movie_actor;
	private String movie_genre;
	private String movie_nation;
	private String movie_date;
	private String movie_trailer;
	private double movie_rating;
	
	private int review_num;
	private int join_code;
	private String Mreview_writer;
	private String Mreview_content;
	private int Mreview_rating;
	private Timestamp Mreview_date;
	
	private int check_code;
	private String pg_id;
	private int check_like;
	private int check_cnt;
	
	
	
	public String getMovie_trailer() {
		return movie_trailer;
	}



	public void setMovie_trailer(String movie_trailer) {
		this.movie_trailer = movie_trailer;
	}



	public int getCheck_code() {
		return check_code;
	}



	public void setCheck_code(int check_code) {
		this.check_code = check_code;
	}



	public String getPg_id() {
		return pg_id;
	}



	public void setPg_id(String pg_id) {
		this.pg_id = pg_id;
	}



	public int getCheck_like() {
		return check_like;
	}



	public void setCheck_like(int check_like) {
		this.check_like = check_like;
	}



	public int getCheck_cnt() {
		return check_cnt;
	}



	public void setCheck_cnt(int check_cnt) {
		this.check_cnt = check_cnt;
	}

	public int getReview_num() {
		return review_num;
	}



	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}



	public int getJoin_code() {
		return join_code;
	}



	public void setJoin_code(int join_code) {
		this.join_code = join_code;
	}



	public String getMreview_writer() {
		return Mreview_writer;
	}



	public void setMreview_writer(String mreview_writer) {
		Mreview_writer = mreview_writer;
	}



	public String getMreview_content() {
		return Mreview_content;
	}



	public void setMreview_content(String mreview_content) {
		Mreview_content = mreview_content;
	}



	public int getMreview_rating() {
		return Mreview_rating;
	}



	public void setMreview_rating(int mreview_rating) {
		Mreview_rating = mreview_rating;
	}



	public Timestamp getMreview_date() {
		return Mreview_date;
	}



	public void setMreview_date(Timestamp mreview_date) {
		Mreview_date = mreview_date;
	}

	



	public MovieDto() {
		// TODO Auto-generated constructor stub
	}

	public int getMovie_code() {
		return movie_code;
	}
	public void setMovie_code(int movie_code) {
		this.movie_code = movie_code;
	}
	public String getMovie_title() {
		return movie_title;
	}
	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}
	public String getMovie_img() {
		return movie_img;
	}
	public void setMovie_img(String movie_img) {
		this.movie_img = movie_img;
	}
	public String getMovie_age() {
		return movie_age;
	}
	public void setMovie_age(String movie_age) {
		this.movie_age = movie_age;
	}
	public String getMovie_time() {
		return movie_time;
	}
	public void setMovie_time(String movie_time) {
		this.movie_time = movie_time;
	}
	public String getMovie_summary() {
		return movie_summary;
	}
	public void setMovie_summary(String movie_summary) {
		this.movie_summary = movie_summary;
	}
	public String getMovie_director() {
		return movie_director;
	}
	public void setMovie_director(String movie_director) {
		this.movie_director = movie_director;
	}
	public String getMovie_actor() {
		return movie_actor;
	}
	public void setMovie_actor(String movie_actor) {
		this.movie_actor = movie_actor;
	}
	public String getMovie_genre() {
		return movie_genre;
	}
	public void setMovie_genre(String movie_genre) {
		this.movie_genre = movie_genre;
	}
	public String getMovie_nation() {
		return movie_nation;
	}
	public void setMovie_nation(String movie_nation) {
		this.movie_nation = movie_nation;
	}
	public String getMovie_date() {
		return movie_date;
	}
	public void setMovie_date(String movie_date) {
		this.movie_date = movie_date;
	}
	public double getMovie_rating() {
		return movie_rating;
	}
	public void setMovie_rating(double movie_rating) {
		this.movie_rating = movie_rating;
	}



	public MovieDto(int movie_code, String movie_title, String movie_img, String movie_age, String movie_time,
			String movie_summary, String movie_director, String movie_actor, String movie_genre, String movie_nation,
			String movie_date, String movie_trailer, double movie_rating, int review_num, int join_code,
			String mreview_writer, String mreview_content, int mreview_rating, Timestamp mreview_date, int check_code,
			String pg_id, int check_like, int check_cnt) {
		super();
		this.movie_code = movie_code;
		this.movie_title = movie_title;
		this.movie_img = movie_img;
		this.movie_age = movie_age;
		this.movie_time = movie_time;
		this.movie_summary = movie_summary;
		this.movie_director = movie_director;
		this.movie_actor = movie_actor;
		this.movie_genre = movie_genre;
		this.movie_nation = movie_nation;
		this.movie_date = movie_date;
		this.movie_trailer = movie_trailer;
		this.movie_rating = movie_rating;
		this.review_num = review_num;
		this.join_code = join_code;
		Mreview_writer = mreview_writer;
		Mreview_content = mreview_content;
		Mreview_rating = mreview_rating;
		Mreview_date = mreview_date;
		this.check_code = check_code;
		this.pg_id = pg_id;
		this.check_like = check_like;
		this.check_cnt = check_cnt;
	}



	
	
	
	
	
	
////////////////////////////////////////////////////////////////
	
	

	
	
	
}
