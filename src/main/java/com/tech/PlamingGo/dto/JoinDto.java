package com.tech.PlamingGo.dto;

import java.util.Date;

public class JoinDto {

	private int user_code;
	private String user_id;
	private String user_pass;
	private String user_mail;
	private String user_name;
	private String user_birth;
	private int user_gender;
	private String user_phone;
	private Date user_regdate;
	private String user_level;
	private int user_status;
	
	//기본생성자
	public JoinDto() {
		// TODO Auto-generated constructor stub
	}
	
	public JoinDto(int user_code, String user_id, String user_pass,
			String user_mail, String user_name, String user_birth,
			int user_gender, String user_phone, Date user_regdate,
			String user_level, int user_status) {
		this.user_code = user_code;
		this.user_id = user_id;
		this.user_pass = user_pass;
		this.user_mail = user_mail;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_gender = user_gender;
		this.user_phone = user_phone;
		this.user_regdate = user_regdate;
		this.user_level = user_level;
		this.user_status = user_status;
	}

	public int getUser_code() {
		return user_code;
	}

	public void setUser_code(int user_code) {
		this.user_code = user_code;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pass() {
		return user_pass;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public String getUser_mail() {
		return user_mail;
	}

	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}

	public int getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(int user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public Date getUser_regdate() {
		return user_regdate;
	}

	public void setUser_regdate(Date user_regdate) {
		this.user_regdate = user_regdate;
	}
	
	public String getUser_level() {
		return user_level;
	}
	
	public void setUser_level(String user_level) {
		this.user_level = user_level;
	}
	
	public int getUser_status() {
		return user_status;
	}
	
	public void setUser_status(int user_status) {
		this.user_status = user_status;
	}
	
	
	
}

