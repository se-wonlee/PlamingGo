package com.tech.PlamingGo.vopage;

public class MVPageVo {
	private Integer displayRowCount = 10;// 화면에 출력할 데이터 개수
	private Integer rowStart;// 시작행의 번호
	private Integer rowEnd;// 종료행의 번호
	private Integer totPage;// total page = 전체 페이지의 수
	private Integer totRow = 0;// total Row = 전체 데이터의 수 (0넣어서 0부터 시작하기)
	private Integer page;// 현재 페이지
	private Integer pageStart;// 시작하는 페이지
	private Integer pageEnd;// 종료 페이지
	// 1. set get만들기>>2.

	public void pageCalculate(Integer total) {
		int pageGroupCnt = 5;// 한 그룹에 표현 되는 페이지 갯수
		getPage1();

		totRow = total;// totRow(전체 데이터의 수 함수)= total(pageCalculate에 매개변수 total로 받음)
		// 전체 페이지는 = (int)(전체 데이터 나누기 화면에 출력할 갯수)
		totPage = (int) (total / displayRowCount);// 전체 페이지 수 구하기

		if (total % displayRowCount > 0) {
			totPage++;
		}
//시작하는 페이지는 현재 페이지에서 현재 페이지-1한 값을 
		pageStart = (page - (page - 1) % pageGroupCnt);
		pageEnd = pageStart + 2;// 끝나는 페이지는 시작 페이지 +2
		// 끝나는 페이지가 총 페이지보다 크다면
		if (pageEnd > totPage) {
			pageEnd = totPage;
		}

		rowStart = ((page - 1) * displayRowCount) + 1;
		rowEnd = rowStart + displayRowCount - 1;

	}
	/*
	 * a | b
	 * a || b 
	 * 둘 다 같은 의미이다.
	 * 하지만 (차이점) a|b 는 a, b의 값을 평가한다. 즉, a 가 참이라도 b 를 검사한다.
	 * a||b 의 경우 a 가 참이면 b를 검사하지 않는다. 즉 b 가 단항연산자(++ ,-- 등) 이 있어 검사할 경우와 그렇지 않을 경우에
	 * 결과에 차이가 있다.
	 */
	
	//현재 페이지 번호 구하기
	public Integer getPage1() {
		if(page == null || page ==0) {
			page = 1;
		}
		
		
		return page;
		
	}
	
	
	public Integer getDisplayRowCount() {
		return displayRowCount;
	}

	public void setDisplayRowCount(Integer displayRowCount) {
		this.displayRowCount = displayRowCount;
	}

	public Integer getRowStart() {
		return rowStart;
	}

	public void setRowStart(Integer rowStart) {
		this.rowStart = rowStart;
	}

	public Integer getRowEnd() {
		return rowEnd;
	}

	public void setRowEnd(Integer rowEnd) {
		this.rowEnd = rowEnd;
	}

	public Integer getTotPage() {
		return totPage;
	}

	public void setTotPage(Integer totPage) {
		this.totPage = totPage;
	}

	public Integer getTotRow() {
		return totRow;
	}

	public void setTotRow(Integer totRow) {
		this.totRow = totRow;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageStart() {
		return pageStart;
	}

	public void setPageStart(Integer pageStart) {
		this.pageStart = pageStart;
	}

	public Integer getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(Integer pageEnd) {
		this.pageEnd = pageEnd;
	}

}
