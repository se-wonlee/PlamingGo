<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">

<head>

<script type="text/javascript">
function check(color) {
	var t=document.terms;
	if (t.t1.checked && t.t2.checked && t.t3.checked) {
		t.btn.disabled=false; //약관 셋다 체크됐을시 버튼활성화
		 t.btn.style.background=color; // 약관 셋다 체크됐을시 버튼색 변경
	}else{
		t.btn.disabled=true; // 셋중하나라도 체크되지않았다면 그대로 버튼은 비활성화
	}
}
</script>



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
  href="${pageContext.request.contextPath }/resources/css/terms_style.css" />
  

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
         <li class="menu-active"><a href="home">홈</a></li>
          <li><a href="movie">영화</a></li>
          <li><a href="drama">드라마</a></li>
          <li><a href="#review">리뷰</a></li>
          <li><a href="notice">공지사항</a></li>
          <li><a href="customer">고객센터</a></li>
           <c:if test="${empty sessionScope.id}">
          <li class="buy-tickets"><a href="login_view">로그인</a></li>
          </c:if>
          <c:if test="${not empty sessionScope.id }">
          <li class="buy-tickets"><a href="logout">로그아웃</a></li>
          <li class="buy-tickets"><a href="mypage">내 정보</a></li>      
          </c:if>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  
 <section id="subscribe">
      <div class="container wow fadeInUp">
        <div class="section-header" style="padding-top: 220px; ">
        
          <h2 style="color: #dc3545;">회원탈퇴 약관</h2>
          <p>아래 약관사항은 PlamingGo 회원 탈퇴를 위해 안내되는 필수 동의사항입니다 <br /> 회원 탈퇴이후 삭제되는 모든 정보들은<strong style="color: #dc3545;"> 복구 될 수 없음</strong>을 안내드립니다.</p>
        </div>


    
	<form method="POST" action="mypage_out" name="terms" >
          <div class="form-row justify-content-center"  >
            <div class="col-auto">
            
            <h4 id="terms" style="margin-top: 50px;">복구 불가 안내</h4>
              <div style="overflow-y:auto; width:900px; height:150px;margin-left:20px; margin-bottom : 15px; padding:18px; background-color:white;">
            <strong> PlammingGo 아이디는 재사용 및 복구 불가 안내 </strong> <br />
            <br />
            	회원탈퇴 진행 시 본인을 포함한 타인 모두 해당 <strong style="color: #dc3545;"> 계정을 복구하여 사용불가합니다.</strong> <br />
            	신중히 선택하신 후 결정해주세요.
              </div>
              
        	  <p><!-- 온클릭으로 체크할시 위에 스크립트를 불러오며 동시에 체크됐을시를 대비해 변경할 색상코드를 전달 -->
            <input type="checkbox" name="t1" onclick="check('#F82249')"/> 복구 불가 안내에 대하여 확인했으며, 동의합니다.
 			 </p>     
 			 
 			 
 			 
 			  <h4 id="terms" style="margin-top: 50px;">이용 기록 삭제 안내</h4>
              <div style="overflow-y:auto; width:900px; height:160px;margin-left:20px; margin-bottom : 15px; padding:18px; background-color:white;">
            <strong> 내정보 및 개인형 서비스 이용 기록 삭제 안내 </strong> <br />
            <br />
            	내정보 및 개인형 서비스 이용기록이 모두 삭제되며, <strong style="color: #dc3545;"> 삭제된 데이터는 복구되지 않습니다.</strong> <br />
            	삭제되는 서비스를 확인하시고, 필요한 데이터는 미리 백업을 해주세요. <br />
            	<br />
            	
            	<strong style="text-decoration: underline;">이용권</strong> &nbsp;&nbsp;&nbsp; 이용권 결제정보 및 사용중인 이용권 정보 삭제. <br />
            	<strong style="text-decoration: underline;">개인정보</strong> &nbsp;&nbsp;&nbsp; 회원가입시 등록된 개인정보 삭제. <br />
            	<strong style="text-decoration: underline;">서비스기록</strong> &nbsp;&nbsp;&nbsp; 영화 및 드라마 시청목록등 서비스 이용기록 삭제 <br />
            	
            	
              </div>
              
        	  <p><!-- 온클릭으로 체크할시 위에 스크립트를 불러오며 동시에 체크됐을시를 대비해 변경할 색상코드를 전달 -->
            <input type="checkbox" name="t2" onclick="check('#F82249')"/> 이용 기록 삭제 안내에 대하여 확인했으며, 동의합니다.
 			 </p>    
 			 
 			  
  
            <h4 id="terms">게시글 삭제 불가 안내</h4>
             <div style="overflow-y:auto; width:900px; height:150px;margin-left:20px; margin-bottom : 15px; padding:18px; background-color:white;">
				 <strong> 게시판형 서비스에 등록한 게시글 삭제 불가 안내 </strong> <br />
				<br />
				삭제를 원하는 게시글이 있다면 반드시 회원탈퇴 전 삭제하시기 바랍니다. <br />
				탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, <strong style="color: #dc3545;"> 게시글을 임의로 삭제해드릴 수 없습니다.</strong> <br />

             </div>
              <p><!-- 온클릭으로 체크할시 위에 스크립트를 불러오며 동시에 체크됐을시를 대비해 변경할 색상코드를 전달 -->
            <input type="checkbox" name="t3" onclick="check('#F82249')"/>게시글 삭제 불가 안내에 대하여 확인했으며, 동의합니다.
            </p> <!-- 최초 비활성화 상태로 해놓았으며 위에 스크립트에서 동의사항 셋다 동의됐을시 색상변경 및 활성화 -->
              <button type="submit" name="btn" style="width: 100%; margin: 10px; background-color: gray;" disabled="disabled"> 다음 </button> 
            </div>
          </div>
	</form>         
          
          <div class="col-auto" style="margin-bottom: 200px;">
           
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

