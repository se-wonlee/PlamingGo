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
import com.tech.PlamingGo.dao.QnaDao;
import com.tech.PlamingGo.dto.QnaDto;
import com.tech.PlamingGo.page.CSearchVO;



@Controller
public class QnaController {
	
	@Autowired
	private SqlSession sqlSession;
	
//	@RequestMapping("/customer")
//	public String customer() {
//		System.out.println("customer");
//		return "/customer";
//	}
	
	@RequestMapping("/c_list")
	public String c_list(Model model,
			HttpServletRequest request,CSearchVO searchVo,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
	System.out.println("c_list()");
	
	System.out.println("pass list()");
//	search
	String qna_title="";
	String qna_content="";
	
	String[] brdtitle=
			request.getParameterValues("searchType");

	if (brdtitle!=null) {
		for (String val : brdtitle) {
			if(val.equals("qna_title")) {
				model.addAttribute("qna_title","true");
				qna_title="qna_title";
			}else if(val.equals("qna_content")) {
				model.addAttribute("qna_content","true");
				qna_content="qna_content";
			}	
		}
	}
	
	String searchKeyword=request.getParameter("sk");
	System.out.println("최초로 넘겨받은 서키"+searchKeyword);
	if(searchKeyword==null) {
		searchKeyword="";
	}
	
	QnaDao qdao = sqlSession.getMapper(QnaDao.class);
	
	
	int total=0;
	
	if(qna_title.equals("qna_title") && qna_content.equals("")) {
		 total=qdao.selectBoardCount(searchKeyword ,"1" );
		System.out.println("go total >list1");
	}else if(qna_title.equals("") && qna_content.equals("qna_content")) {
		 total=qdao.selectBoardCount(searchKeyword, "2" );
		System.out.println("go total >list2");
	}else if(qna_title.equals("qna_title") && qna_content.equals("qna_content")) {
		 total=qdao.selectBoardCount(searchKeyword, "3" );
		System.out.println("go total >list3");
	}else if(qna_title.equals("") && qna_content.equals("")) {
		 total=qdao.selectBoardCount(searchKeyword, "0" );
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
	System.out.println("strPage >>"+strPage);

	int page=Integer.parseInt(strPage);
	searchVo.setPage(page);
	
	searchVo.pageCalculate(total);

	System.out.println("레코드 총수 "+ qdao.selectBoardCount(searchKeyword, "0" ));
	
	
	System.out.println("====================");
	System.out.println("clickPage : "+searchVo.getPage());
	System.out.println("pageStart : "+searchVo.getPageStart());
	System.out.println("pageEnd : "+searchVo.getPageEnd());
	System.out.println("pageTot : "+searchVo.getTotPage());
	System.out.println("rowStart : "+searchVo.getRowStart());
	System.out.println("rowEnd : "+searchVo.getRowEnd());
	
	int rowStart=searchVo.getRowStart();
	int rowEnd=searchVo.getRowEnd();
	
//	select check query
	System.out.println("qna_title>>"+qna_title);
	System.out.println("qna_content>>"+qna_content);
	
	if(qna_title.equals("qna_title") && qna_content.equals("")) {
		model.addAttribute("c_list", qdao.c_list(rowStart,rowEnd,searchKeyword,"1"));
		model.addAttribute("totRowCnt", qdao.selectBoardCount(searchKeyword,"1"));
		System.out.println("gogo >list1");
	}else if(qna_title.equals("") && qna_content.equals("qna_content")) {
		model.addAttribute("c_list", qdao.c_list(rowStart,rowEnd,searchKeyword,"2"));
		model.addAttribute("totRowCnt", qdao.selectBoardCount(searchKeyword,"2"));
		System.out.println("gogo >list2");
	}else if(qna_title.equals("qna_title") && qna_content.equals("qna_content")) {
		model.addAttribute("c_list", qdao.c_list(rowStart,rowEnd,searchKeyword,"3"));
		model.addAttribute("totRowCnt", qdao.selectBoardCount(searchKeyword,"3"));
		System.out.println("gogo >list3");
	}else if(qna_title.equals("") && qna_content.equals("")) {
		model.addAttribute("c_list", qdao.c_list(rowStart,rowEnd,searchKeyword,"0"));
		model.addAttribute("totRowCnt", qdao.selectBoardCount(searchKeyword,"0"));
		System.out.println("gogo >list0");
	}
//	
//	model.addAttribute("totalcnt", total);
//	model.addAttribute("list", dao.list(rowStart,rowEnd));
	model.addAttribute("searchVo",searchVo);
//	
	return "c_list";
	
	}
	@RequestMapping("/c_writeview")
	public String c_writeview() {
	System.out.println("c_writeview()");
		return "/c_writeview";
	}
	
	@RequestMapping("/c_write")
	public String c_write(Model model,
		HttpServletRequest request, HttpServletResponse response) throws Exception {
	System.out.println("c_write()");
	
	String attachPath="resources\\upload\\";
	String uploadPath=
			request.getSession().getServletContext()
			.getRealPath("/");
	String path=uploadPath+attachPath;
	MultipartRequest req=
			new MultipartRequest(request, path,
					10*1024*1024,"UTF-8",
					new DefaultFileRenamePolicy());
	
	String qna_id=req.getParameter("qna_id");
	String qna_title=req.getParameter("qna_title");
	String qna_content=req.getParameter("qna_content");
	String fName=req.getFilesystemName("file");//**
	if(fName==null)
		fName="";
	
	QnaDao qdao = sqlSession.getMapper(QnaDao.class);
	qdao.c_write(qna_id, qna_title, qna_content, fName);
	
	return "redirect:c_list";
	
	}
	@RequestMapping("/download")
	public String download(HttpServletRequest request,
			HttpServletResponse response,
			Model model) throws Exception {
		System.out.println("pass download()");
		String path=request.getParameter("p");
		String fname=request.getParameter("f");
		String qna_num=request.getParameter("qna_num");
		
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
		
		return "c_contentview?qna_num="+qna_num;
		
	}
	@RequestMapping("/c_contentview")
	public String c_contentview(HttpServletRequest request,
			Model model) throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.out.println("pass contentview()");
//		model.addAttribute("request", request);
//		commandInp=new BContentViewService();
//		commandInp.execute(model);
		String qna_num=request.getParameter("qna_num");
		QnaDao dao=sqlSession.getMapper(QnaDao.class);
		dao.upHit(qna_num);//카운트증가
		QnaDto dto=dao.c_contentview(qna_num);//상세뷰
		model.addAttribute("c_contentview", dto);
		
		return "c_contentview";
	}
	@RequestMapping(value = "/c_modify",method = RequestMethod.POST)
	public String modify(HttpServletRequest request,
			Model model) throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.out.println("pass c_modify()");
		//수정구현
//		model.addAttribute("request", request);
//		commandInp=new BModifyService();
//		commandInp.execute(model);
		
