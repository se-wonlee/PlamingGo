package com.tech.PlamingGo.dto;


public class DramaDto {
	private int code;
	private String title;
	private String img;
	private String age;
	private int epi;
	private String summary;
	private String director;
	private String actor;
	private String genre;
	private String nation;
	private int opendate;
	private double rating;
	private int hits;
	private String trailer;		// 추가

	
	// 기본생성자
	public DramaDto() {
		// TODO Auto-generated constructor stub
	}
	
	// 사용자생성자
	public DramaDto(int code, String title, String img, String age, int epi, String summary, String director,
			String actor, String genre, String nation, int opendate, double rating, int hits, String trailer) {
		super();
		this.code = code;
		this.title = title;
		this.img = img;
		this.age = age;
		this.epi = epi;
		this.summary = summary;
		this.director = director;
		this.actor = actor;
		this.genre = genre;
		this.nation = nation;
		this.opendate = opendate;
		this.rating = rating;
		this.hits = hits;
		this.trailer = trailer;
	}

	
	// Setter, Getter
	public int getcode() {
		return code;
	}

	public void setcode(int code) {
		this.code = code;
	}

	public String gettitle() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
	}

	public String getimg() {
		return img;
	}

	public void setimg(String img) {
		this.img = img;
	}

	public String getage() {
		return age;
	}

	public void setage(String age) {
		this.age = age;
	}

	public int getepi() {
		return epi;
	}

	public void setepi(int epi) {
		this.epi = epi;
	}

	public String getsummary() {
		return summary;
	}

	public void setsummary(String summary) {
		this.summary = summary;
	}

	public String getdirector() {
		return director;
	}

	public void setdirector(String director) {
		this.director = director;
	}

	public String getactor() {
		return actor;
	}

	public void setactor(String actor) {
		this.actor = actor;
	}

	public String getgenre() {
		return genre;
	}

	public void setgenre(String genre) {
		this.genre = genre;
	}

	public String getnation() {
		return nation;
	}

	public void setnation(String nation) {
		this.nation = nation;
	}

	public int getopendate() {
		return opendate;
	}

	public void setopendate(int opendate) {
		this.opendate = opendate;
	}

	public double getrating() {
		return rating;
	}

	public void setrating(double rating) {
		this.rating = rating;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getTrailer() {
		return trailer;
	}

	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}

	
}
