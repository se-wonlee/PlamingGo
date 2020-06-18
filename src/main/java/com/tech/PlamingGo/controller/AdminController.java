package com.tech.PlamingGo.controller;

import java.awt.List;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.PlamingGo.dao.JoinDao;


@Controller
public class AdminController {

	@Autowired
	SqlSession sqlSession;
		
	
	@RequestMapping("/adminpage")
	public String adminpage() {
		
		return "adminpage";
	}
	
	@RequestMapping("/admin_manage")
	public String admin_manage(HttpServletRequest request, Model model) {
		System.out.println("admin_manage.jsp");
		int b=0;
		int s=0;
		int p=0;
		int m=0;
		int f=0;
		JoinDao jdao = sqlSession.getMapper(JoinDao.class);
		b=jdao.basiclist();
		s=jdao.standardlist();
		p=jdao.premiumlist();
		m=jdao.malelist();
		f=jdao.femalelist();
		model.addAttribute("basicCount", b);
		model.addAttribute("standardCount", s);
		model.addAttribute("premiumCount", p);
		model.addAttribute("maleCount", m);
		model.addAttribute("femaleCount", f);
		/* model.addAttribute("userlist", jdao.userlist()); */
		
		return "admin_manage";
	}
	
	
}