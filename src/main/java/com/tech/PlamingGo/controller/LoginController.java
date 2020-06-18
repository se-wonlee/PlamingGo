package com.tech.PlamingGo.controller;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.PlamingGo.dao.JoinDao;
import com.tech.PlamingGo.dao.LoginStatus;
import com.tech.PlamingGo.dto.JoinDto;

@Controller
public class LoginController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/home")
	public String home(HttpServletRequest request) {
		System.out.println("홈뷰단");
		
		
		request.getSession().removeAttribute("log");

		
		return "home";
	}
	
	
	@RequestMapping("/login_view")
	public String login_view() {
		System.out.println("로그인 뷰단");
		return "login_view";
	}
	
//	@RequestMapping("/login")
//	public String login(HttpServletRequest request, Model model) {
//		
//		System.out.println("로그인 기능 시작");
//		String login_id = request.getParameter("login_id");
//		String login_pw = request.getParameter("login_pw");
//		System.out.println("로그인 뷰 에서 받아온 아이디와 비번");
//		System.out.println("id : "+login_id);
//		System.out.println("pw : "+login_pw);
//		
//		request.getSession().setAttribute("id", login_id);
//		System.out.println((String)request.getSession().getAttribute("id"));
//		
//		return "redirect:home";
//		
//	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, Model model) {
		request.getSession().invalidate();
		System.out.println((String)request.getSession().getAttribute("id"));
		
		return "redirect:home";
		
	}
	

	
	
		@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) throws Exception {
		System.out.println("로그인 기능시작");	
		String login_id = request.getParameter("login_id");
		String login_pw = request.getParameter("login_pw");
		

		String sql="SELECT USER_PASS, USER_CODE, USER_LEVEL, USER_STATUS FROM PG_USER WHERE USER_ID=?";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//접속
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="scott";
		String pw="123456";
		Connection con=DriverManager.getConnection(url,user,pw);
		System.out.println("db에 접속했음");
		//실행
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, login_id);
		ResultSet rs= pstmt.executeQuery();//select 실행
		System.out.println(login_id+","+login_pw);
		System.out.println("sql문으로 검증시작");
		String insertpass="";
		String level="";
		int status=-1;
		int code=-1;
		int x=-1;
		String msg="";
		if(rs.next()){
			insertpass=rs.getString("user_pass");
			status=rs.getInt("user_status");
			code = rs.getInt("user_code");
			level = rs.getString("user_level");
			System.out.println(insertpass);
			System.out.println("로그인된 계정의 코드 "+code);
			if (status==1) {
				System.out.println("존재하지않는 아이디");
				x=2;
			}else if (insertpass.equals(login_pw) && status!=1) {
				System.out.println("아디비번 일치");
				x=1; 	
			}else{
				System.out.println("비번 불일치");
				x=0;
			}
		}else{//아이디가 존재하지 않은상태
			System.out.println("존재하지않는 아이디");
			x=2;
		}

		if(x==1){
			request.getSession().setAttribute("id", login_id);
			request.getSession().setAttribute("code", code);
			request.getSession().setAttribute("level", level);
			System.out.println("로그인된 아이디 : "+(String)request.getSession().getAttribute("id"));
			System.out.println("로그인성공 home으로 돌아감");
			return "redirect:home";
		}else if(x==0){
			request.getSession().removeAttribute("log");
			request.getSession().setAttribute("log", x);
			System.out.println((Integer)request.getSession().getAttribute("log"));
			return "redirect:login_view";
		}else if(x==2){
			request.getSession().removeAttribute("log");
			request.getSession().setAttribute("log", x);
			System.out.println((Integer)request.getSession().getAttribute("log"));
			return "login_view";
		}else {
			return "login_view";
		}
		
	}
		
		@RequestMapping("/find_info_view")
		public String find_info_view() {
			return "find_info_view";
		}
		
		@RequestMapping("/find_id")
		public String find_id(HttpServletRequest request, Model model) throws Exception {
			request.setCharacterEncoding("UTF-8");
			String insertname = request.getParameter("find_name");
			String insertmail = request.getParameter("find_mail");
			
			JoinDao jdao = sqlSession.getMapper(JoinDao.class);
			JoinDto jdto = jdao.findid(insertname, insertmail);
			System.out.println(jdto);
			
			if (jdto!=null) {
				model.addAttribute("rs", jdto);
				
				return "find_rsid";
			}else if (jdto==null){
				
				String msg="입력하신 정보로 가입된 아이디가 없습니다.";
				model.addAttribute("msgid", msg);
				
				return "find_info_view";
			}
			return "find_info_view";
			
			
		}
		
		@RequestMapping("/find_rsid")
		public String find_rsid() {
			
			
			
			return "find_rsid";
		}
		
		
		@RequestMapping("/changepw_view")
		public String changepw_view(HttpServletRequest request, Model model) throws Exception {
			request.setCharacterEncoding("UTF-8");
			String insertid = request.getParameter("find_id");
			String insertname = request.getParameter("find_name");
			String insertphone = request.getParameter("find_phone");
			
			System.out.println(insertid+insertname+insertphone);
			
			JoinDao jdao = sqlSession.getMapper(JoinDao.class);
			JoinDto jdto = jdao.findpw(insertid, insertname, insertphone);
			System.out.println(jdto);
			
			if (jdto!=null) {
				model.addAttribute("rs", jdto);
				
				return "changepw_view";
			}else {
				String msg="입력하신 정보로 가입된 정보가 없습니다.";
				model.addAttribute("msgpw", msg);
				
				return "find_info_view";
			}
			
			
		}
		@RequestMapping("/change_pw")
		public String change_pw(HttpServletRequest request, Model model) throws Exception {
			request.setCharacterEncoding("UTF-8");
			String user_id = request.getParameter("user_id");
			String chg_pw = request.getParameter("chg_pw");
			
			System.out.println(user_id+chg_pw);
			
			JoinDao jdao = sqlSession.getMapper(JoinDao.class);
			jdao.change_pw(user_id, chg_pw);
			
			
			return "change_complete";
			
			
		}
		
		@RequestMapping("/change_complte")
		public String complete() {
			
			return "change_complete";
		}
		
		
		
		
		
}
	


	


