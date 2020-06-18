<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">

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
  href="${pageContext.request.contextPath }/resources/css/style_login.css" />
  

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
       <!--  <a href="#intro" class="scrollto"><img src="img/logo.png" alt="" title=""></a> -->
      </div>

      <nav id="nav-menu-container">
      <ul class="nav-menu">
        <c:if test="${not empty sessionScope.id || code==0}">
 		<li class="menu-active">       
        <form method="POST" action="drama_boot">
          <div class="form-row justify-content-center">
            <div class="col-auto">
              <input type="text" class="form-control" placeholder="작품 제목, 배우, 감독을 검색해보세요.">
            </div>
            <div class="col-auto">
              <button type="submit">검색</button>
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

 

    
    
    <!--==========================
      Subscribe Section
    ============================-->
    <section id="subscribe">
      <div class="container wow fadeInUp">
        <div class="section-header" style="padding-top: 220px; ">
        
          <h2>아이디 찾기</h2>
          <p><strong>PLAMINGGO</strong>계정에 등록된 이름과 이메일을 입력해 주십시오.</p>
        </div>
        

        <form method="post" action="find_id">
          <div class="form-row justify-content-center"  >
            <div class="col-auto">
              <input type="text" class="form-control" placeholder="이름을 입력해주십시오." name="find_name">
          
              
              <input type="text" class="form-control" placeholder="이메일을 입력해주십시오." name="find_mail">
              <div align="center">
             <p style="color: #dea7b1;">${msgid }</p>
             </div>
              <button type="submit" style="width: 100%; margin: 10px;" > 찾기  </button>
              
            </div>
          </div>
            <div class="col-auto" style="margin-bottom: 100px;">
           
            </div>
        </form>
        
        <div class="section-header" style="padding-top: 0px; ">
        
          <h2>비밀번호 찾기</h2>
          <p><strong>PLAMINGGO</strong>계정 ID와 이름, 전화번호를 입력해주십시오.</p>
        </div>
        

        <form method="post" action="changepw_view">
          <div class="form-row justify-content-center"  >
            <div class="col-auto">
              <input type="text" class="form-control" placeholder="아이디를 입력해주십시오." name="find_id">
              
              <input type="text" class="form-control" placeholder="이름을 입력해주십시오." name="find_name">
              
              <input type="text" class="form-control" placeholder="전화번호를 '-' 없이 입력해주십시오." name="find_phone">
          
              <div align="center">
             <p style="color: #dea7b1;">${msgpw }</p>
             </div>
              <button type="submit" style="width: 100%; margin: 10px;" > 찾기  </button>
              
            </div>
          </div>
            <div class="col-auto" style="margin-bottom: 200px;">
           
            </div>
        </form>

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

