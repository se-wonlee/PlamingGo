package com.tech.PlamingGo.dto;

import java.sql.Timestamp;

public class ReviewDto {
	//리뷰 데이터 테이블
		private int Mreview_num;
		private int join_code;
		private String Mreview_writer;
		private String Mreview_content;
		private int Mreview_rating;
		private Timestamp Mreview_date;
		
		public ReviewDto(int mreview_num, int join_code, String mreview_writer, String mreview_content,
				int mreview_rating, Timestamp mreview_date) {
			super();
			Mreview_num = mreview_num;
			this.join_code = join_code;
			Mreview_writer = mreview_writer;
			Mreview_content = mreview_content;
			Mreview_rating = mreview_rating;
			Mreview_date = mreview_date;
		}
		public int getMreview_num() {
			return Mreview_num;
		}
		public void setMreview_num(int mreview_num) {
			Mreview_num = mreview_num;
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
		
		

}
