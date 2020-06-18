<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="kr">

<head>
  <meta charset="utf-8">
  <title>PlammingGo</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<!-- <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/lib/bootstrap/css/bootstrap.min.css" />

<!-- Libraries CSS Files -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/lib/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/lib/animate/animate.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/lib/venobox/venobox.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/lib/owlcarousel/assets/owl.carousel.min.css" />

<!-- Main Stylesheet File -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/style.css" />


<!-- =======================================================
    Theme Name: TheEvent
    Theme URL: https://bootstrapmade.com/theevent-conference-event-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body>

<!--==========================
    Header
  ============================-->
	<header id="header">
		<div class="container">

			<div id="logo" class="pull-left">
				<!-- Uncomment below if you prefer to use a text logo -->
				<h1>
					<a href="#main">Pla<span>ming</span>Go
					</a>
				</h1>
				<!-- <a href="#intro" class="scrollto"><img src="resource/img/logo.png" alt=""
					title=""></a> -->
			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li class="menu-active"><a href="home">홈</a></li>
					<li><a href="movie">영화</a></li>
					<li><a href="drama">드라마</a></li>
					<li><a href="customer">고객센터</a></li>
					<c:if test="${empty sessionScope.id}">
         			 <li class="buy-tickets"><a href="login_view">로그인</a></li>
         			 </c:if>
         			 <c:if test="${not empty sessionScope.id && code!=0}">
        			  <li class="buy-tickets"><a href="logout">로그아웃</a></li>
        			  <li class="buy-tickets"><a href="mypage">내 정보</a></li>      
        			  </c:if>
        		 	 <c:if test="${code==0 }">
        			  <li class="buy-tickets"><a href="logout">로그아웃</a></li>
        		 	 <li class="buy-tickets"><a href="adminpage">관리자메뉴</a></li>
        			  </c:if>
				</ul>
			</nav>
			<!-- #nav-menu-container -->
		</div>
	</header>
	<!-- #header -->
	<!--==========================
    Intro Section
  ============================-->


	<!--==========================
      About Section
    ============================-->
	<section id="about">
		<div class="container">
			<br /> <br />
			<div class="row">
				<div class="col-lg-6">
					<h2>고객센터</h2>
					<p>플라밍고 고객센터입니다. 무엇을 도와드릴까요?</p>
				</div>

			</div>
		</div>
	</section>

	<!--==========================
      Speakers Section
    ============================-->


	<!--==========================
      Schedule Section
    ============================-->

	<!--==========================
      Venue Section
    ============================-->

	<!--==========================
      Hotels Section
    ============================-->


	<!--==========================
      Gallery Section
    ============================-->


	<!--==========================
      Sponsors Section
    ============================-->

	<!--==========================
      F.A.Q Section
    ============================-->
	<table id="notice" border="1" bordercolor="white" align="left">
		
		<tr>
	</table>
	<section id="faq" class="wow fadeInUp">
		<div class="container">

			<div class="section-header">
				<h2 style="color: black">공지사항</h2>
			</div>
<div class="container">	
		<div class="row row-gutter-lg">
		<div class="row" align="center">
			<div class="col-md-4">
			<h5 style="text-shadow: 1px 1px 1px red"><strong>새로운 소식</strong></h5>
				<br />
				<br />
				<div class="text-gray margin-bottom-xxl">
					<a href="#">5월 26일(화) 접속 장애 발생 안내 (조치완료)</a>
					<br /><br /><span>2020-05-26</span>
				
				</div>
				<br />
				<br />
				<div class="text-gray margin-bottom-xxl">
					<a href="#">5월 26일 (화) 실시간 업데이트 오전 업무 중단 안...</a>
					<br /><br /><span>2020-05-26</span>
				
				</div>
				<hr />
			</div>
			<hr />
			<br /><br />
			
			<div class="col-md-4">
			<h5 style="text-shadow: 1px 1px 1px red"><strong>환영합니다 !</strong></h5>
				<br />
				<br />
				<div class="text-gray margin-bottom-xxl">
					플라밍고에서 최신 영화, 드라마를 즐겨보세요 :)!
					<br /><br /><span>#플라밍고</span><span>#최신영화</span><span>#최신드라마</span>
					<br /><br />
					<a href="/PlamingGo/home"><img src="resources/img/logo1.PNG"></a>
				</div>
				
			<br /><hr />
			</div>

			<div class="col-md-4">
			<h5 style="text-shadow: 1px 1px 1px red"><strong>문의</strong></h5>
				<br />
				<br />
				<div class="text-gray margin-bottom-xxl">
					사용이 어렵거나 기술문의, 기능 요청이 있을 경우 언제든지
					문의주세요. 무료 고객의 경우<br /> 문의 내용에 따라 답변이 지연될 수 있습니다.
				</div>
				<br />
				<br />
				<a href="/PlamingGo/c_list" title="Contact" itemprop="url" class="btn btn-lg btn-primary width-4" style="background-color: #f82249">문의하기</a>
			<br /><br /><hr />
			</div>
			<hr />
			<br />
			<br />
		</div>
	</div>
	<hr />			
	<br />
	<br />		
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/qa.css" />
	<link rel="stylesheet" href="resources/css/nstyle.css" />
