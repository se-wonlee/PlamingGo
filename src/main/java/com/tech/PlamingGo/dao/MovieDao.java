package com.tech.PlamingGo.dao;

import java.util.ArrayList;
import java.util.List;

import com.tech.PlamingGo.dto.MovieDto;
import com.tech.PlamingGo.dto.ReviewDto;


public interface MovieDao {
	
	public ArrayList<MovieDto> getmovielist(int rowStart, int rowEnd);//화면 리스트 가져오기
	/*
	 * public ArrayList<MovieDto> order1(int rowStart, int rowEnd);//화면 리스트 가져오기
	 * public ArrayList<MovieDto> order2(int rowStart, int rowEnd);//화면 리스트 가져오기
	 * public ArrayList<MovieDto> order3(int rowStart, int rowEnd);//화면 리스트 가져오기
	 */	
	public MovieDto movie_detail(String movie_code);//영화의 상세 페이지
	
	 public ArrayList<MovieDto> review_list(String movie_code); //리뷰의 리스트
	
	public void movie_modify_view(String movie_code, String movie_title
			, String movie_img, String movie_age, String movie_time
			, String movie_summary, String movie_director, String movie_actor
			, String movie_genre, String movie_nation, String movie_date, String movie_trailer);//관리자의 영화 정보 수정
	
	public void movie_delete(String movie_code);//관리자의 영화 삭제
	
	public void movie_insert_page(String movie_title, String movie_img, String movie_age,
			String movie_time, String movie_summary, String movie_director, String movie_actor, String movie_genre,
			String movie_nation, String movie_date, String movie_trailer);//관리자의 영화 집어넣기
	
	public int selectBoardCount(String searchKeyword, String selNum);

	public void review_insert(String join_code,String mreivew_writer,String mreview_content, String mreview_date);

	public void review_delete(String review_num);

	public int selectMovieCount();
	
	public int selectSearchCount(String searchKeyword, String selNum);
	public ArrayList<MovieDto> search(int rowStart, int rowEnd, String searchKeyword, String selNum);
	///////////////////////////////////////////////////////////////
	
	public MovieDto mrating_list(String movie_code);
	public void check_like(String check_code,String pg_user );

	
	
}
