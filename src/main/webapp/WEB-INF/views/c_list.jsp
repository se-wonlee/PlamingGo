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
       <h1><a href="home">Pla<span>ming</span>Go</a></h1>
 <!--        <a href="#intro" class="scrollto"><img src="img/logo.png" alt="" title=""></a> -->
      </div>
      <script type="text/javascript">
     
      </script>

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
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

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
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/qa.css" />
	<link rel="stylesheet" href="resources/css/nstyle.css" />
<div id="qamain">
    <div>
    <div id="notice" border="1" bordercolor="white" align="left">
  <tr>
  </tr>

<tr>
</div>
	
    <br />
    <br />
	<div class="section-header" align="center">
				<h2><img src="resources/img/qna2.PNG" width="8%"/>1대1 문의</h2><br />	
				<h6 style="text-shadow: 1px 1px 1px red">공개 게시판 입니다. 자유롭게 이용해주세요 :) ! <br /><br />공개적인 질문이 제한적이시라면<br />plaminggo@naver.com 으로 메일을 보내주세요!</h6>
			</div>
<article>
<table id="t" style="text-align: left">
	<tr id="tr1">
		<th id="th">아이디</th>
		<th id="th">제목</th>
		<th id="th">게시일</th>
		<th id="th">조회수</th>	
	</tr>
	<c:forEach items="${c_list }" var="dto">
		<tr id="tr">
			<td id="td">${dto.qna_id }</td>
			<td id="td">
			<%-- <c:forEach begin="1" end="${dto.bindent }">-</c:forEach> --%>
			<c:set value="${dto.qna_indent}" var="endIndent" />
			<c:forEach begin="1" end="${dto.qna_indent }" var="cnt">
				<c:if test="${cnt ne 1 }">
					&nbsp;
				</c:if>
				<c:if test="${cnt eq endIndent }">
				[　<strong>${dto.qna_id }</strong>님 답변입니다 :) !　]
				</c:if>
			
			</c:forEach>
				<a href="c_contentview?qna_num=${dto.qna_num }">${dto.qna_title }</a>
			</td>
			<td id="td">${dto.qna_date }</td>
			<td id="td">${dto.qna_hits }</td>
		</tr>
	</c:forEach>
</table>

</article>
<div align="center"><form action="c_list" id="form1" 
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
		<c:when test="${qna_title }">
			<input type="checkbox" name="searchType" 
	value="qna_title" checked />
		</c:when>
		<c:otherwise>
			<input type="checkbox" name="searchType" 
	value="qna_title" />
		</c:otherwise>
	</c:choose>
	<label>제목</label>
	
	<c:choose>
		<c:when test="${qna_content }">
			<input type="checkbox" name="searchType" 
	value="qna_content" checked="checked" />
		</c:when>
		<c:otherwise>
			<input type="checkbox" name="searchType" 
	value="qna_content" />
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


<button id="test_btn1">
<a href="c_writeview">　글작성　</a>
</button>

</div>
</form>
</div>
</div>
    </div>
    </div>
    <br />


			<!--==========================
      Subscribe Section
    ============================-->

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

