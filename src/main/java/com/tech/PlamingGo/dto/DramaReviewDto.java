package com.tech.PlamingGo.dto;

import java.util.Date;

public class DramaReviewDto {
	
	private int bno;			// 게시물 번호 = 드라마 코드
	private int rno;			// 댓글 번호
	private String writer;		// 작성자 = 사용자 아이디
	private Date regdate;		// 작성일
	private String content;		// 작성내용
	
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
