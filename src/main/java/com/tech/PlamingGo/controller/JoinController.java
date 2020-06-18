package com.tech.PlamingGo.controller;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tech.PlamingGo.dao.JoinDao;
import com.tech.PlamingGo.dto.JoinDto;

@Controller
public class JoinController {
	
	//SqlSession
	//@AutoWired : 각 상황에 타입에 맞는 loC컨테이너 안에 존재하는 Bean 자동 주입
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/join_terms")
	public String join_terms() {
		return "join_terms";
	}
	
	@RequestMapping("/join")
	public String join() {
		System.out.println("회원가입 뷰단");
		return "join";
	}
	
	@RequestMapping("/register")
	public String reg(Model model, HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.out.println("회원가입 기능실행");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_email= request.getParameter("user_email");
		String user_name1 = request.getParameter("user_name1");
		String user_name2 = request.getParameter("user_name2");
		String user_birth1= request.getParameter("user_birth1");
		String user_birth2= request.getParameter("user_birth2");
		String user_birth3= request.getParameter("user_birth3");
		String user_phone= request.getParameter("user_phone");
		int user_gender = Integer.parseInt(request.getParameter("user_gender"));
		String user_name = user_name1+user_name2;
		String user_birth = user_birth1+user_birth2+user_birth3;
		
	
		
//		String user_id = request.getParameter("user_id");
//		String user_pw = request.getParameter("user_pw");
//		String user_email = request.getParameter("user_email");
//		String user_name = request.getParameter("user_name");
//		String user_birth = request.getParameter("user_birth");
//		String user_phone = request.getParameter("user_phone");
//		int user_gender = Integer.parseInt(request.getParameter("user_gender"));
//	
		
		
		JoinDao dao = sqlSession.getMapper(JoinDao.class);
		dao.register(user_id, user_pw, user_email, user_name, user_birth, user_gender, user_phone);
	return "redirect:login_view";
		
	}
	
	@RequestMapping(value="/check", method = RequestMethod.GET)
	@ResponseBody
	public int check(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("ajax 를 타고 넘어옴");
		
		String user_id = request.getParameter("user_id");
		
		System.out.println("입력한 아이디 : "+user_id);
		String sql="SELECT USER_ID FROM PG_USER WHERE USER_ID =?";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//접속
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="scott";
		String pw="123456";
		Connection con=DriverManager.getConnection(url,user,pw);
		System.out.println("db에 접속했음");
		//실행
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, user_id);
		System.out.println("검증실행");
		ResultSet rs= pstmt.executeQuery();//select 실행
		System.out.println("실행됐음");
		int x=0;
		
	
		if(rs.next()) {
			String id = rs.getString("user_id");
			if (id!=null) {
				System.out.println("결과물 담기 :" +id);
				x=1;
				System.out.println("이미존재하는 아이디 x를 1값으로바꿈");
			}else {
				x=0;
			}
		}
		
				
		System.out.println("이프문 종료됨");
		System.out.println("최종 x :"+x);
		return x;
	}
	


}
