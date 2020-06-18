package com.tech.PlamingGo.page;

public class MSearchVo extends MPageVo {			// PageVo 를 상속받음
	
	private String groupno;						// 게시판 그룹
	private String searchKeyword;				// 검색 키워드
	private String searchType;					// 검색 필드 : 제목, 배우, 감독
	private String[] searchTypeArray;			// 검색 필드를 배열로 변환 → Getter만 사용
	
	
	// Setter, Getter
	public String getGroupno() {
		return groupno;
	}
	public void setGroupno(String groupno) {
		this.groupno = groupno;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String[] getSearchTypeArray() {
		return searchType.split(",");			// 배열에는 searchType에서 ,를 제외한 것(제목 배우 감독)을 리턴	
	}

	
}
