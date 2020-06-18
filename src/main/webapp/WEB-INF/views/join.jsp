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
  href="${pageContext.request.contextPath }/resources/css/join_style.css" />
  

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

  
 <section id="subscribe">
      <div class="container wow fadeInUp">
        <div class="section-header" style="padding-top: 220px; ">
        
          <h2>회원가입</h2>
          <p>작성후 완료를 눌러주세요</p>
        </div>
      
	<form method="POST" name="joinform" id =" joinform" action="register" >
          <div class="form-row justify-content-center"  >
            <div class="col-auto">
            
            <div>
           	 <p align="center">
           	 <strong> 이름 </strong>
           	 </p>
           	 
           	 <p>
           	 <label for="text">성</label>
           	 <input type="text" placeholder="ex)김" id="n1" name="user_name1"/>	
           	 <label for="text">이름</label>
           	 <input type="text" placeholder="ex)철수철수" id="n2" name="user_name2"/>
           	 </p>
           	 
           	 <hr />
           	 
             <p align="center">
           	 <strong> 생년월일 및 성별 </strong>
           	 </p>
           	 
           	<p align="center">
           	 <select name="user_birth1" id="b1">
           	 <option value="년">년</option>
			 <c:forEach var="i" begin="0" end="${2020-1900}"> <!-- 범위지정 최대 2020~1900 이라는 뜻 -->
			 <c:set var="yearOption" value="${2020-i}" />
		     <option value="${yearOption}">${yearOption}</option>
			 </c:forEach>
			 </select>		
			 년	
			  <select name="user_birth2" id="b2">
			 
		     <option value="월">월</option>
		     <option value="12">12</option>
		     <option value="11">11</option>
		     <option value="10">10</option>
		     <option value="09">09</option>
		     <option value="08">08</option>
		     <option value="07">07</option>
		     <option value="06">06</option>
		     <option value="05">05</option>
		     <option value="04">04</option>
		     <option value="03">03</option>
		     <option value="02">02</option>
		     <option value="01">01</option>
			 
			 </select>	
			 월
			   <select name="user_birth3" id="b3">
			   
			 <option value="일">일</option>
			 <option value="31">31</option>
			 <option value="30">30</option>
			 <option value="29">29</option>
			 <option value="28">28</option>
			 <option value="27">27</option>
			 <option value="26">26</option>
			 <option value="25">25</option>
			 <option value="24">24</option>
			 <option value="23">23</option>
			 <option value="22">22</option>
			 <option value="21">21</option>
			 <option value="20">20</option>
			 <option value="19">19</option>
			 <option value="18">18</option>
			 <option value="17">17</option>
			 <option value="16">16</option>
			 <option value="15">15</option>
			 <option value="14">14</option>
			 <option value="13">12</option>
			 <option value="12">12</option>
		     <option value="11">11</option>
		     <option value="10">10</option>
		     <option value="09">09</option>
		     <option value="08">08</option>
		     <option value="07">07</option>
		     <option value="06">06</option>
		     <option value="05">05</option>
		     <option value="04">04</option>
		     <option value="03">03</option>
		     <option value="02">02</option>
		     <option value="01">01</option>
			 </select>	
			 일 
			 &nbsp;&nbsp;|&nbsp;&nbsp;
			 남성
			 <input type="radio" value="1" id ="g" name="user_gender" />
			 여성
			 <input type="radio" value="2" id ="g" name="user_gender" />
			 </p>
			 </tr>
			 
			<hr />
			
			 <p align="center">
           	 <strong> 아이디 </strong>
           	 </p>
           	 
           	 <p align="center">
           	 <input type="text" id="user_id" name="user_id" style="width: 456px; text-align: center; text-transform: lowercase; " placeholder="영문과 숫자를 조합한 6~12자리입니다."/>
           	 <strong><div id="idresult" style="text-align: center;"></div></strong>
           	 </p>
           	 
           	 <p align="center">
           	 <strong> 비밀번호 </strong>
           	 </p>
           	 
           	 <p align="center">
           	 <input type="password" id = "pw1" name="user_pw" style="width: 456px; text-align: center; text-transform: lowercase; margin-bottom: 10px;" placeholder="영문과 숫자를 조합한 6~12자리입니다."/><br />
           	 <input type="password" id = "pw2" style="width: 456px; text-align: center; text-transform: lowercase;" placeholder="동일하게 다시 입력해주십시오."/>
           	 <strong><div id="pwresult" style="text-align: center;"></div></strong>
           	 </p>
           	 
           	  <p align="center">
           	 <strong> 이메일 </strong>
           	 </p>
  
  			 <p align="center">
           	 <input type="text" id="e" name="user_email" style="width: 456px; text-align: center; text-transform: lowercase; " placeholder="인증을 위해 본인명의의 이메일주소를 입력해주십시오."/>
           	 </p>
			
			 <p align="center">
           	 <strong> 전화번호 </strong>
           	 </p>
			
			 <p align="center">
           	 <input type="text" id="ph" name="user_phone" style="width: 456px; text-align: center; " placeholder="'-' 없이  숫자만 입력해주십시오."/>
           	 </p>

						</div>




						<!-- <input type="text" class="form-control" placeholder="Enter your ID" name="user_id" />
              <input type="password" class="form-control" placeholder="Enter your Pass" name="user_pw" />
              <input type="text" class="form-control" placeholder="Enter your Email" name="user_email" />
              <input type="text" class="form-control" placeholder="Enter your Name" name="user_name" />
              <input type="text" class="form-control" placeholder="Enter your Birth" name="user_birth" />
              <input type="text" class="form-control" placeholder="Enter your Phone" name="user_phone" /> -->
              
              <button id="joinsubmit"type="button" style="width: 100%;" disabled="disabled" > 완료 </button> 
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
  <script src-"https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src='<c:url value="/resources/contactform/contactform.js"></c:url>'></script>

  <!-- Template Main Javascript File -->
  <script src='<c:url value="/resources/js/main.js"></c:url>'></script>
  
  <script>
  $('#user_id').blur(function() {
	  var id = $('#user_id').val();
	  if (id!="") {
	  $.ajax({
		url:'check?user_id='+id,
		type:'get',
		success:function(data){
			if (data == 0) {
				$('#idresult').text("사용가능한 아이디입니다.");
				$('#idresult').css("color","#336fb5");
				
			}else if (data == 1) {
				$('#idresult').text("이미 존재하는 아이디입니다.");
				$('#idresult').css("color","red");
			}
		}
	  });
	  }
});
  </script>
 
  
  
 <script>
  $('#pw2').blur(function() {
	  var pw1 = $('#pw1').val();
	  var pw2 = $('#pw2').val();
	  
	  if (pw1==pw2) {
		  $('#joinsubmit').attr("disabled", false);
			$('#pwresult').text("비밀번호가 정확히 일치합니다.");
			$('#pwresult').css("color","#336fb5");
	}else if(pw1!=pw2){
		  $('#joinsubmit').attr("disabled", true);
			$('#pwresult').text("비밀번호가 일치하지 않습니다.");
			$('#pwresult').css("color","red");
	}
	
});
  
  </script>
  
  <script>
  $('#joinsubmit').click(function() {
	  var n1=$('#n1').val(); //성
	  var n2=$('#n2').val(); //이름
	  var b1=$('#b1').val(); //년
	  var b2=$('#b2').val(); //월
	  var b3=$('#b3').val(); //일
	  var g=$('#g:checked').val(); //성별
	  var i=$('#user_id').val(); //아이디
	  var pw1=$('#pw1').val(); //비밀번호1
	  var pw2=$('#pw2').val(); //비밀번호2
	  var e=$('#e').val();//이메일
	  var ph=$('#ph').val();//전화번호
	  
	 
			if (n1 == "") {
					alert('이름을 입력해주십시오.');
					$('#n1').focus();
				} else if (n2 == "") {
					alert('이름을 입력해주십시오.');
					$('#n2').focus();
				} else if (b1 == "년") {
					alert('년도를 선택해주십시오.');
					$('#b1').focus();
				} else if (b2 == "월") {
					alert('월을선택해주십시오.');
					$('#b2').focus();
				} else if (b3 == "일") {
					alert('일을 선택해주십시오.');
					$('#b3').focus();
				} else if ($('#g:checked').val() == null) {
					alert('성별을 선택해주십시오.');
					$('#g').focus();
				} else if (i == "") {
					alert('아이디를 입력해주십시오.');
					$('#i').focus();
				} else if (pw1 == "") {
					alert('비밀번호를 입력해주십시오.');
					$('#pw1').focus();
				} else if (pw2 == "") {
					alert('비밀번호를 입력해주십시오.');
					$('#pw2').focus();
				} else if (e == "") {
					alert('이메일을 입력해주십시오.');
					$('#e').focus();
				} else if (ph == "") {
					alert('전화번호를 입력해주십시오.');
					$('#ph').focus();
				}else{
					document.joinform.submit();  
					
				}

			});
		</script>
  
  
</body>

</html>

