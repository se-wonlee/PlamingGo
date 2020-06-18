package com.tech.PlamingGo.page;

public class MPageVo {
	private Integer displayRowCount = 9;			// 한 페이지 화면에 출력할 데이터 개수
	private Integer rowStart;						// 시작행 번호
	private Integer rowEnd;							// 종료행 번호
	private Integer totPage;						// 전체 페이지 수
	private Integer totRow = 0;						// 전체 데이터 수
	private Integer page;							// 현재 페이지
	private Integer pageStart;						// 시작 페이지
	private Integer pageEnd;						// 종료 페이지
	
	
	// 전체 드라마 데이터의 개수(totDrama)를 이용하여 "페이지 수 계산"
	public void pageCalculate(Integer totMovie) {
		getPage();									// Getter 에서 현재페이지 가져오기
		totRow = totMovie;								// 받아온 total을 totRow로 대입 → 전체 데이터 수
		totPage = (int) (totMovie / displayRowCount);	// 전체 페이지 수 = 전체 데이터 수 / 한 페이지에 출력할 데이터 개수 의 몫
		
		if (totMovie % displayRowCount > 0) {			// 나머지 > 0 = 딱 나누어져서 떨어지지 않으면 (% : 나머지 연산자)
			totPage++;								// 전체 페이지 수 +1 (나머지도 페이지에 들어가야 하므로.)
		}
		
		// 시작 페이지, 종료 페이지 구하기 공식
		// 페이징 처리 시, 12345 >> 678910 >> .. 
		// 시작 페이지는 1, 6
		// 종료 페이지는 5, 10
		// 변수 : int vRow = 4; 	
		pageStart = (page - (page - 1) % displayRowCount);
		pageEnd = pageStart + 4;
		
		if (pageEnd > totPage) {					// 종료 페이지 > 전체 페이지
			pageEnd = totPage;						// 종료 페이지 = 전체 페이지
		}
		
		// (공식) 한 페이지에 출력할 드라마 리스트 개수 = 9개
		// 1 페이지 시작 행번호 1 10 20 ...
		// 1 페이지 종료 행번호 9 18 28 ...
		rowStart = ((page - 1) * displayRowCount)+1;
		rowEnd = rowStart + displayRowCount -1;
	}

	
	// Setter, Getter
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

	
	// 현재 페이지 번호
	// 현재 페이지가 null 이거나, 0이면 1로 치환해라.
	public Integer getPage() {
		if (page == null || page == 0) {
			page = 1;					
		}
		
		
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