<article>
<table id="t">
	<tr id="tr2">
		<th id="th">작성자</th>
		<th id="th">제목</th>
		<th id="th">게시일</th>
		<th id="th">조회수</th>	
	</tr>
	<c:forEach items="${customer }" var="cdto">
		<tr id="tr">
			<td id="td">${cdto.no_id }</td>
			<td id="td">
			<%-- <c:forEach begin="1" end="${dto.bindent }">-</c:forEach> --%>
			<c:set value="${cdto.no_indent}" var="endIndent" />
			<c:forEach begin="1" end="${cdto.no_indent }" var="cnt">
				<c:if test="${cnt ne 1 }">
					&nbsp;
				</c:if>
				<c:if test="${cnt eq endIndent }">
				</c:if>
			
			</c:forEach>
				<a href="n_contentview?no_num=${cdto.no_num }">${cdto.no_title }</a>
			</td>
			<td id="td">${cdto.no_date }</td>
			<td id="td">${cdto.no_hits }</td>
		</tr>
	</c:forEach>
</table>

</article>
<div align="center"><form action="customer" id="form1" 
name="form1" method="post">
<hr />
<input type="hidden" name="page" id="page" value="" />
<script type="text/javascript">
						function fnSubmitForm(page){ 
							document.form1.page.value=page;
							document.form1.submit();
					}
</script>
<c:if test="${searchVo.totPage>1 }">
	<c:if test="${searchVo.page>1 }">
		<%-- <a href="list?page=1">[처음]</a> 
		<a href="list?page=${searchVo.page-1 }">[이전]</a>  --%>
		<a href="javascript:fnSubmitForm(${1});">[처음]</a>
		<a href="javascript:fnSubmitForm(${searchVo.page-1});">[이전]</a>
	</c:if>
	<c:forEach begin="${searchVo.pageStart }" 
	end="${searchVo.pageEnd }" var="i">
		<c:url var="pageLink" value="board2List">
			<c:param name="page" value="${i}" />
		</c:url>
		<c:choose>
			<c:when test="${i eq searchVo.page }">
				<strong style="color:purple">${i } &nbsp;</strong> 
			</c:when>
			<c:otherwise>
				<a href="javascript:fnSubmitForm(${i});">${i } &nbsp;</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${searchVo.totPage>searchVo.page }">
		<%-- <a href="list?page=${searchVo.page+1 }">[다음]</a> 
		<a href="list?page=${searchVo.totPage }">[마지막]</a>  --%>
		<a href="javascript:fnSubmitForm(${searchVo.page+1});">[다음]</a>
		<a href="javascript:fnSubmitForm(${searchVo.totPage});">[마지막]</a>
	</c:if>
</c:if>
<div>
	<c:choose>
		<c:when test="${no_title }">
			<input type="checkbox" name="searchType" 
	value="no_title" checked />
		</c:when>
		<c:otherwise>
			<input type="checkbox" name="searchType" 
	value="no_title" />
		</c:otherwise>
	</c:choose>
	
	<label>제목</label>
	
	<c:choose>
		<c:when test="${no_content }">
			<input type="checkbox" name="searchType" 
	value="no_content" checked="checked" />
		</c:when>
		<c:otherwise>
			<input type="checkbox" name="searchType" 
	value="no_content" />
		</c:otherwise>
	</c:choose>
	<label>내용</label>
	<input type="text" name="sk" style="width:150px;" 
	maxlength="50" value="${searchKeyword }" />
	<input type="submit" name="btn_search" value="검색" />

