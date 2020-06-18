package com.tech.PlamingGo.controller;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.PlamingGo.dao.CustomDao;
import com.tech.PlamingGo.dto.CustomDto;
import com.tech.PlamingGo.page.CSearchVO;



@Controller
public class CustomController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/customer")
	public String customer(Model model,
			HttpServletRequest request,CSearchVO searchVo,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
//		search
		String no_title="";
		String no_content="";
		
		String[] brdtitle=
				request.getParameterValues("searchType");

		if (brdtitle!=null) {
			for (String val : brdtitle) {
				if(val.equals("no_title")) {
					model.addAttribute("no_title","true");
					no_title="no_title";
				}else if(val.equals("no_content")) {
					model.addAttribute("no_content","true");
					no_content="no_content";
				}	
			}
		}
		
		String searchKeyword=request.getParameter("sk");
		if(searchKeyword==null) {
			searchKeyword="";
		}
		
		CustomDao cdao = sqlSession.getMapper(CustomDao.class);
		
		
		int total=0;
		
		if(no_title.equals("no_title") && no_content.equals("")) {
			 total=cdao.selectBoardCount(searchKeyword ,"1" );
			System.out.println("go total >customoer1");
		}else if(no_title.equals("") && no_content.equals("no_content")) {
			 total=cdao.selectBoardCount(searchKeyword, "2" );
			System.out.println("go total >customer2");
		}else if(no_title.equals("no_title") && no_content.equals("no_content")) {
			 total=cdao.selectBoardCount(searchKeyword, "3" );
			System.out.println("go total >customer3");
		}else if(no_title.equals("") && no_content.equals("")) {
			 total=cdao.selectBoardCount(searchKeyword, "0" );
			System.out.println("go total >customer0");
		}
		
		//pageVO=new PageVO();
		String strPage=request.getParameter("page");
		
		System.out.println("searchKeyword >>"+searchKeyword);
		model.addAttribute("searchKeyword",searchKeyword);
		
		System.out.println("strPage >>"+strPage);

			if(strPage==null || strPage.equals("")) {
				strPage="1";
			}
		System.out.println("strPage >>"+strPage);

		int page=Integer.parseInt(strPage);
		searchVo.setPage(page);
		
		searchVo.pageCalculate(total);

		System.out.println("레코드 총수 "+ cdao.selectBoardCount(searchKeyword, "0" ));
		
		
		System.out.println("====================");
		System.out.println("clickPage : "+searchVo.getPage());
		System.out.println("pageStart : "+searchVo.getPageStart());
		System.out.println("pageEnd : "+searchVo.getPageEnd());
		System.out.println("pageTot : "+searchVo.getTotPage());
		System.out.println("rowStart : "+searchVo.getRowStart());
		System.out.println("rowEnd : "+searchVo.getRowEnd());
		
		int rowStart=searchVo.getRowStart();
		int rowEnd=searchVo.getRowEnd();
		
//		select check query
		System.out.println("no_title>>"+no_title);
		System.out.println("no_content>>"+no_content);
		
		if(no_title.equals("no_title") && no_content.equals("")) {
			model.addAttribute("customer", cdao.customer(rowStart,rowEnd,searchKeyword,"1"));
			model.addAttribute("totRowCnt", cdao.selectBoardCount(searchKeyword,"1"));
			System.out.println("gogo >customer1");
		}else if(no_title.equals("") && no_content.equals("no_content")) {
			model.addAttribute("customer", cdao.customer(rowStart,rowEnd,searchKeyword,"2"));
			model.addAttribute("totRowCnt", cdao.selectBoardCount(searchKeyword,"2"));
			System.out.println("gogo >customer2");
		}else if(no_title.equals("no_title") && no_content.equals("no_content")) {
			model.addAttribute("customer", cdao.customer(rowStart,rowEnd,searchKeyword,"3"));
			model.addAttribute("totRowCnt", cdao.selectBoardCount(searchKeyword,"3"));
			System.out.println("gogo >customer3");
		}else if(no_title.equals("") && no_content.equals("")) {
			model.addAttribute("customer", cdao.customer(rowStart,rowEnd,searchKeyword,"0"));
			model.addAttribute("totRowCnt", cdao.selectBoardCount(searchKeyword,"0"));
			System.out.println("gogo >customer0");
		}
	//	
//		model.addAttribute("totalcnt", total);
//		model.addAttribute("list", dao.list(rowStart,rowEnd));
		model.addAttribute("searchVo",searchVo);
	//	
		return "customer";
	}
	@RequestMapping("/cdownload")
	public String cdownload(HttpServletRequest request,
			HttpServletResponse response,
			Model model) throws Exception {
		System.out.println("pass cdownload()");
		String path=request.getParameter("p");
		String fname=request.getParameter("f");
		String no_num=request.getParameter("no_num");
		
		response.setHeader("Content-Disposition", 
				"Attachment;filename="
		+URLEncoder.encode(fname,"utf-8"));//첨부처리, 한글처리
		//다운
		String attachPath="resources\\upload\\";
		String realPath=request.getSession()
				.getServletContext()
				.getRealPath(attachPath)+"\\"+fname;
		
		FileInputStream fin=new FileInputStream(realPath);
		ServletOutputStream sout=response.getOutputStream();
		
		byte[] buf=new byte[1024];
		int size=0;
		
		while ((size=fin.read(buf, 0, 1024))!=-1) {
			sout.write(buf, 0, size);
		}
		fin.close();
		sout.close();
		
		return "n_contentview?no_num="+no_num;
		
	}
	@RequestMapping("/n_writeview")
	public String n_writeview() {
	System.out.println("n_writeview()");
		return "/n_writeview";
	}
	
	@RequestMapping("/n_write")
	public String n_write(Model model,
		HttpServletRequest request, HttpServletResponse response) throws Exception {
	System.out.println("n_write()");
	
	String attachPath="resources\\upload\\";
	String uploadPath=
			request.getSession().getServletContext()
			.getRealPath("/");
	String path=uploadPath+attachPath;
	MultipartRequest req=
			new MultipartRequest(request, path,
					10*1024*1024,"UTF-8",
					new DefaultFileRenamePolicy());
	
	String no_id=req.getParameter("no_id");
	String no_title=req.getParameter("no_title");
	String no_content=req.getParameter("no_content");
	String fName=req.getFilesystemName("file");//**
	if(fName==null)
		fName="";
	
	CustomDao cdao = sqlSession.getMapper(CustomDao.class);
	cdao.n_write(no_id, no_title, no_content, fName);
	
	return "redirect:customer";
	
	}
	@RequestMapping("/n_download")
	public String n_download(HttpServletRequest request,
			HttpServletResponse response,
			Model model) throws Exception {
		System.out.println("pass download()");
		String path=request.getParameter("p");
		String fname=request.getParameter("f");
		String no_num=request.getParameter("no_num");
		
		response.setHeader("Content-Disposition", 
				"Attachment;filename="
		+URLEncoder.encode(fname,"utf-8"));//첨부처리, 한글처리
		//다운
		String attachPath="resources\\upload\\";
		String realPath=request.getSession()
				.getServletContext()
				.getRealPath(attachPath)+"\\"+fname;
		
		FileInputStream fin=new FileInputStream(realPath);
		ServletOutputStream sout=response.getOutputStream();
		
		byte[] buf=new byte[1024];
		int size=0;
		
		while ((size=fin.read(buf, 0, 1024))!=-1) {
			sout.write(buf, 0, size);
		}
		fin.close();
		sout.close();
		
		return "n_contentview?no_num="+no_num;
		
	}
	
	@RequestMapping("/n_contentview")
	public String n_contentview(HttpServletRequest request,
			Model model) throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.out.println("pass n_contentview()");
