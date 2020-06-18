package com.tech.PlamingGo.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.PlamingGo.dao.JoinDao;
import com.tech.PlamingGo.dto.JoinDto;

@Controller
public class MypageController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest request, Model model) {
		System.out.println("pass mypage");
		String user_id=(String)request.getSession().getAttribute("id");
		System.out.println(user_id);
		System.out.println("1");
		JoinDao jdao = sqlSession.getMapper(JoinDao.class);
		System.out.println("2");
		JoinDto jdto=jdao.mypage(user_id);//상세뷰
		System.out.println("3");
		model.addAttribute("mypage", jdto);
		System.out.println("4");
		
		
		
		return "mypage/mypage";
		
	}
	
	@RequestMapping("/mypage_out_terms")
	public String mypage_out_terms() {
		
		return "mypage/mypage_out_terms";
	}
	
	@RequestMapping("/mypage_out")
	public String mypage_out() {
		
		return "mypage/mypage_out";
	}
	
	@RequestMapping("/out_check")
	public String out_check(HttpServletRequest request, Model model) throws Exception {
		System.out.println("로그인 기능시작");	
		String login_id = request.getParameter("login_id");
		String login_pw = request.getParameter("login_pw");
		
		String sql1="SELECT USER_PASS FROM PG_USER WHERE USER_ID=?";
		String sql2="UPDATE PG_USER SET USER_STATUS = 1 WHERE USER_ID = ?";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//접속
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="scott";
		String pw="123456";
		Connection con=DriverManager.getConnection(url,user,pw);
		System.out.println("db에 접속했음");
		//실행
		PreparedStatement pstmt1=con.prepareStatement(sql1);
		pstmt1.setString(1, login_id);
		ResultSet rs= pstmt1.executeQuery();//select 실행
		System.out.println(login_id+","+login_pw);
		System.out.println("sql문으로 검증시작");
		String insertpass="";
		int x=-1;
		String msg="";
		if(rs.next()){
			insertpass=rs.getString("user_pass");
			System.out.println(insertpass);
			if(insertpass.equals(login_pw)) {
				System.out.println("아디비번 일치");
				x=1; 
				
			}else{//pass불일치
				System.out.println("비번 불일치");
				x=0;
			}
		}else{//아이디가 존재하지 않은상태
			System.out.println("존재하지않는 아이디");
			x=2;
		}

		
		if(x==1){
			PreparedStatement pstmt2 = con.prepareStatement(sql2);
			pstmt2.setString(1, login_id);
			pstmt2.executeQuery();
			request.getSession().setAttribute("id", login_id);
			System.out.println("탈퇴한아이디 : "+(String)request.getSession().getAttribute("id"));
			System.out.println("탈퇴성공 메세지");
			request.getSession().invalidate();
			return "mypage/out_complete";
		}else if(x==0){
			request.getSession().removeAttribute("log");
			request.getSession().setAttribute("log", x);
			System.out.println((Integer)request.getSession().getAttribute("log"));
			return "redirect:mypage_out";
		}else if(x==2){
			request.getSession().removeAttribute("log");
			request.getSession().setAttribute("log", x);
			System.out.println((Integer)request.getSession().getAttribute("log"));
			return "redirect:mypage_out";
		}else {
			return "redirect:mypage_out";
		}
		
		
		
	}
	
	public String out(HttpServletRequest request) {
		
		
		return "mypage/out_complete";
	}
	
	@RequestMapping("/mypage_modi")
	public String mypage_modi(HttpServletRequest request, Model model) {
		String myid = request.getParameter("myid");
		String mymail = request.getParameter("mymail");
		String myname = request.getParameter("myname");
		String myphone = request.getParameter("myphone");
		String mybirth = request.getParameter("mybirth");
		String myregdate = request.getParameter("myregdate");
		
		System.out.println(myid);
		System.out.println(mymail);
		System.out.println(myname);
		System.out.println(myphone);
		
		model.addAttribute("myid", myid);
		model.addAttribute("mymail", mymail);
		model.addAttribute("myname", myname);
		model.addAttribute("myphone", myphone);
		model.addAttribute("mybirth", mybirth);
		model.addAttribute("myregdate", myregdate);
		
		
		
		return "mypage/mypage_modi";
	}
	
	@RequestMapping("/my_modi")
	public String my_modi(HttpServletRequest request) {
		String modiname = request.getParameter("modiname");
		String modimail = request.getParameter("modimail");
		String modiphone = request.getParameter("modiphone");
		String modiid=request.getParameter("modiid");
		
		
		JoinDao jdao = sqlSession.getMapper(JoinDao.class);
		jdao.modi(modiid, modiname, modimail, modiphone);
		
		
		
		return"redirect:mypage";
	}
	
	@RequestMapping("/ticket_list")
	public String ticket_list() {
		return "ticket_list";
	}
	
	@RequestMapping("/ticket_modi")
	public String ticket_modi(HttpServletRequest request, Model model) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String nowid = (String)request.getSession().getAttribute("id");
		String insertid=request.getParameter("user_id");
		String insertpw=request.getParameter("user_pass");
		String level = request.getParameter("ticket-type");
		String msg = "";
		System.out.println("세션현재아이디 : "+nowid);
		System.out.println("입력한 아이디 : "+insertid);
		System.out.println("입력한 비번 : "+insertpw);
		System.out.println("선택한 티켓 : "+level);
		if (nowid.equals(insertid)) {
			System.out.println("아이디 일치");
			String sql1="SELECT USER_PASS FROM PG_USER WHERE USER_ID=?";
			String sql2="UPDATE PG_USER SET USER_LEVEL = ? WHERE USER_ID = ?";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//접속
			String url="jdbc:oracle:thin:@localhost:1521:orcl";
			String user="scott";
			String pw="123456";
			Connection con=DriverManager.getConnection(url,user,pw);
			System.out.println("db에 접속했음");
			//실행
			PreparedStatement pstmt1=con.prepareStatement(sql1);
			pstmt1.setString(1, nowid);
			ResultSet rs= pstmt1.executeQuery();//select 실행
			rs.next();
			String realpw = rs.getString("user_pass");
			
			if (realpw.equals(insertpw)) {
				System.out.println("비번일치");
				PreparedStatement pstmt2=con.prepareStatement(sql2);
				pstmt2.setString(1, level);
				pstmt2.setString(2, nowid);
				pstmt2.executeQuery();
				request.getSession().setAttribute("level", level);
				return "redirect:mypage";
			}else {
				System.out.println("비번불일치");
				msg ="비밀번호가 일치하지않습니다.";
				model.addAttribute("msg", msg);
				return "ticket_list";
			}
		
		}else {
			System.out.println("아이디 불일치 ");
			msg="아이디가 일치하지않습니다.";
			model.addAttribute("msg", msg);
			return "ticket_list";
		}
		
		
	}
	

}
