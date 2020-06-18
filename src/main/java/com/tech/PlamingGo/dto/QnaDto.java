package com.tech.PlamingGo.dto;

import java.sql.Date;

public class QnaDto {
	private int qna_num;
	private String qna_id;
	private String qna_title;
	private String qna_content;
	private Date qna_date;
	private int qna_hits;
	private int qna_group;
	private int qna_step;
	private int qna_indent;
	private String fileSrc;
	
	public QnaDto() {
		// TODO Auto-generated constructor stub
	}
	public QnaDto(int qna_num, String qna_id,
			String qna_title, String qna_content, 
			Date qna_date, int qna_hits, int qna_group,
			int qna_step, int qna_indent) {
		this.qna_num = qna_num;
		this.qna_id = qna_id;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_date = qna_date;
		this.qna_hits = qna_hits;
		this.qna_group = qna_group;
		this.qna_step = qna_step;
		this.qna_indent = qna_indent;
	}
	public String getFileSrc() {
		return fileSrc;
	}

	public void setFileSrc(String fileSrc) {
		this.fileSrc = fileSrc;
	}
	public int getQna_num() {
		return qna_num;
	}
	public void setQna_num(int qna_num) {
		this.qna_num = qna_num;
	}
	public String getQna_id() {
		return qna_id;
	}
	public void setQna_id(String qna_id) {
		this.qna_id = qna_id;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public Date getQna_date() {
		return qna_date;
	}
	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}
	public int getQna_hits() {
		return qna_hits;
	}
	public void setQna_hits(int qna_hits) {
		this.qna_hits = qna_hits;
	}
	public int getQna_group() {
		return qna_group;
	}
	public void setQna_group(int qna_group) {
		this.qna_group = qna_group;
	}
	public int getQna_step() {
		return qna_step;
	}
	public void setQna_step(int qna_step) {
		this.qna_step = qna_step;
	}
	public int getQna_indent() {
		return qna_indent;
	}
	public void setQna_indent(int qna_indent) {
		this.qna_indent = qna_indent;
	}
}