<style>
#test_btn1{ 
  background:#f82249;
  color:red;
  border:none;
  position:relative;
  height:30px;
  font-size:1.0em;
  padding:0 1em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
  border-radius: 15px;
}

#test_btn1 a{
  background:none;
  color:white;
}

#test_btn1:hover a{
  background:none;
  color:red;
}
#test_btn1:hover{
  background:none;
  color:;
}
#test_btn1:before,#test_btn1:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: red;
  transition:400ms ease all;
}
#test_btn1:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
#test_btn1:hover:before,#test_btn1:hover:after{
  width:100%;
  transition:800ms ease all;
}
}
</style>

<c:if test="${code==0 }">
<button id="test_btn1">
<a href="n_writeview">　글작성　</a>
</button>
</c:if>

</div>


</form>
</div>
<br />
<br />
<hr />
<br />
<br />
			<div class="section-header">
				<h2 style="color: black">자주 묻는 질문</h2>
			</div>

			<div class="row justify-content-center">
				<div class="col-lg-9">
					<ul id="faq-list">

						<li>
							<style>
body {
	font-size: small;
	font-weight: bold;
}

p#t1 {
	font-size: 1.0em;
}

p#t2 {
	font-size: 1.6em;
}

p#t3 {
	font-size: 1.3em;
}

h3 {
	font: italic 50px arial, sans-serif;
}

