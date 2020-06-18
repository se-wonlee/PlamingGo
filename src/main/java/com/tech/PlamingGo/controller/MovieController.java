package com.tech.PlamingGo.controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.PlamingGo.dao.MovieDao;
import com.tech.PlamingGo.dto.MovieDto;
import com.tech.PlamingGo.dto.ReviewDto;
import com.tech.PlamingGo.page.MSearchVo;
import com.tech.PlamingGo.vopage.MVPageVo;

@Controller
public class MovieController {

	// SqlSession
	// @AutoWired : 각 상황의 타입에 맞는 loC컨테이너 안에 존재하는 Bean 자동 주입
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/movie")
	public String getmovielist(Model model, HttpServletRequest request, MVPageVo searchVo) {
		System.out.println("Get movielist");
		// search
		String movie_title = "";
		String movie_actor = "";
		String movie_director = "";

		String[] fieldArray = request.getParameterValues("searchType");
		if (fieldArray != null) {
			for (String val : fieldArray) {
				if (val.equals("movie_title")) {
					model.addAttribute("movie_title", "true");
					movie_title = "movie_title";

				} else if (val.equals("movie_actor")) {
					model.addAttribute("movie_actor", "true");
					movie_actor = "movie_actor";

				} else if (val.equals("movie_director")) {
					model.addAttribute("movie_director", "true");
					movie_director = "movie_director";
				}
			}
		}

		// ㄴ. 검색창 쿼리
		String searchKeyword = request.getParameter("searchKeyword");
		if (searchKeyword == null) {
			searchKeyword = "";
		}

		MovieDao dao = sqlSession.getMapper(MovieDao.class);

		model.addAttribute("searchKeyword", searchKeyword);

		String strPage = request.getParameter("page");
		if (strPage == null) {
			strPage = "1";
		}

		// PageVo에서 page는 Integer타입이므로 strPage의 타입을 String → Integer 타입으로 변환
		int page = Integer.parseInt(strPage);

		// Integer 타입으로 변환한 page를 담아와서 searchVo의 현재페이지로 set
		searchVo.setPage(page);

		// db 속 드라마 데이터 전체 개수
		int totMovie = dao.selectMovieCount();

		// PageVo의 메소드 pageCalculate에 totDrama를 가져가게 되고 알아서 페이지 수가 계산됨
		// SearchVo는 PageVo를 상속받으므로 PageVo의 메소드 사용 가능.
		searchVo.pageCalculate(totMovie);

		int rowStart = searchVo.getRowStart(); // 시작 행 가져오기 (..1 페이지의 시작 번호)
		int rowEnd = searchVo.getRowEnd(); // 종료 행 가져오기 (..1 페이지의 종료 번호)

		// 드라마 페이지 화면에 띄우기
		model.addAttribute("getmovielist", dao.getmovielist(rowStart, rowEnd)); // pg_drama테이블 데이터
		model.addAttribute("tot_movie_cnt", totMovie); // 드라마 전체 데이터 수
		model.addAttribute("pageVo", searchVo);

		// 모델에 담아보내는 이름이 메소드 이름과 일치하는지 꼭 꼭 확인하기
		System.out.println(totMovie + "!~!~!~");
		return "movie";

	}

	@RequestMapping("/moviedetail")
	public String moviedetail(Model model, HttpServletRequest request) {
		System.out.println("moviedetail!!");
		String movie_code = request.getParameter("movie_code");// list페이지에서 보내준 코드 값을 가져와야 내용 출력이 됨

		MovieDao Mdao = sqlSession.getMapper(MovieDao.class);
		MovieDto Mdto = Mdao.movie_detail(movie_code);
		model.addAttribute("movie_detail", Mdto);
		System.out.println(movie_code + "=MOVIE code!!");

		ArrayList<MovieDto> review_list = Mdao.review_list(movie_code);
		model.addAttribute("review_list", review_list);
		System.out.println(review_list + "@@@@@review");

		
		return "moviedetail";

	}

