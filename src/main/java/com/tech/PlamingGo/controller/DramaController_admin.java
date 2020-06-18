package com.tech.PlamingGo.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.PlamingGo.dao.DramaDao;
import com.tech.PlamingGo.dto.DramaDto;
import com.tech.PlamingGo.page.SearchVo;

@Controller
public class DramaController_admin {

	@Autowired
	private SqlSession sqlSession;
	
		
	// 01.	드라마 등록하기 위한 전환
	@RequestMapping("drama/insert")
	public String insert() throws Exception {
		System.out.println("01. insert 지나감");
		return "drama/insert";
	}
	
	
	// 02.	드라마 등록 페이지
	@RequestMapping("drama/insert_page")
	public String insert_page(HttpServletRequest request, Model model) throws Exception{
		System.out.println("02. insert_page 지나감");
		// Mybatis
		// 파일 업로드 될 경로구하기
		String path = this.getClass().getResource("").getPath();
		path = path.substring(1, path.indexOf(".metadata"))+"/PlamingGo/src/main/webapp/resources/upload-drama";
		System.out.println(path);	// 파일이 저장된 경로 콘솔창으로 확인
		
		// 파일 첨부 (MultipartRequest 이용 → cos.jar 라이브러리 필요!)
		// request객체 + 저장 될 서버 경로 + 파일의 최대 크기 + 인코딩 방식 + 중복 파일 처리 방식
		MultipartRequest req =
				new MultipartRequest(request, path, 
						10*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
			
		// enctype을 'multipart/form-data'로 선언하고 submit한 데이터들은 
		// request 객체가 아닌 MultipartRequest객체인 req로 불러와야 함
		// 파라미타 값
		String img = req.getFilesystemName("img");	//**
		String title = req.getParameter("title");
		String rating = req.getParameter("rating"); 
		String opendate = req.getParameter("opendate");
		String nation = req.getParameter("nation");
		String age = req.getParameter("age");
		String epi = req.getParameter("epi");
		String director = req.getParameter("director");
		String actor = req.getParameter("actor");
		String genre = req.getParameter("genre");
		String summary = req.getParameter("summary");
		String trailer = req.getParameter("trailer"); // 트레일러 추가
		
		// img 파일의 이름이 null이면 공백처리
		if (img==null) {
			img = "";
		}
	
		// Mybatis 연결
		DramaDao dramadao = sqlSession.getMapper(DramaDao.class);
		dramadao.insert_page(img, title, rating, opendate, nation, age, epi, director, actor, genre, summary, trailer);
	
		return "redirect:../drama";
	}
	
	
	// 03.	상세뷰(drama_detailview) → 수정페이지(drama/modify)로 전환
	@RequestMapping("drama/modify") 
	public String modify(HttpServletRequest request, Model model) { 
		System.out.println("01. modify 지나감"); 
		// drama_detailview에서 hidden으로 보낸 파라미터 값 c를 request하여 가져옴 
		String code = request.getParameter("c");
		System.out.println("modify컨트롤러 code : "+code);
	  
		// code에 해당하는 detailview의 모든 정보 가져오기 
		DramaDao dao = sqlSession.getMapper(DramaDao.class); 
		DramaDto dto = dao.modify(code);
	  
	  	// dto를 model에 add하여 modify라는 이름으로 modify.jsp 뷰단에 넘겨주기
		model.addAttribute("modify", dto);
	  
		return "drama/modify";
	 }
	 
	
	// 04.	드라마 수정 페이지 (02. 등록 페이지와 동일)
	@RequestMapping(value = "drama/modify_page",method = RequestMethod.POST)
	public String modify_page(HttpServletRequest request, Model model) throws Exception {
		System.out.println("02. modify_page 지나감");
		
		// Mybatis
		// 파일 업로드 될 경로구하기
		String path = this.getClass().getResource("").getPath();
		path = path.substring(1, path.indexOf(".metadata"))+"/PlamingGo/src/main/webapp/resources/upload-drama";
		System.out.println(path);	// 파일이 저장된 경로 콘솔창으로 확인
				
		// 파일 첨부 (MultipartRequest 이용 → cos.jar 라이브러리 필요!)
		// request객체 + 저장 될 서버 경로 + 파일의 최대 크기 + 인코딩 방식 + 중복 파일 처리 방식
		MultipartRequest req =
				new MultipartRequest(request, path, 
						10*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
		
		
		// enctype을 'multipart/form-data'로 선언하고 submit한 데이터들은 
		// request 객체가 아닌 MultipartRequest객체인 req로 불러와야 함
		// modify.jsp 뷰단에서 보낸 name값=파라미타 값 가져오기
		
		String code = req.getParameter("c");	//** 오류가 계속 난 이유 : c 또한 req로 받아야하는데 request객체로 불러와서 null값
		System.out.println("modify_page컨트롤러 code : "+code);
		
		String img = req.getFilesystemName("img");	//**
		String title = req.getParameter("title");
		String rating = req.getParameter("rating"); 
		String opendate = req.getParameter("opendate");
		String nation = req.getParameter("nation");
		String age = req.getParameter("age");
		String epi = req.getParameter("epi");
		String director = req.getParameter("director");
		String actor = req.getParameter("actor");
		String genre = req.getParameter("genre");
		String summary = req.getParameter("summary");
		String trailer = req.getParameter("trailer"); // 트레일러 추가
				
		// img파일의 이름이 null이면 공백처리
			if (img==null) {
				img = "";
			}		
		
			
		// Mybatis 연결
		DramaDao dramadao = sqlSession.getMapper(DramaDao.class);
		dramadao.modify_page(code, img, title, rating, opendate, nation, age, epi, director, actor, genre, summary, trailer);
		
		
		return "redirect:../drama_detailview?c="+code;
	}
	
	
	// 05.	드라마 삭제 페이지
	@RequestMapping("drama/delete")
	public String delete(HttpServletRequest request, Model model) {
		String code = request.getParameter("c");
		
		DramaDao dao = sqlSession.getMapper(DramaDao.class);
		dao.delete(code);
		
		return "redirect:../drama";
	}
	

}
