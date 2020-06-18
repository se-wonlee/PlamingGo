package com.tech.PlamingGo.dao;

import java.util.ArrayList;

import com.tech.PlamingGo.dto.QnaDto;

public interface QnaDao {
	
	public String home();
	public ArrayList<QnaDto>c_list(int rowStart, int rowEnd, String searchKeyword, String string); //boarddao 에있는 list를 추상메소드로 지정 (ArrayList<BoardDto>는 리턴타입)	 
	public int selectBoardCount(String searchKeyword, String string);
	
	public void c_write(String qna_id, String qna_title,
			String qna_content, String fName);
	
	public QnaDto c_contentview(String qna_num);
	
	public void upHit(String strid);
	public void c_modify(String qna_num, String qna_id, 
			String qna_title, String qna_content);
	public void c_delete(String qna_num);
	public QnaDto c_replyview(String qna_num);
	public void stepup(String qna_group, String qna_step);
	public void c_reply(String qna_num, String qna_id,
			String qna_title, String qna_content,String qna_group,
			String qna_step, String qna_indent);
	

	
}
