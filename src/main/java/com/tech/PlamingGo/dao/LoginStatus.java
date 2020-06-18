package com.tech.PlamingGo.dao;

import java.util.ArrayList;

import com.tech.PlamingGo.dto.JoinDto;

public class LoginStatus implements JoinDao {

	@Override
	public int logstatus(int b) {
		int x = b;
		return x;
	}

	@Override
	public void register(String user_id, String user_pw, String user_email, String user_name, String user_birth,
			int user_gender, String user_phone) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public JoinDto login(String login_Id, String login_pw) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JoinDto mypage(String user_code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modi(String modiid,String modiname, String modimail, String modiphone) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<JoinDto> userlist() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JoinDto findid(String user_id, String user_mail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JoinDto findpw(String user_id, String user_name, String user_mail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void change_pw(String user_id, String user_pass) {
		// TODO Auto-generated method stub
		return;
	}

	@Override
	public int basiclist() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int standardlist() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int premiumlist() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int malelist() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int femalelist() {
		// TODO Auto-generated method stub
		return 0;
	}

	
}