h4 {
	font-size: 15px;
}
</style> <a data-toggle="collapse" class="collapsed" href="#faq1">결제 관리 문의<i
								class="fa fa-minus-circle"></i></a>
							<div id="faq1" class="collapse" data-parent="#faq-list">
								<div>
									<p id="t2">결제 취소(환불) 하고 싶어요.</p>
									<h4>
										유료 결제된 내역 확인을위해 위에 <1대1 문의하기>로 <br />
										<br />정보 보내주시면 확인 도와드릴게요. <br /> <br /> - 이용권 구독하신 플라밍고
										이메일 주소<br /> - 결제일 <br /> - 결제 금액 <br /> - 결제처 (ex. 구글,애플,
										휴대폰 소액결제, 카드사 혹은 이니시스) <br /> <br />
									</h4>
								</div>
							</div>
						</li>

						<li><a data-toggle="collapse" href="#faq2" class="collapsed">로그인
								및 계정 관리 문의<i class="fa fa-minus-circle"></i>
						</a>
							<div id="faq2" class="collapse" data-parent="#faq-list">
								<div>
									<p id="t2">이메일 주소를 잊으신 경우</p>
									<h4>
										위에 <1:1 문의하기>로 아래 내용 모두 보내주시면 조회 도와드릴게요! <br /> <br /> -

										가입하셨다고 예상되는 이메일 주소 혹은 가입시 사용했던 정보(이동전화번호,주소등) 모두 알려주세요.<br />
										<br /> - 무료 기간 후 결제된 적이 있다면, 결제 문자 혹은 메일 등 결제 내역 캡처본 꼭 보내주세요.
										<br /> <br />
									</h4>
								</div>
								<div>
									<p id="t2">비밀번호를 잊으신경우</p>
									<h4>
										- pc 웹에서 비밀번호 찾기 : <br /> 로그인 화면 > '비밀번호를 잊어버리셨나요?' > 가입한 이메일
										입력 > <br />수신된 메일에서 변경 원하는 비밀번호 입력 <br /> <br /> - 모바일 앱에서
										비밀번호 찾기: <br /> 로그인 화면 > '비밀번호를 잊으셨나요?' > 가입한 이메일 입력 > <br />
										수신된 메일에서 변경 원하는 비밀번호 입력 <br /> <br /> - 가입하신 이메일 주소가 잘못 되었거나
										메일수신이 안 되는 경우 <br /> 위에 <1:1 문의하기>로 플라밍고에 가입한 이메일주소와 함께
										문의주세요. <br /> <br /> 
									</h4>
								</div>
								<div>
									<p id="t2">가입한 이메일 주소와 비밀번호를 변경하고 싶어요</p>
									<h4>
										이메일과 비밀번호는 플라밍고 '설정'에서 변경할 수 있습니다. <br /> <br /> pc 웹에서 변경하기
										<br /> - 이메일변경 : 설정 > 프로필의 이메일 변경 <br /> - 비밀번호 변경 : 설정 >
										프로필의 비밀번호 변경 <br /> <br /> 앱에서 변경하기 <br /> - 이메일 변경 : 마이페이지
										> 설정 > 계정 설정 > 이메일 변경 <br /> - 비밀번호 변경 : 마이페이지 > 설정 >계정 설정 >
										비밀번호 변경 <br /> <br />
									</h4>
								</div>
								<div>
									<p id="t2">삭제한 프로필을 다시 복구할 수 있나요?</p>
									<h4>
										이미 삭제된 프로필의 경우 복구가 어려우니, 삭제 이전에 반드시 주의 부탁드려요. <br /> <br />
									</h4>
								</div>
							</div></li>

						<li><a data-toggle="collapse" href="#faq3" class="collapsed">재생
								및 화질 문의<i class="fa fa-minus-circle"></i>
						</a>
							<div id="faq3" class="collapse" data-parent="#faq-list">
								<div>
									<p id="t2">감상 가능한 브라우저를 알려주세요.</p>
									<h4>
										플라밍고는 크롬브라우저, Edge, 파이어폭스, 네이버 웨일에서 감상이 가능합니다. <br /> <br />
										원활한 감상을 위해 사용하시는 기기의 os와 브라우저를 최신 버전으로 유지 부탁드립니다:) <br /> <br />
									</h4>
								</div>
								<div>
									<p id="t2">인터넷 브라우저 (웹) 에서 재생이 잘 안돼요.</p>
									<h4>
										플라밍고는 콘텐츠 보호를 위해 DRM기술이 적용되어 있어, <br /> <br /> 사용하시는 pc와
										DRM이 정상적으로 호환되지 않을 경우 재생이 어려울 수 있어요. <br /> <br />
										<h4>
								</div>
								<div>
									<p id="t2">소리가 나오지 않아요.</p>
									<h4>
										1) 플레이어에서 음소거가 되어있는지 확인해 주세요. <br /> 감상 플레이어 페이지에서 하단에 스피커
										모양의 아이콘을 클릭하시고 <br /> 볼륨을 높이거나, 키보드의 위 화살표 버튼을 눌러 음량을 조절해
										보세요. <br /> <br /> 2) 윈도우 혹은 맥에서 음소거가 되어있는지 확인해 주세요. <br />
										윈도우 우측 하단 스피커 모양의 아이콘을 눌러 볼륨을 조절해 보세요. <br /> <br /> 3) 스피커
										혹은 이어폰에서 음소거가 되어있는지 확인해 주세요. <br />사용하시는 스피커나 이어폰의 볼륨을 조절
										해보세요. <br /> 그 외의 경우에는 <1대1 문의하기>로 문의주세요. <br /> <br />
									</h4>
								</div>
								<div>
									<p id="t2">크롬(Chrome) 브라우저에서 재생이 안돼요.</p>
									<h4>
										크롬에서 아래 두 가지 경우로 인해 영상 재생에 오류가 발생할 수 있어요. <br /> - 크롬 브라우저를최신
										버전으로 업데이트 하지 않은 경우 <br /> - 보안 설정 또는 프로그램으로 인해 차단된 구성 요소가 있는
										경우 <br /> <br /> 아래절차에 따라 업데이트 진행 해주세요.<br /> <br /> * 크롬
										브라우저 우측 상단의 설정 > 도움말 > Chrome 정보 > <br /> 최신 버전으로 업데이트 * 크롬
										주소창에 chrome://components 입력 > <br /> WidevineCdm 항목에서 [업데이트
										상태 확인] 버튼 클릭 <br /> <br />* 크롬브라우저에서 버퍼링이 심한 경우 [하드웨어 가속]
										비활성화를 진행 <br /> 크롬 실행 > 설정 > 고급설정표시 > 시스템의 '가능한 경우 하드웨어 가속
										사용' 을 해제 <br /> > 브라우저 재실행 후 플라밍고 접속 * 크롬 주소창에 <br />
										chrome://settings/content/protectedContent 입력 <br /> <br />>
										'사이트에서 보호된 콘텐트를 재생해도록 허용(권장)' 옵션 활성화 <br /> * 크롬 브라우저의 쿠키 및
										캐시 데이터 삭제 아래 링크에서 기간은 <br /> '전체 기간' 으로 설정하시고 삭제 해주세요. <br />
										chrome://settings/clearBrowserData
									</h4>
									<br /> <br />
									<div>
										<p id="t2">화질 문의</p>
										<h4>
											플라밍고는 대부분의 작품을 1080p(FHD)로 서비스하고 있어요. <br /> 다만 원활한 감상을 위해
											이용하시는 환경에 따라 <br /> 자동으로 1080p, 720p, 480p, 360p로 설정되어
											재생되어요. <br /> 아래환경에서는 1080p 재생이 제한될 수 있는 점 참고 부탁드려요. <br />
											<br /> - 크롬브라우저에서 [하드웨어 가속]이 활성화된 경우 : <br /> 크롬 실행 > 설정 >
											고급설정표시 > 시스템의 '가능한 경우 하드웨어 가속 사용' 을 해제 <br /> > 브라우저 재실행 후
											플라밍고 접속 <br /> <br /> - 네트워크 환경이 원활하지 않은 경우 : <br /> 기숙사,
											병원, 회사, 학교 등 네트워크 대역폭이 제한된 경우 : <br /> WiFi로 접속 시 공유기와의 거리가
											멀거나 장애물이 있는 경우 <br /> <br /> - PC/노트북에서 여러 작업을 동시에 진행하는 경우
											<br /> * 원본 자체가 저화질인 일부 컨텐츠의 경우<br /> (오래전에 제작된 작품 등) 원활한
											네트워크 환경이라도<br />고화질로 자동변환 되지않는 점 참고해주세요. <br /> <br />
										</h4>
										<br /> <br />
									</div>
									<div>
										<p id="t2">영상의 소리가 작거나 이상해요.</p>
										<h4>
											감상하시는 작품의 소리가 작거나 이상이 있나요?<br /> 위에 <1대1 문의하기>로 문의주시면 확인 후 답변
											드릴게요. <br /> <br /> 1. 전체적인 음량이 작나요? 혹은 인물들의 대사 음량은 작고 <br />
											사운드트랙 및 효과음들은 크게 들리나요? <br /> <br /> 2. 감상 시 음향에 문제가 있었던
											작품의
											<작품명> 들을 알려주세요. <br />
											<br />
											3. 어떤 기기에서 감상 하셨는지 자세하게 알려주세요. <br />
											(ex 윈도우 및 크롬 브라우저) <br />
											<br />
										</h4>
									</div>
								</div>
							</div></li>

						<li><a data-toggle="collapse" href="#faq4" class="collapsed">자막
								및 작품문제 제보<i class="fa fa-minus-circle"></i>
						</a>
							<div id="faq4" class="collapse" data-parent="#faq-list">
								<div>
									<p id="t2">자막및 작품문제 제보</p>
									<h4>
										자막 혹은 작품 정보에 문제가 있는 경우 <br /> 위에 <1대1 문의하기>를 눌러서 제보해 주세요. <br />
										확인후 최대한 반영하도록 할게요. <br /> <br /> - 자막 오역 및 맞춤법 <br /> -
										줄거리, 감독, 배우 등 작품 설명 내용 오류 <br /> <br /> *플라밍고는 컨텐츠 권리사에서
										제공받은 공식 자막을 서비스하고 있기 때문에, <br /> 임의적인 수정이 어려울 수 있습니다. <br />
										<br /> * 심의를 받은 영상 자체에 자막이 입혀져 있는 경우에는 수정이 불가할 수 있습니다. <br />
										아래 문제의 경우 정확한 확인을 위해 위에 <1대1 문의하기>로 문의 부탁드려요. <br /> <br /> -
										자막 혹은 음성의 싱크 문제 <br /> - 자막이 나오지 않는 경우 <br /> - 버퍼링 <br />
										- 화질 저하 <br /> - 재생 에러 <br /> <br />
									</h4>
								</div>
							</div></li>

						<li><a data-toggle="collapse" href="#faq5" class="collapsed">기타
								서비스 문의<i class="fa fa-minus-circle"></i>
						</a>
							<div id="faq5" class="collapse" data-parent="#faq-list">
								<div>
									<p id="t2">새로운 기능을 제안하고 싶어요.</p>
									<h4>
										플라밍고는 회원분들의 의견을 가장 소중하게 생각하고 있어요. <br /> <br /> 플라밍고 사용성
										개선 관련해 위에 <1:1 문의하기>로 의견 주시면 <br /> <br /> 논의를 통해 반영될 수 있도록
										할게요! <br /> <br />
									</h4>
								</div>
								<div>
									<p id="t2">해외에서도 플라밍고를 이용할 수 있나요?</p>
									<h4>
										아쉽게도 해외에서는 플라밍고를 이용할 수 없어요. <br /> <br /> 영상의 권리를 가진 권리사와의
										계약 때문에<br /> <br /> 다운로드 영상을 포함한 플라밍고 시청 및 결제는 <br /> <br />
										한국 내에서만 가능한 점 양해 부탁드려요.. <br />
										<br />
									</h4>
								</div>
								<div>
									<p id="t2">작품 추가 제안</p>
									<h4>
										보고싶은 영화나 TV 프로그램이 플라밍고에 없다면, <br />
										<br /> 위에 <1대1 문의하기>를 눌러 문의 해주세요. <br />
										<br /> 작품 업데이트 계획에 반영할게요! <br />
										<br /> "플라밍고"에서는 별점을 남기고 코멘트를 작성할 수 있어요. <br />
										<br />
									</h4>
								</div>
							</div></li>
				</div>


			</div>


			<!--==========================
      Section
    ===========================-->


			<!--==========================
      Buy Ticket Section
    ============================-->

			<!-- Modal Order Form -->
			<div id="buy-ticket-modal" class="modal fade">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Buy Tickets</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form method="POST" action="#">
								<div class="form-group">
									<input type="text" class="form-control" name="your-name"
										placeholder="Your Name">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="your-email"
										placeholder="Your Email">
								</div>
								<div class="form-group">
									<select id="ticket-type" name="ticket-type"
										class="form-control">
										<option value="">-- Select Your Ticket Type --</option>
										<option value="standard-access">Standard Access</option>
										<option value="pro-access">Pro Access</option>
										<option value="premium-access">Premium Access</option>
									</select>
								</div>
								<div class="text-center">
									<button type="submit" class="btn">Buy Now</button>
								</div>
							</form>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
	</section>

	<!--==========================
      Contact Section
    ============================-->
	</main>
	


	<!--==========================
    Footer
  ============================-->
	<footer id="footer">
    	 <div class="footer-top">
      		<div class="container">
        		<div class="row">

          			<div class="col-lg-3 col-md-6 footer-info">
            			<h1><a href="../PlamingGo">Pla<span>ming</span>Go</a></h1>
            			<p>In alias aperiam. Placeat tempore facere. Officiis voluptate ipsam vel eveniet est dolor et totam porro. Perspiciatis ad omnis fugit.</p>
         			</div>

          			<div class="col-lg-3 col-md-6 footer-links">
            			<h4>Useful Links</h4>
            			<ul>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Home</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">About us</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Terms of service</a></li>
		             
		            	</ul>
		          	</div>
		
		
		          	<div class="col-lg-3 col-md-6 footer-contact">
		            	<h4>Contact Us</h4>
		            	<p>
		              		A108 Adam Street <br>
		              		New York, NY 535022<br>
		              		United States <br>
		              		<strong>Phone:</strong> +1 5589 55488 55<br>
		              		<strong>Email:</strong> info@example.com<br>
		            	</p>
		
		          
					</div>

		          	<div class="col-lg-3 col-md-6 footer-links">
		            	<h4>Useful Links</h4>
		           		<div class="social-links">
			            	<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
			            	<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
			              	<a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
			              	<a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
			              	
			            </div>
		          	</div>
				</div>
			</div>
		</div> 

    <div class="container">
    	<div class="copyright">
        	&copy; Copyright <strong>TheEvent</strong>. All Rights Reserved
      	</div>
    	<div class="credits">
	        <!--
	          All the links in the footer should remain intact.
	          You can delete the links only if you purchased the pro version.
	          Licensing information: https://bootstrapmade.com/license/
	          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=TheEvent
	        -->
        	Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    	</div>
    </div>
	</footer><!-- #footer -->

	<a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

	<!-- JavaScript Libraries -->
	<script
		src='<c:url value="/resources/lib/jquery/jquery.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/lib/jquery/jquery-migrate.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/lib/bootstrap/js/bootstrap.bundle.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/lib/easing/easing.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/lib/superfish/hoverIntent.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/lib/superfish/superfish.min.js"></c:url>'></script>
	<script src='<c:url value="/resources/lib/wow/wow.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/lib/venobox/venobox.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/lib/owlcarousel/owl.carousel.min.js"></c:url>'></script>

	<!-- Contact Form JavaScript File -->
	<script
		src='<c:url value="/resources/contactform/contactform.js"></c:url>'></script>

	<!-- Template Main Javascript File -->
	<script src='<c:url value="/resources/js/main.js"></c:url>'></script>

</body>

</html>

