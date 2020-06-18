<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
  href="${pageContext.request.contextPath }/resources/css/adminpage_style.css" />
  
  <!-- ** 검색창 CSS (search.css) -->
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
<section id="mpsection">
<div id ="divtop" ">
 	<div id="profile"">
 	<h2 style=" padding: 70px 0 0 150px; color: white;">${id }</h4></h2>
 	</div>
 	
 	<div id="divtop_menu">
 	<a class="dtmenu" href="adminpage">관리메뉴</a>
 	<a class="dtmenu" href="admin_manage">회원관리</a>
 	</div>
  </div>
  
  
  <div id ="divbottom" >
  	<div id="div_bottom_center">
  	<nav style="margin-bottom: 5px;">
  <a style="background-image:url('${pageContext.request.contextPath }/resources/img/starwarsbg.jpg');
   background-position: center;
   background-size: cover;" id ="adminnav" href="admin_manage"><h5 style="
    color: white;
">통계</h5></a>
  <a id ="adminnav"  href="movie"    style=" background: url(resources/img/hotels/1.jpg);
    background-position: center;
    background-size: contain;"><h5 style="
    color: white;
">영화</h5></a>
  	</nav>
  	<nav ">
  	 <a id ="adminnav"  href="drama" style="background: url(resources/upload-drama/why-women-kill11.jpg);
    background-position: center;
    background-size: contain;"><h5 style="
    color: white;
">드라마</h5></a>
  <a style="background-image:url('${pageContext.request.contextPath }/resources/img/The_Terror_Live.jpg');
   background-position: center;
   background-size: cover;" id ="adminnav" href="customer">
   <h5 style="color: white;">문의관리</h5></a>
  	</nav>
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
            <a href="../PlamingGo"><img src="resources/img/로고.png" alt="PlamingGo"></a>
            <p>플라밍고는 각종 수상 경력에 빛나는 TV 프로그램, 영화, 애니메이션, 다큐멘터리 등 다양한 콘텐츠를 인터넷 연결이 가능한 수천 종의 디바이스에서 시청할 수 있는 스트리밍 서비스입니다.
			무궁무진한 콘텐츠가 준비되어 있으며 매주 새로운 TV 프로그램과 영화가 제공됩니다.</p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>메뉴</h4>
            <ul>
              <li><i class="fa fa-angle-right"></i> <a href="../PlamingGo">홈</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="movie">영화</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="drama">드라마</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="customer">고객센터</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="mypage">마이페이지</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>소셜 네트워크</h4>
            	<div class="social-links">
	              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
	              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
	              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
	              <a href="#" class="google-plus"><i class="fa fa-youtube"></i></a>
            	</div>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>주소</h4>
            <p>
             	서울시 강동구 천호대로 1095<br>
             	현대코아 3층<br>
             	PlamingGo <br>
              <strong>Phone:</strong> 02-441-6006<br>
              <strong>Email:</strong> plaminggo@gmail.com<br>
            </p>
		 </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>PlamingGo</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=TheEvent
        -->
        Made by 42평원룸
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

