package com.tech.PlamingGo.dao;

import java.util.ArrayList;

import com.tech.PlamingGo.dto.NoticeDto;

public interface PDao {
	public ArrayList<NoticeDto> list(int start, int end, String searchKeyword,String selNum);
	
	public int selectNoticeCount(String searchKeyword,String selNum);

	public void write(String nwriter,
			String ntitle, String ncontent, String fName);
	public NoticeDto contentView(String seqid);
	public void upHit(String strnum);
	public void modify(String nnum, String nwriter,
			String ntitle, String ncontent);
	public void delete(String nnum);
	public NoticeDto reply_view(String vbnum);
	public void reply(String nnum, String nwriter,
			String ntitle, String ncontent,
			String bgroup, String nstep,
			String nindent);
	public void stepup(	String ngroup, String nstep);
}
