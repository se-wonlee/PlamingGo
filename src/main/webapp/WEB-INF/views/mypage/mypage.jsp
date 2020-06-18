<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>


<!DOCTYPE html>
<html lang="ko">

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
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <!-- <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
  <link rel="stylesheet" type="text/css" 
  href="${pageContext.request.contextPath }/resources/lib/bootstrap/css/mypage_bootstrap.min.css" />	

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
  href="${pageContext.request.contextPath }/resources/css/mypage_style.css" />
  	<link rel="stylesheet" type="text/css" 
  	href="${pageContext.request.contextPath }/resources/css/search.css" />
  


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
         <c:if test="${not empty sessionScope.id || code==0}">
 		<li>
			<!-- 검색 처리 : form 태그 추가 -->
			<!-- 검색창 검색 결과 후, search 페이지로 이동 -->
				<form action="search" method="get" id="form1" name="form1">
        		<input type="hidden" name="page" id="page" value="${page }" />
						<div class="box">
						  <div class="container-4">
						    <input type="search" name="searchKeyword" id="search" placeholder="제목, 배우, 감독 검색 " value="${searchKeyword }" />
						    <button type="submit" class="icon"><i class="fa fa-search"></i></button>
						  </div>
						</div>
				</form>	
	        		</li>
        </c:if>
        <c:if test="${not empty sessionScope.id }">
          <li class="menu-active"><a href="home">홈</a></li>
          <li><a href="movie">영화</a></li>
          <li><a href="drama">드라마</a></li>
          <li><a href="customer">고객센터</a></li>
         </c:if> 
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
	<section id="about">
		<div class="container">
			<br /> <br />
			<div class="row">
				<div class="col-lg-6">
					<h2 style="padding: 70px 0 0 150px; color: white;">${id }</h4>
					</h2>
				<div id="divtop_menu" align="right" style=" float: right;">
					<a class="dtmenu" href="mypage">내정보</a>
				<a class="dtmenu" href="mypage_out_terms">회원탈퇴</a>
				</div>
				</div>
			</div>
		</div>
	</section>

	<section id="mpsection">
  <div id ="divbottom" >
  	<div id="div_bottom_center" align="center">
  		<c:if test="${mypage.user_level eq '베이직' }">
  	<img src="${pageContext.request.contextPath }/resources/img/ticket_basic.png" alt="" style="
    width: 600px;
"/>
  	</c:if>
  	<c:if test="${mypage.user_level eq '스탠다드' }">
  	<img src="${pageContext.request.contextPath }/resources/img/ticket_standard.png" alt="" style="
    width: 600px;
"/>
  	</c:if>
  		<c:if test="${mypage.user_level eq '프리미엄' }">
  	<img src="${pageContext.request.contextPath }/resources/img/ticket_premium.png" alt="" style="
    width: 600px;
"/>
  	</c:if>
  <div id="div_basic"></div>
  <div style="margin-top: 50px;">
  <a id="buyt" href="ticket_list">티켓구매</a>
  	</div>
  	
  <form action="mypage_modi">
  	<input type="hidden" name="myname" value="${mypage.user_name }" />
  	<input type="hidden" name="mymail" value="${mypage.user_mail }" />
  	<input type="hidden" name="myphone" value="${mypage.user_phone }" />
  	<input type="hidden" name="myid" value="${mypage.user_id }" />
  	<input type="hidden" name="mybirth" value="${mypage.user_birth }" />
  	<input type="hidden" name="myregdate" value="${mypage.user_regdate }" />
  	<table style="margin-top: 90px; width: 400px; color: #ffffff;">
  
  	
  	<tr>
  	
  	<td style="text-align: center;"> <h3 style="color: #0000ff;">회원정보</h3></td>
  	</tr>
  	
  		<tr>
  	<td id="mptd">아이디</td>
  	<td id="mptd" >${mypage.user_id }</td>
  	</tr>
  	
  	<tr>
  	<td id="mptd">이름</td>
  	<td id="mptd" >${mypage.user_name }</td>
  	</tr>
  	
  		<tr>
  	<td id="mptd">이메일</td>
  	<td id="mptd" >${mypage.user_mail }</td>
  	</tr>
  	
  		<tr>
  	<td id="mptd">전화번호</td>
  	<td id="mptd" >${mypage.user_phone }</td>
  	</tr>
  	
  			<tr>
  	<td id="mptd">생년월일</td>
  	<td id="mptd" >${mypage.user_birth }</td>
  	</tr>
  	
  			<tr>
  	<td id="mptd">가입일</td>
  	<td id="mptd" >${mypage.user_regdate }</td>
  	</tr>
  	
  	
  	</table>
  	
  	<button type="submit" id="mymodi" > 수정 </button>
  		</form>	
  	</div>
  </div>
</section>
  
  


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
  <script src='<c:url value="/resources/lib/jquery/jquery.min.js"></c:url>'></script>
  <script src='<c:url value="/resources/lib/jquery/jquery-migrate.min.js"></c:url>'></script>
  <script src='<c:url value="/resources/lib/bootstrap/js/bootstrap.bundle.min.js"></c:url>'></script>
  <script src='<c:url value="/resources/lib/easing/easing.min.js"></c:url>'></script>
  <script src='<c:url value="/resources/lib/superfish/hoverIntent.js"></c:url>'></script>
  <script src='<c:url value="/resources/lib/superfish/superfish.min.js"></c:url>'></script>
  <script src='<c:url value="/resources/lib/wow/wow.min.js"></c:url>'></script>
  <script src='<c:url value="/resources/lib/venobox/venobox.min.js"></c:url>'></script>
  <script src='<c:url value="/resources/lib/owlcarousel/owl.carousel.min.js"></c:url>'></script>

  <!-- Contact Form JavaScript File -->
  <script src='<c:url value="/resources/contactform/contactform.js"></c:url>'></script>

  <!-- Template Main Javascript File -->
  <script src='<c:url value="/resources/js/main.js"></c:url>'></script>
  
</body>

</html>