		String qna_num=request.getParameter("qna_num");
		String qna_id=request.getParameter("qna_id");
		String qna_title=request.getParameter("qna_title");
		String qna_content=request.getParameter("qna_content");
		QnaDao qdao =sqlSession.getMapper(QnaDao.class);
		qdao.c_modify(qna_num, qna_id, qna_title, qna_content);
		
		return "redirect:c_list";
	}
	@RequestMapping("/c_delete")
	public String c_delete(HttpServletRequest request,
			Model model) {
		System.out.println("pass c_delete()");
		//delete 구현
//		model.addAttribute("request", request);
//		commandInp=new BDeleteService();
//		commandInp.execute(model);
		
		String qna_num=request.getParameter("qna_num");
		QnaDao qdao =sqlSession.getMapper(QnaDao.class);
		qdao.c_delete(qna_num);
		
		return "redirect:c_list";
	}
	@RequestMapping(value = "/c_replyview")
	public String c_reply_view(HttpServletRequest request,
			Model model) throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.out.println("pass c_replyview()");
//		String bid=request.getParameter("bid");
//		model.addAttribute("request", request);
//		commandInp=new BReplyViewService();
//		commandInp.execute(model);
		
		String qna_num=request.getParameter("qna_num");
		QnaDao qdao=sqlSession.getMapper(QnaDao.class);
		QnaDto qdto=qdao.c_replyview(qna_num);// 답변뷰
		model.addAttribute("c_replyview", qdto);
		
		return "c_replyview";
	}
	
	@RequestMapping(value = "/c_reply")
	public String reply(HttpServletRequest request,
			Model model) throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.out.println("pass c_reply()");
//		model.addAttribute("request", request);
//		commandInp=new BReplyService();
//		commandInp.execute(model);
		
		String qna_num=request.getParameter("qna_num");
		String qna_id=request.getParameter("qna_id");
		String qna_title=request.getParameter("qna_title");
		String qna_content=request.getParameter("qna_content");
		String qna_group=request.getParameter("qna_group");
		String qna_step=request.getParameter("qna_step");
		String qna_indent=request.getParameter("qna_indent");
		
		QnaDao qdao=sqlSession.getMapper(QnaDao.class);
		qdao.stepup(qna_group, qna_step);
		qdao.c_reply(qna_num, qna_id, qna_title, 
				qna_content, qna_group,
				qna_step, qna_indent);
		
		return "redirect:c_list";
	}
}
