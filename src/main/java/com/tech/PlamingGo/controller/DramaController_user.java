package com.tech.PlamingGo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.PlamingGo.dao.DramaDao;
import com.tech.PlamingGo.dto.DramaDto;
import com.tech.PlamingGo.dto.JoinDto;
import com.tech.PlamingGo.page.SearchVo;

@Controller
public class DramaController_user {
	
	// Bean 자동 주입
	@Autowired
	private SqlSession sqlSession;
	
	
	// 01.	리스트 - 정렬 ; 최신작품 순
	@RequestMapping("/drama")
	public String drama(Model model, HttpServletRequest request, SearchVo searchVo) {
	// 		SearchVo 는 PageVo 를 상속 받으니  SearchVo 만 가져와도 PageVo 도 같이 가져옴
	//		404에러 : 프로젝트 소스 내에 "/" URL을 받아줄 어떠한 매핑도 없어서 나온 에러
	//		Controller 밑에 매핑X. drama 메소드 위에 매핑	
		
		
	/*
	 * // ㄱ. 검색창 필드 (제목, 배우, 감독) // drama.jsp에서 받은 value값들 String title=""; String
	 * actor=""; String director=""; // drama.jsp 에서 name=searchType으로 파라미타값들을 가져옴
	 * // searchType 은 검색창 필드에 속하므로 Values로 가져오고 // [] 배열 형태의 String 타입으로 받는다.
	 * String[] fieldArray=request.getParameterValues("searchType");
	 * 
	 * // [ for-each ] // 검색창 필드가 빈 값이 아니라면 // 검색창 필드가 title이라면 모델요소에 title을 담고
	 * String title로 받아라. if (fieldArray!=null) { for (String val : fieldArray) { if
	 * (val.equals("title")) { model.addAttribute("title", "true"); title="title";
	 * 
	 * }else if (val.equals("actor")) { model.addAttribute("actor", "true");
	 * actor="actor";
	 * 
	 * }else if (val.equals("director")) { model.addAttribute("director", "true");
	 * director="director"; } } }
	 */
	
		
		//	ㄴ.	검색창 쿼리
		String searchKeyword=request.getParameter("searchKeyword");
		if (searchKeyword==null) {
			searchKeyword="";
		}
		
		// 	Mybatis 로 Database 연결 
		// 	인터페이스 DramaDao와 DramaDao.xml이 연관이 있음
		DramaDao dramadao=sqlSession.getMapper(DramaDao.class);
		
		//	드라마 페이지에 화면 띄우기
		//	검색창 키워드
		model.addAttribute("searchKeyword", searchKeyword);
		
		
		
		// 	ㄷ.	페이징 처리
		// 		drama 가 최초 실행될 때 화면에 나타나는 페이지 = 1 페이지 
		// 		★ ★ strPage 는 최초값이 null이므로 1로 값을 주어야지만 1 페이지 링크 클릭 시 strPage = 1로 신호가 들어온다
		//		2 페이지 링크 클릭 시  strPage = 2 
		// 		파라미타 값 page는 사용자가 누르는 숫자페이지(request:요청)에서 가져와서 strPage로 받아주어야 페이지지정 가능 
		// 		지정 안하면 에러 발생
		String strPage = request.getParameter("page");
			if (strPage==null) {
				strPage="1";
			}
		
		// PageVo에서 page는 Integer타입이므로 strPage의 타입을 String → Integer 타입으로 변환
		int page=Integer.parseInt(strPage);
		
		// Integer 타입으로 변환한 page를 담아와서 searchVo의 현재페이지로 set
		searchVo.setPage(page);
		
		// db 속 드라마 데이터 전체 개수
		int totDrama=dramadao.selectDramaCount();
		
		// PageVo의 메소드 pageCalculate에 totDrama를 가져가게 되고 알아서 페이지 수가 계산됨
		// SearchVo는 PageVo를 상속받으므로 PageVo의 메소드 사용 가능.
		searchVo.pageCalculate(totDrama);
		
		int rowStart=searchVo.getRowStart();		// 시작 행 가져오기 (..1 페이지의 시작 번호)
		int rowEnd=searchVo.getRowEnd();			// 종료 행 가져오기 (..1 페이지의 종료 번호)
		
		
		// 드라마 페이지 화면에 띄우기	
		model.addAttribute("drama", dramadao.drama(rowStart,rowEnd));	// pg_drama테이블 데이터
		model.addAttribute("tot_drama_cnt", totDrama);					// 드라마 전체 데이터 수
		model.addAttribute("pageVo", searchVo);							// 페이징 처리
		
		// 주소창에 /drama 입력	 → View단  drama.jsp로 이동
		return "drama";
	}
	
	
	// 02.	상세보기
	@RequestMapping(value = "drama_detailview", method = RequestMethod.GET)
	public String drama_detailview(Model model, HttpServletRequest request) {
		System.out.println("상세보기 컨트롤러 지나감");
		
		// ★★★ 상세보기에서 db의 데이터가 들어오지 않았던 이유
		// request.getParameter("c")여야 했음.
		// drama.jsp(드라마 리스트)에서 drama_detailview.jsp(상세보기)로 들어오는 주소태그에서
		// drama_detailview?c=${drama.code}임
		// Parameter값은 c 이므로
		// getParameter("code")가 아닌 getParameter("c")여야 함
		// 즉, Parameter 값을 잘못 가져왔기 때문에 null이었던 것
		
		// 기본키의 값(code)을 xml에서 String 타입으로 가져옴
		String code=request.getParameter("c");
//		System.out.println(code);
		
		DramaDao dao=sqlSession.getMapper(DramaDao.class);
		dao.upHit(code);									// 조회수 증가
		DramaDto dto=dao.drama_detailview(code); 			// 상세뷰
		
		
		//dto를 detailview 라는 이름으로 drama_detailview 로 보내줌(View단)
		model.addAttribute("detailview", dto);			
		
		
		// + 추가 : 해당 드라마 리뷰 댓글 리스트 불러오기
		model.addAttribute("review", dao.review(code));
		
		
		return "drama_detailview";
	
	}
	
	
	// 03. 검색창
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String search(HttpServletRequest request, Model model, SearchVo searchVo) {
		//	검색창 타입
/*		String title="";	// 제목
		String actor="";	// 배우
		String director="";	// 감독
		
		String[] fieldArray=request.getParameterValues("searchType");
		
		//	검색창 필드가 빈 값이 아니라면
		//	검색창 필드가 title이라면 모델요소에 title을 담고 String title로 받아라.
		if (fieldArray!=null) {
			for (String val : fieldArray) {
				if (val.equals("title")) {
					model.addAttribute("title", "true");
					title="title";
					
				}else if (val.equals("actor")) {
					model.addAttribute("actor", "true");
					actor="actor";
					
				}else if (val.equals("director")) {
					model.addAttribute("director", "true");
					director="director";
				}
			}
		}
*/		
		// 쿼리 (키워드)
		String searchKeyword=request.getParameter("searchKeyword");
		if (searchKeyword==null) {
			searchKeyword="";
		}
		
		// 	Mybatis 로 Database 연결 
		// 	인터페이스 DramaDao와 DramaDao.xml이 연관이 있음
		DramaDao dramadao=sqlSession.getMapper(DramaDao.class);
		

		
		//	페이징 처리 + 검색 결과 개수
		int total = 0;
		total = dramadao.selectSearchCount(searchKeyword);
		
/*		  if (title.equals("title")) { 
			  total = dramadao.selectSearchCount(searchKeyword, "1"); // 제목 = 1번
		  
		  }else if (actor.equals("actor")) { 
			  total = dramadao.selectSearchCount(searchKeyword, "2"); // 배우 = 2번
		  
		  }else if (director.equals("director")) { 
			  total = dramadao.selectSearchCount(searchKeyword, "3"); // 감독 = 3번
		  
		  }
*/		 

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
		
		
		// 검색 키워드 확인
/*		System.out.println("제목 >>>>> "+title); System.out.println("배우 >>>>> "+actor);
		System.out.println("감독 >>>>> "+director);
		  
		if (title.equals("title")) { 
			model.addAttribute("drama",dramadao.search(rowStart, rowEnd, searchKeyword, "1"));
			model.addAttribute("totRowCnt", dramadao.selectSearchCount(searchKeyword,"1")); 
			System.out.println("검색 타입 >>>>> 제목");
		  
		} else if (actor.equals("actor")) { 
			model.addAttribute("drama",dramadao.search(rowStart, rowEnd, searchKeyword, "2"));
			model.addAttribute("totRowCnt", dramadao.selectSearchCount(searchKeyword,"2")); 
			System.out.println("검색 타입 >>>>> 배우");
		  
		} else if (director.equals("director")) { 
			model.addAttribute("drama",dramadao.search(rowStart, rowEnd, searchKeyword, "3"));
			model.addAttribute("totRowCnt", dramadao.selectSearchCount(searchKeyword,"3")); 
			System.out.println("검색 타입 >>>>> 감독"); 
		}
*/		
		
		// 화면에 띄우기
		model.addAttribute("pageVo", searchVo);
		model.addAttribute("searchTotal", total);
		model.addAttribute("drama", dramadao.search(rowStart, rowEnd, searchKeyword));
		
		return "search";
	}
	
	
	
//=======================================================================================
	
	
	// 04.	리뷰 등록
	@RequestMapping("/dreview_insert")
	public String dreview_insert(HttpServletRequest request, Model model) {
		
		// hidden으로 받은 bno = 드라마 코드 = 게시물 번호
		String bno = request.getParameter("bno");
		
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String regdate = request.getParameter("regdate");
		
		
		DramaDao dramadao = sqlSession.getMapper(DramaDao.class);
		
		dramadao.dreview_insert(bno, writer, content, regdate);		// 등록할 내용
		model.addAttribute("c", bno);								// 드라마 코드 뷰단으로 보내기★ detailview?c=에서 c에 속함!
		
		
		return "redirect:drama_detailview";
	}
	
	
	// 05.	리뷰 삭제
		@RequestMapping("/dreview_delete")
		public String dreview_delete(HttpServletRequest request, Model model) {
			
			String rno = request.getParameter("rno");
			String bno = request.getParameter("bno");
			
			DramaDao dramadao = sqlSession.getMapper(DramaDao.class);
			
			dramadao.dreview_delete(rno);	
			model.addAttribute("c", bno);				
			
			
			return "redirect:drama_detailview";
		}
	
	
	
	
// =================================================================================================
	
	
	
	
		// 01-1.	리스트 - 정렬 ; 최신작품 순
		@RequestMapping("/drama/order1")
		public String order1(Model model, HttpServletRequest request, SearchVo searchVo) {
		// 		SearchVo 는 PageVo 를 상속 받으니  SearchVo 만 가져와도 PageVo 도 같이 가져옴
		//		404에러 : 프로젝트 소스 내에 "/" URL을 받아줄 어떠한 매핑도 없어서 나온 에러
		//		Controller 밑에 매핑X. drama 메소드 위에 매핑	
			
			//	검색창 쿼리
			String searchKeyword=request.getParameter("searchKeyword");
			if (searchKeyword==null) {
				searchKeyword="";
			}
			
			// 	Mybatis 로 Database 연결 
			// 	인터페이스 DramaDao와 DramaDao.xml이 연관이 있음
			DramaDao dramadao=sqlSession.getMapper(DramaDao.class);
			
			//	드라마 페이지에 화면 띄우기
			//	검색창 키워드
			model.addAttribute("searchKeyword", searchKeyword);
			
			
			// 		페이징 처리
			// 		drama 가 최초 실행될 때 화면에 나타나는 페이지 = 1 페이지 
			// 		★ ★ strPage 는 최초값이 null이므로 1로 값을 주어야지만 1 페이지 링크 클릭 시 strPage = 1로 신호가 들어온다
			//		2 페이지 링크 클릭 시  strPage = 2 
			// 		파라미타 값 page는 사용자가 누르는 숫자페이지(request:요청)에서 가져와서 strPage로 받아주어야 페이지지정 가능 
			// 		지정 안하면 에러 발생
			String strPage = request.getParameter("page");
				if (strPage==null) {
					strPage="1";
				}
			
			// PageVo에서 page는 Integer타입이므로 strPage의 타입을 String → Integer 타입으로 변환
			int page=Integer.parseInt(strPage);
			
			// Integer 타입으로 변환한 page를 담아와서 searchVo의 현재페이지로 set
			searchVo.setPage(page);
			
			// db 속 드라마 데이터 전체 개수
			int totDrama=dramadao.selectDramaCount();
			
			// PageVo의 메소드 pageCalculate에 totDrama를 가져가게 되고 알아서 페이지 수가 계산됨
			// SearchVo는 PageVo를 상속받으므로 PageVo의 메소드 사용 가능.
			searchVo.pageCalculate(totDrama);
			
			int rowStart=searchVo.getRowStart();		// 시작 행 가져오기 (..1 페이지의 시작 번호)
			int rowEnd=searchVo.getRowEnd();			// 종료 행 가져오기 (..1 페이지의 종료 번호)
			
			
			// 드라마 페이지 화면에 띄우기	
			model.addAttribute("drama", dramadao.order1(rowStart, rowEnd));	// order1 = 최신작품 순 드라마리스트
			model.addAttribute("tot_drama_cnt", totDrama);					// 드라마 전체 데이터 수
			model.addAttribute("pageVo", searchVo);							// 페이징 처리
			

			return "drama/order1";
		}
		
		
		// 01-2.	리스트 - 정렬 ; 평균별점 순
		@RequestMapping("/drama/order2")
		public String order2(Model model, HttpServletRequest request, SearchVo searchVo) {
		// 		SearchVo 는 PageVo 를 상속 받으니  SearchVo 만 가져와도 PageVo 도 같이 가져옴
		//		404에러 : 프로젝트 소스 내에 "/" URL을 받아줄 어떠한 매핑도 없어서 나온 에러	
		//		Controller 밑에 매핑X. drama 메소드 위에 매핑	
						
		//		검색창 쿼리
		String searchKeyword=request.getParameter("searchKeyword");
		if (searchKeyword==null) {
			searchKeyword="";
		}
					
		// 	Mybatis 로 Database 연결 
		// 	인터페이스 DramaDao와 DramaDao.xml이 연관이 있음
		DramaDao dramadao=sqlSession.getMapper(DramaDao.class);
					
		//	드라마 페이지에 화면 띄우기
		//	검색창 키워드
		model.addAttribute("searchKeyword", searchKeyword);
					
					
					
		// 	ㄷ.	페이징 처리
		// 		drama 가 최초 실행될 때 화면에 나타나는 페이지 = 1 페이지 
		// 		★ ★ strPage 는 최초값이 null이므로 1로 값을 주어야지만 1 페이지 링크 클릭 시 strPage = 1로 신호가 들어온다
		//		2 페이지 링크 클릭 시  strPage = 2 
		// 		파라미타 값 page는 사용자가 누르는 숫자페이지(request:요청)에서 가져와서 strPage로 받아주어야 페이지지정 가능 
		// 		지정 안하면 에러 발생
		String strPage = request.getParameter("page");
			if (strPage==null) {
				strPage="1";
			}
					
		// PageVo에서 page는 Integer타입이므로 strPage의 타입을 String → Integer 타입으로 변환
		int page=Integer.parseInt(strPage);
					
		// Integer 타입으로 변환한 page를 담아와서 searchVo의 현재페이지로 set
		searchVo.setPage(page);
		
		// db 속 드라마 데이터 전체 개수
		int totDrama=dramadao.selectDramaCount();
					
		// PageVo의 메소드 pageCalculate에 totDrama를 가져가게 되고 알아서 페이지 수가 계산됨
		// SearchVo는 PageVo를 상속받으므로 PageVo의 메소드 사용 가능.
		searchVo.pageCalculate(totDrama);
					
		int rowStart=searchVo.getRowStart();		// 시작 행 가져오기 (..1 페이지의 시작 번호)
		int rowEnd=searchVo.getRowEnd();			// 종료 행 가져오기 (..1 페이지의 종료 번호)
					
					
		// 드라마 페이지 화면에 띄우기	
		model.addAttribute("drama", dramadao.order2(rowStart, rowEnd));	// order2 = 평균별점 순 드라마리스트
		model.addAttribute("tot_drama_cnt", totDrama);					// 드라마 전체 데이터 수
		model.addAttribute("pageVo", searchVo);							// 페이징 처리
					

		return "drama/order2";
	}
		
		
		// 01-3.	리스트 - 정렬 ; 조회수 순
		@RequestMapping("/drama/order3")
		public String order3(Model model, HttpServletRequest request, SearchVo searchVo) {
		// 		SearchVo 는 PageVo 를 상속 받으니  SearchVo 만 가져와도 PageVo 도 같이 가져옴
		//		404에러 : 프로젝트 소스 내에 "/" URL을 받아줄 어떠한 매핑도 없어서 나온 에러
		//		Controller 밑에 매핑X. drama 메소드 위에 매핑	
		
		//		검색창 쿼리
		String searchKeyword=request.getParameter("searchKeyword");
		if (searchKeyword==null) {
			searchKeyword="";
		}
					
		// 	Mybatis 로 Database 연결 
		// 	인터페이스 DramaDao와 DramaDao.xml이 연관이 있음
		DramaDao dramadao=sqlSession.getMapper(DramaDao.class);
					
		//드라마 페이지에 화면 띄우기
		//	검색창 키워드
		model.addAttribute("searchKeyword", searchKeyword);
					
					
					
		// 		페이징 처리
		// 		drama 가 최초 실행될 때 화면에 나타나는 페이지 = 1 페이지 
		// 		★ ★ strPage 는 최초값이 null이므로 1로 값을 주어야지만 1 페이지 링크 클릭 시 strPage = 1로 신호가 들어온다
		//		2 페이지 링크 클릭 시  strPage = 2 
		// 		파라미타 값 page는 사용자가 누르는 숫자페이지(request:요청)에서 가져와서 strPage로 받아주어야 페이지지정 가능 
		// 		지정 안하면 에러 발생
		String strPage = request.getParameter("page");
			if (strPage==null) {
				strPage="1";
			}
					
		// PageVo에서 page는 Integer타입이므로 strPage의 타입을 String → Integer 타입으로 변환
		int page=Integer.parseInt(strPage);
					
		// Integer 타입으로 변환한 page를 담아와서 searchVo의 현재페이지로 set
		searchVo.setPage(page);
					
		// db 속 드라마 데이터 전체 개수
		int totDrama=dramadao.selectDramaCount();
					
		// PageVo의 메소드 pageCalculate에 totDrama를 가져가게 되고 알아서 페이지 수가 계산됨
		// SearchVo는 PageVo를 상속받으므로 PageVo의 메소드 사용 가능.
		searchVo.pageCalculate(totDrama);
					
		int rowStart=searchVo.getRowStart();		// 시작 행 가져오기 (..1 페이지의 시작 번호)
		int rowEnd=searchVo.getRowEnd();			// 종료 행 가져오기 (..1 페이지의 종료 번호)
					
					
		// 드라마 페이지 화면에 띄우기	
		model.addAttribute("drama", dramadao.order3(rowStart, rowEnd));	// order3 = 조회수 순 드라마리스트ㄴ
		model.addAttribute("tot_drama_cnt", totDrama);					// 드라마 전체 데이터 수
		model.addAttribute("pageVo", searchVo);							// 페이징 처리
					

		return "drama/order3";
	}		
		
	
		
}
