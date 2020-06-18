package com.tech.PlamingGo.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.PlamingGo.page.SearchVo;
import com.tech.PlamingGo.dao.PDao;

@Controller
public class MainController {
	
	@Autowired //어노테이션 설정
	private SqlSession SqlSession;
	
	@RequestMapping("/notice")
	public String notice(HttpServletRequest request, Model model,
			SearchVo searchVo) {
		System.out.println("pass notice()");
		
		String ntitle="";
		String ncontent="";
		String[] nrdtitle=
				request.getParameterValues("searchType");
		
		if (nrdtitle!=null) {
			for (String val : nrdtitle) {
				if (val.equals("ntitle")) {
					model.addAttribute("ntitle","true");
					ntitle="ntitle";
				}else if(val.equals("ncontent")) {
					model.addAttribute("bcontent", "true");
					ncontent="ncontent";
				}
				
			}
		}
		
		String searchKeyword=request.getParameter("sk");
		if (searchKeyword==null) {
			searchKeyword="";
		}
		PDao dao=SqlSession.getMapper(PDao.class);
		
		int total=0;
		
		if(ntitle.equals("ntitle") && ncontent.equals("")) {
			 total=dao.selectNoticeCount(searchKeyword ,"1" );
			 System.out.println("go total > list1");
		}else if(ntitle.equals("") && ncontent.equals("ncontent")) {
			total=dao.selectNoticeCount(searchKeyword, "2" );
			System.out.println("go total >list2");
		}else if(ntitle.equals("ntitle") && ncontent.equals("ncontent")) {
			 total=dao.selectNoticeCount(searchKeyword, "3" );
			 System.out.println("go total >list3");
		}else if(ntitle.equals("") && ncontent.equals("")) {
			 total=dao.selectNoticeCount(searchKeyword, "0" );
			System.out.println("go total >list0");
		}
		//pageVO=new PageVO();
				String strPage=request.getParameter("page");	 
			 
				System.out.println("searchKeyword >>"+searchKeyword);
				model.addAttribute("searchKeyword",searchKeyword);
			 
				System.out.println("strPage >>"+strPage);

				if(strPage==null || strPage.equals("")) {
					strPage="1";
				}
			System.out.println("strPage >>"+strPage	);
			 
			int page=Integer.parseInt(strPage);
			searchVo.setPage(page);
			
			searchVo.pageCalculate(total);

			System.out.println("레코드 총수 "+ dao.selectNoticeCount(searchKeyword, "0" ));
			 
			System.out.println("====================");
			System.out.println("clickPage : "+searchVo.getPage());
			System.out.println("pageStart : "+searchVo.getPageStart());
			System.out.println("pageEnd : "+searchVo.getPageEnd());
			System.out.println("pageTot : "+searchVo.getTotPage());
			System.out.println("rowStart : "+searchVo.getRowStart());
			System.out.println("rowEnd : "+searchVo.getRowEnd());
			 
			int rowStart=searchVo.getRowStart();
			int rowEnd=searchVo.getRowEnd();
			 
			 
		return "notice";
	}
}