	@RequestMapping("/movie_insert")
	public String movie_insert(HttpServletRequest request, Model model) {
		System.out.println("insert()!");

		return "movie_insert";

	}

	@RequestMapping("/movie_insert_page")
	public String movie_insert_page(HttpServletRequest request, Model model) throws Exception {
		// 파일 업로드될 경로(metadata 사용)
		String path = this.getClass().getResource("").getPath();
		path = path.substring(1, path.indexOf(".metadata"))
				+ "/PlamingGo_Hyewon1-3/src/main/webapp/resources/upload_movie";
		System.out.println(path + "!!!!!!");

		// MultipartRequest로 파일 올리기
		// request객체 + 저장 될 서버 경로+ 파일의 최대크기 +인코딩(영어 한글)방식+ 중복 파일 처리 방식
		MultipartRequest req = new MultipartRequest(request, path, 10 * 1024 * 1024, "UTF-8",
				new DefaultFileRenamePolicy());

		// enctype을 "multipart/form-data"로 선언하고 submit한 데이터들은 request객체가 아닌
		// MultipartRequest객체로 불러와야 한다.
		String movie_title = req.getParameter("movie_title");
		String movie_img = req.getFilesystemName("movie_img");// getFilesystemName로 가져오기
		String movie_age = req.getParameter("movie_age");
		String movie_time = req.getParameter("movie_time");
		String movie_summary = req.getParameter("movie_summary");
		String movie_director = req.getParameter("movie_director");
		String movie_actor = req.getParameter("movie_actor");
		String movie_genre = req.getParameter("movie_genre");
		String movie_nation = req.getParameter("movie_nation");
		String movie_date = req.getParameter("movie_date");
		String movie_trailer = req.getParameter("movie_trailer");

		/*
		 * if (movie_img==null) { movie_img=""; }
		 */

		MovieDao dao = sqlSession.getMapper(MovieDao.class);

		dao.movie_insert_page(movie_title, movie_img, movie_age, movie_time, movie_summary, movie_director, movie_actor,
				movie_genre, movie_nation, movie_date,movie_trailer);

		System.out.println("업로드 패스 " + path);

		return "redirect:movie";

	}

	@RequestMapping("/movie_modify")
	public String movie_modify(HttpServletRequest request, Model model) {

		String movie_code = request.getParameter("movie_code");

		MovieDao Mdao = sqlSession.getMapper(MovieDao.class);
		MovieDto Mdto = Mdao.movie_detail(movie_code);

		model.addAttribute("movie_modify", Mdto);// model로 moviedetail의 코드 값을 담아서 movie_modify로 이름 지어준 후 modify쪽에
		// 데이터에서 불러올 값과 코드(movie_modify)를 넣어주면 수정화면에서 해당 데이터를 불러올 수 있다

		System.out.println("modify " + movie_code + " 페이지로 이동중()!");

		return "movie_modify";

	}

	@RequestMapping("/movie_modify_view") // 영화쪽 수정
	public String movie_modify_view(HttpServletRequest request, Model model) throws Exception {

		String path = this.getClass().getResource("").getPath();
		path = path.substring(1, path.indexOf(".metadata"))
				+ "/PlamingGo_Hyewon1-3/src/main/webapp/resources/upload_movie";
		System.out.println(path + "!!!!!!");

		MultipartRequest req = new MultipartRequest(request, path, 10 * 1024 * 1024, "UTF-8",
				new DefaultFileRenamePolicy());

		System.out.println("pass modify_view()");

		String movie_code = req.getParameter("movie_code");
		String movie_title = req.getParameter("movie_title");
		String movie_img = req.getFilesystemName("movie_img");
		String movie_age = req.getParameter("movie_age");
		String movie_time = req.getParameter("movie_time");
		String movie_summary = req.getParameter("movie_summary");
		String movie_director = req.getParameter("movie_director");
		String movie_actor = req.getParameter("movie_actor");
		String movie_genre = req.getParameter("movie_genre");
		String movie_nation = req.getParameter("movie_nation");
		String movie_date = req.getParameter("movie_date");
		String movie_trailer = req.getParameter("movie_trailer");
		MovieDao Mdao = sqlSession.getMapper(MovieDao.class);

		Mdao.movie_modify_view(movie_code, movie_title, movie_img, movie_age, movie_time, movie_summary, movie_director,
				movie_actor, movie_genre, movie_nation, movie_date,movie_trailer);

		System.out.println(movie_code + movie_title + movie_age);

		return "redirect:movie";

	}

