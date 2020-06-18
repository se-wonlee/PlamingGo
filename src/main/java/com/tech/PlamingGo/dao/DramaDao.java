package com.tech.PlamingGo.dao;

import java.util.ArrayList;

import com.tech.PlamingGo.dto.DramaDto;
import com.tech.PlamingGo.dto.DramaReviewDto;

public interface DramaDao {
	
	// 드라마 리스트 가져오기 (사용자 화면)
	public ArrayList<DramaDto> drama(int start, int end);
	
		// 드라마 정렬 - 1)최신작품 순 (사용자 화면)
		public ArrayList<DramaDto> order1(int start, int end);
			
		// 드라마 정렬 - 2)평균별점 순 (사용자 화면)
		public ArrayList<DramaDto> order2(int start, int end);
			
		// 드라마 정렬 - 3)조회수 순 (사용자 화면)
		public ArrayList<DramaDto> order3(int start, int end);
	
		
	// 상세페이지
	public DramaDto drama_detailview(String code); 	
	
	// 페이징 처리 中 전체 드라마 데이터 개수(totDrama)알아내기
	public int selectDramaCount();				
	
	// 조회수 증가
	public void upHit(String code);							
	
	
	
	// 관리자 드라마 정보 등록
	public void insert_page(String img, String title,
			String rating, String opendate, String nation,
			String age, String epi, String director, 
			String actor, String genre, String summary, String trailer);	
	
	// 상세보기의 내용을 그대로 가지고 가서 수정페이지로 전달
	public DramaDto modify(String code); 
	
	// 관리자 드라마 정보 수정
	public void modify_page(String code, String img, 
			String title, String rating, String opendate, String nation,
			String age, String epi, String director, 
			String actor, String genre, String summary, String trailer);

	// 관리자 드라마 정보 삭제
	public void delete(String code);
	
	
	
	// 검색창
	public ArrayList<DramaDto> search(int start, int end, String searchKeyword);
		
	// 검색창 + 페이징
	public int selectSearchCount(String searchKeyword);
	
	
	
	// 상세페이지 → 리뷰댓글 리스트 가져오기
	public ArrayList<DramaReviewDto> review(String code);
		
	// 리뷰 등록
	public void dreview_insert(String bno, String writer, String content, String regdate);
	
	// 리뷰 수정
	public void dreview_modify(String bno, String rno, String writer, String content, String regdate);
	
	// 리뷰 삭제
	public void dreview_delete(String rno);
	
	
	
}
