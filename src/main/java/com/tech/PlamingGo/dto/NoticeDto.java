package com.tech.PlamingGo.dto;

import java.sql.Timestamp;

public class NoticeDto {

	private int nnum;
	private String ntitle;
	private String nwriter;
	private String ncontent;
	private Timestamp ndate;
	private int nhit;
	private int ngroup;
	private int nstep;
	private int nindent;
	private String fileSrc;
	
	
	public NoticeDto(int nnum, String ntitle,
			String nwriter,String ncontent,Timestamp ndate,
			int nhit, int ngroup, int nstep, int nindent) {
		this.nnum=nnum;
		this.ntitle=ntitle;
		this.nwriter=nwriter;
		this.ncontent=ncontent;
		this.nhit=nhit;
		this.ngroup=ngroup;
		this.nstep=nstep;
		this.nindent=nindent;
	}
	
	
	public int getNnum() {
		return nnum;
	}
	public void setNnum(int nnum) {
		this.nnum = nnum;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public Timestamp getNdate() {
		return ndate;
	}
	public void setNdate(Timestamp ndate) {
		this.ndate = ndate;
	}
	public int getNhit() {
		return nhit;
	}
	public void setNhit(int nhit) {
		this.nhit = nhit;
	}
	public String getNwriter() {
		return nwriter;
	}
	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}


	public int getNgroup() {
		return ngroup;
	}


	public void setNgroup(int ngroup) {
		this.ngroup = ngroup;
	}


	public int getNstep() {
		return nstep;
	}


	public void setNstep(int nstep) {
		this.nstep = nstep;
	}

	public void setNindent(int nindent) {
		this.nindent = nindent;
	}


	public String getFileSrc() {
		return fileSrc;
	}


	public void setFileSrc(String fileSrc) {
		this.fileSrc = fileSrc;
	}
	
	
	
}