	@RequestMapping("/movie_delete") // 영화쪽 삭제
	public String movie_delete(HttpServletRequest request, Model model) {
		String movie_code = request.getParameter("movie_code");

		MovieDao dao = sqlSession.getMapper(MovieDao.class);
		dao.movie_delete(movie_code);

		return "redirect:movie";

	}
//////////////////리뷰 insert, modify, delete, rating controller///////////////////////

	@RequestMapping("/review_insert")
	public String review_insert(HttpServletRequest request, Model model) {
		System.out.println("review-insert()!");

		String join_code = request.getParameter("join_code");
		String mreivew_writer = request.getParameter("mreview_writer");
		String mreview_content = request.getParameter("mreview_content");
		String mreview_date = request.getParameter("mreview_date");

		MovieDao Mdao = sqlSession.getMapper(MovieDao.class);// mapper에 있는 데이터 가져오기

		Mdao.review_insert(join_code, mreivew_writer, mreview_content, mreview_date);
		model.addAttribute("movie_code", join_code);// join_code보낸거 받기//이름이 movie_code인지는 디테일단에서 확인

		System.out.println(join_code + "~~");

		return "redirect:moviedetail";

	}

	@RequestMapping("/review_delete")
	public String review_delete(HttpServletRequest request, Model model) {

		String review_num = request.getParameter("review_num");
		String join_code = request.getParameter("join_code");

		MovieDao dao = sqlSession.getMapper(MovieDao.class);
		dao.review_delete(review_num);
		model.addAttribute("movie_code", join_code);

		return "redirect:moviedetail";

	}

//like구현
	@RequestMapping("/check_like")
	public String check_like(HttpServletRequest request, Model model) {
		// 코드랑 업데이트 해줄 값 받아오기
		String check_code = request.getParameter("check_code");
		String check_cnt = request.getParameter("check_cnt");
		String pg_user = request.getParameter("pg_user");

		MovieDao Mdao = sqlSession.getMapper(MovieDao.class);
		model.addAttribute("movie_code", check_code);

		return "redirect:moviedetail";

	}

	@RequestMapping("/check_delete")
	public String check_delete(HttpServletRequest request, Model model) {
		// 코드만 받기

		return "redirect:moviedetail";

	}
	