//		model.addAttribute("request", request);
//		commandInp=new BContentViewService();
//		commandInp.execute(model);
		String no_num=request.getParameter("no_num");
		CustomDao cdao =sqlSession.getMapper(CustomDao.class);
		cdao.n_upHit(no_num);//카운트증가
		CustomDto cdto=cdao.n_contentview(no_num);//상세뷰
		model.addAttribute("n_contentview", cdto);
		
		return "n_contentview";
	}
	@RequestMapping(value = "/n_modify",method = RequestMethod.POST)
	public String n_modify(HttpServletRequest request,
			Model model) throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.out.println("pass n_modify()");
		//수정구현
//		model.addAttribute("request", request);
//		commandInp=new BModifyService();
//		commandInp.execute(model);
		
		String no_num=request.getParameter("no_num");
		String no_id=request.getParameter("no_id");
		String no_title=request.getParameter("no_title");
		String no_content=request.getParameter("no_content");
		CustomDao cdao =sqlSession.getMapper(CustomDao.class);
		cdao.n_modify(no_num, no_id, no_title, no_content);
		
		return "redirect:customer";
	}
	@RequestMapping("/n_delete")
	public String n_delete(HttpServletRequest request,
			Model model) {
		System.out.println("pass n_delete()");
		//delete 구현
//		model.addAttribute("request", request);
//		commandInp=new BDeleteService();
//		commandInp.execute(model);
		
		String no_num=request.getParameter("no_num");
		CustomDao cdao =sqlSession.getMapper(CustomDao.class);
		cdao.n_delete(no_num);
		
		return "redirect:customer";
	}
	
	
}
