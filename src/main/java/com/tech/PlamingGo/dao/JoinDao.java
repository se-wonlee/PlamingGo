package com.tech.PlamingGo.dao;


import java.util.ArrayList;

import com.tech.PlamingGo.dto.JoinDto;

public interface JoinDao {

	public ArrayList<JoinDto> userlist();
	
	public int basiclist();
	public int standardlist();
	public int premiumlist();
	public int malelist();
	public int femalelist();

	
	public JoinDto mypage(String user_id);
	
	public JoinDto findid(String user_name, String user_mail);
	
	public JoinDto findpw(String user_id, String user_name, String user_phone);
	
	public void change_pw(String user_id, String user_pass);

	int logstatus(int a);

	public void register(String user_id, String user_pw, String user_email, String user_name, String user_birth,
			int user_gender, String user_phone);

	public JoinDto login(String login_Id, String login_pw);

	public void modi(String modiid, String modiname, String modimail, String modiphone);

	
}