	// 03. 검색창
		@RequestMapping(value = "Msearch", method = RequestMethod.GET)
		public String Msearch(HttpServletRequest request, Model model, MSearchVo searchVo) {
			//	검색창 타입
			String movie_title = "";
			String movie_actor = "";
			String movie_director = "";
			
			String[] fieldArray=request.getParameterValues("searchType");
			
			//	검색창 필드가 빈 값이 아니라면
			//	검색창 필드가 title이라면 모델요소에 title을 담고 String title로 받아라.
			if (fieldArray!=null) {
				for (String val : fieldArray) {
					if (val.equals("movie_title")) {
						model.addAttribute("movie_title", "true");
						movie_title="movie_title";
						
					}else if (val.equals("movie_actor")) {
						model.addAttribute("movie_actor", "true");
						movie_actor="movie_actor";
						
					}else if (val.equals("movie_director")) {
						model.addAttribute("movie_director", "true");
						movie_director="movie_director";
					}
				}
			}
			
			// 쿼리 (키워드)
			String searchKeyword=request.getParameter("searchKeyword");
			if (searchKeyword==null) {
				searchKeyword="";
			}
			
			// 	Mybatis 로 Database 연결 
			// 	인터페이스 DramaDao와 DramaDao.xml이 연관이 있음
			MovieDao Mdao=sqlSession.getMapper(MovieDao.class);
			

			
			//	페이징 처리 + 검색 결과 개수
			int total = 0;
			
			
			  if (movie_title.equals("movie_title")) { 
				  total = Mdao.selectSearchCount(searchKeyword, "1"); // 제목 = 1번
			  
			  }else if (movie_actor.equals("movie_actor")) { 
				  total = Mdao.selectSearchCount(searchKeyword, "2"); // 배우 = 2번
			  
			  }else if (movie_director.equals("movie_director")) { 
				  total = Mdao.selectSearchCount(searchKeyword, "3"); // 감독 = 3번
			  
			  }
			 

			String strPage = request.getParameter("page");
			
			System.out.println("검색 키워드 : "+searchKeyword);
			model.addAttribute("searchKeyword", searchKeyword);

			
			// 	drama 가 최초 실행될 때 화면에 나타나는 페이지 = 1 페이지 
			// 	★ ★ strPage 는 최초값이 null이므로 1로 값을 주어야지만 1 페이지 링크 클릭 시 strPage = 1로 신호가 들어온다
			//	2 페이지 링크 클릭 시  strPage = 2 
			// 	파라미타 값 page는 사용자가 누르는 숫자페이지(request:요청)에서 가져와서 strPage로 받아주어야 페이지지정 가능 
			// 	지정 안하면 에러 발생
			if (strPage==null || strPage.equals("")) {
				strPage="1";
			}
			System.out.println("검색 결과 페이지 : "+strPage);
			
			
			// PageVo에서 page는 Integer타입이므로 strPage의 타입을 String → Integer 타입으로 변환
			int page=Integer.parseInt(strPage);
			
			// Integer 타입으로 변환한 page를 담아와서 searchVo의 현재페이지로 set
			searchVo.setPage(page);
			
			// PageVo의 메소드 pageCalculate에  'totDrama=total' 를 가져가게 되고 알아서 페이지 수가 계산됨
			// SearchVo는 PageVo를 상속받으므로 PageVo의 메소드 사용 가능.
			searchVo.pageCalculate(total);
			
			int rowStart=searchVo.getRowStart();		// 시작 행 가져오기 (..1 페이지의 시작 번호)
			int rowEnd=searchVo.getRowEnd();			// 종료 행 가져오기 (..1 페이지의 종료 번호)
			
			/*
			 * // 검색 키워드 확인 System.out.println("제목 >>>>> "+movie_title);
			 * System.out.println("배우 >>>>> "+movie_actor);
			 * System.out.println("감독 >>>>> "+movie_director);
			 * 
			 * if (movie_title.equals("movie_title")) {
			 * model.addAttribute("drama",Mdao.search(rowStart, rowEnd, searchKeyword,
			 * "1")); model.addAttribute("totRowCnt",
			 * Mdao.selectSearchCount(searchKeyword,"1"));
			 * System.out.println("검색 타입 >>>>> 제목");
			 * 
			 * } else if (movie_actor.equals("movie_actor")) {
			 * model.addAttribute("drama",Mdao.search(rowStart, rowEnd, searchKeyword,
			 * "2")); model.addAttribute("totRowCnt",
			 * Mdao.selectSearchCount(searchKeyword,"2"));
			 * System.out.println("검색 타입 >>>>> 배우");
			 * 
			 * } else if (movie_director.equals("movie_director")) {
			 * model.addAttribute("drama",Mdao.search(rowStart, rowEnd, searchKeyword,
			 * "3")); model.addAttribute("totRowCnt",
			 * Mdao.selectSearchCount(searchKeyword,"3"));
			 * System.out.println("검색 타입 >>>>> 감독"); }
			 */
			
			// 화면에 띄우기
			model.addAttribute("searchVo", searchVo);
			
			
			return "Msearch";
		}
	
	

}
