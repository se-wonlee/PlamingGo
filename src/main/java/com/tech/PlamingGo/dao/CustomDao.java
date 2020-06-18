package com.tech.PlamingGo.dao;

import java.util.ArrayList;

import com.tech.PlamingGo.dto.CustomDto;

public interface CustomDao {
	
	public ArrayList<CustomDto>customer(int rowStart, int rowEnd, String searchKeyword, String string); //boarddao 에있는 list를 추상메소드로 지정 (ArrayList<BoardDto>는 리턴타입)	 
	public int selectBoardCount(String searchKeyword, String string);
	
	public void n_write(String no_id, String no_title,
			String no_content, String fName);
	
	public CustomDto n_contentview(String no_num);
	
	public void n_upHit(String strid);
	
	public void n_modify(String no_num, String no_id, 
			String no_title, String no_content);
	public void n_delete(String no_num);
	
	
//	public QnaDto c_replyview(String qna_num);
//	public void stepup(String qna_group, String qna_step);
//	public void c_reply(String qna_num, String qna_id,
//			String qna_title, String qna_content,String qna_group,
//			String qna_step, String qna_indent);
	

	
}
