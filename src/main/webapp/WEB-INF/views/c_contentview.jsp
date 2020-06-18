<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>TheEvent - Bootstrap Event Template</title>
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
          <c:if test="${not empty sessionScope.id }">
          <li class="buy-tickets"><a href="logout">로그아웃</a></li>
          <li class="buy-tickets"><a href="mypage">${id }</a></li>      
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
<br />
<h2 align="center"><strong>문의내용</strong><br /></h2>
<div align="center">
<h6 style="text-shadow: 1px 1px 1px red">문의내용을 확인해주세요 :) !</h6>
</div>
</div>
<form action="c_modify" method="post">
<input type="hidden" name="qna_num"
 value="${c_contentview.qna_num }" />
<table>
	<tr>
		<td class="left">작성자</td>
		<td>
			<input type="text" name="qna_id"
			 value="${c_contentview.qna_id  }" size="115"/>
		</td>
	</tr>
	<tr>
		<td class="left">제목</td>
		<td>
			<input type="text" name="qna_title"
			value="${c_contentview.qna_title  }" size="115"/>
		</td>
	</tr>
	<tr>
		<td class="left">내용</td>
		<td>
			<textarea name="qna_content" cols="115" rows="15" >
			${c_contentview.qna_content  }
			</textarea>
		</td>
	</tr>	
	<tr>
		<td class="left">조회수</td>
		<td>${c_contentview.qna_hits }</td>
	</tr>
	<tr>
	<tr>
		<td class="left">첨부</td>
		<td>
			<a href="download?p=resources/upload/&f=${c_contentview.fileSrc }&qna_num=${c_contentview.qna_num }">
				${c_contentview.fileSrc }
			</a>
		</td>
	</tr>
		<td colspan="2">
		
		<c:if test="${code==0 }">
		<input type="submit" value="수정" /> &nbsp;&nbsp;		
		</c:if>
		
		<input type="button" onclick="location.href='http://localhost:9000/PlamingGo/customer' " value="목록보기" /> &nbsp;&nbsp;
		<!-- <a href="c_list">목록보기</a> &nbsp;&nbsp; -->
		
		<c:if test="${code==0 }">		
		
		<input type="button" onclick="location.href='http://localhost:9000/PlamingGo/c_delete?qna_num=${c_contentview.qna_num }' " value="삭제" /> &nbsp;&nbsp;
		<%-- <a href="c_delete?qna_num=${c_contentview.qna_num }">삭제</a> &nbsp;&nbsp; --%>
		
		<input type="button" onclick="location.href='http://localhost:9000/PlamingGo/c_replyview?qna_num=${c_contentview.qna_num  }' " value="답변" /> &nbsp;&nbsp;
		<%-- <a href="c_replyview?qna_num=${c_contentview.qna_num  }">답변</a> &nbsp;&nbsp; --%>
		</c:if>
	
		</td>
	</tr>
</table>
</form>


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
		              		(주)미래능력개발교육원 <br>
		              		서울시 강동구 천호대로 1095 <br />
		              		현대코아 3층<br>
		              		<strong>Phone:</strong> +1 5589 55488 55<br>
		              		<strong>Email:</strong> plaminggo@naver.com<br>
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

