<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- fmt f 태그로 데이트포맷 변경 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>

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
	href="${pageContext.request.contextPath }/resources/css/manage_style.css" />

<!-- ** 검색창 CSS (search.css) -->
	<link rel="stylesheet" type="text/css" 
  	href="${pageContext.request.contextPath }/resources/css/search.css" />
  

  <!-- 차트를위한 스크립트 -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
  
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
					<a href="home">Pla<span>ming</span>Go
					</a>
				</h1>
				<!-- <a href="#intro" class="scrollto"><img src="resource/img/logo.png" alt=""
					title=""></a> -->
			</div>

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
					<h2>통계</h2>
					<button id="level" style="
    cursor: pointer;
    border-radius: 15px;
    padding: 3px 9px;
    outline: none;
    background-color: #9dbab5;
    color: #160a16;
    font-weight: bold;">회원 멤버십</button>
					<button id="gender" style="
    cursor: pointer;
    border-radius: 15px;
    padding: 3px 9px;
    outline: none;
    background-color: #9dbab5;
    color: #160a16;
    font-weight: bold;">회원 성별</button>
    
    			
    			<button id="drama" style="
				    cursor: pointer;
				    border-radius: 15px;
				    padding: 3px 9px;
				    outline: none;
				    background-color: #9dbab5;
				    color: #160a16;
				    font-weight: bold;">드라마
				</button>
    		
				</div>

			</div>
		</div>
	</section>
	<section style="align-content: center;">
	 <div id ="divbottom" >
  	<div id="div_bottom_center" align="center">
  



				<!-- ================ 01. 그래프 ================ -->
		<!-- ★★★★★ Chart.js 차트를 그릴 canvas 태그 생성 -->
<%-- 		<canvas id="myChart" width="30" height="10"></canvas>
	 	
	 	<script>
	 	var ctx = document.getElementById('myChart').getContext('2d');
	 	var chart = new Chart(ctx, {
	 	    // The type of chart we want to create
	 	    type: 'line',

	 	    // The data for our dataset
	 	    data: {
	 	        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
	 	        datasets: [{
	 	            label: 'My First dataset',
	 	            backgroundColor: 'rgb(255, 99, 132)',
	 	            borderColor: 'rgb(255, 99, 132)',
	 	            data: [0, 10, 5, 2, 20, 30, 45]
	 	        }]
	 	    },

	 	    // Configuration options go here
	 	    options: {}
	 	});
	 	</script> --%>
<!-- ================ 01. 그래프 끝 ================ -->	 	
	 	
	<br /><br /><br /> 	
	 	
<!-- ================ 02. 도넛형 차트 ================ -->	 	
	 	<!-- ★★★★★ Chart.js 차트를 그릴 canvas 태그 생성 -->
	 	<div id="level_pie" style="display: block; max-width: 60%; margin-bottom: 40px;">
	 	<h1 style="padding-top:40px;" class="tickettitle">PlamingGo <br /> 회원권 통계</h1>
	 <canvas id="myChart2" width="30" height="10"></canvas>
		
	 	<script>
	 	// 도넛차트
	 	var b=${basicCount};
	 	var s=${standardCount};
	 	var p=${premiumCount};
	 	var ctx = document.getElementById('myChart2').getContext('2d');
	 	var myDoughnutChart = new Chart(ctx, {
	 	   /*  type: 'doughnut', */
	 	   type: 'pie',
	 	   	data: {
	 	        labels: [
	 	        	"Basic", 
	 	        	"Standard", 
	 	        	"Premium"
	 	        ],
	 	        datasets: [
	 	        	{
	 	            	label: 'My First dataset',
	 	            	data: [b, s, p],
	 	            	backgroundColor: [
	 	            		"#dc3545",
	 	            		"#28a745",
	 	            		"#007bff"	
	 	            	],
	 	            	hoverBackgroundColor: [
	 	            		"rgba(220, 53, 69, 0.5)",
	 	            		"rgba(40, 167, 69, 0.5)",
	 	            		"rgba(0, 113, 255, 0.5)"	
	 	            	]
	 	        }]
	 	    },
	 		
	 	    options: {}
	 	});	
	 	</script>
	 	</div>
	 	<div id="gender_bar" style="width: 300px; display: none; max-width: 60%; margin-bottom: 40px;">
	 	<h1 style="padding-top:40px;" class="tickettitle">PlamingGo <br /> 성별 통계</h1>
	 <canvas id="myChart3" width="100" height="100"></canvas>
		
	 	<script>
	 	// 도넛차트
	 	var m=${maleCount};
	 	var f=${femaleCount};
	 	var max=(f+5);
	 	if (m<f) {
			max=(m+5);
		}
	 	
	 	var ctx = document.getElementById('myChart3').getContext('2d');
	 	var myDoughnutChart = new Chart(ctx, {
	 	   /*  type: 'doughnut', */
	 	   type: 'bar',
	 	   	data: {
	 	        labels: [
	 	        	"남성", 
	 	        	"여성", 
	 	        ],
	 	        datasets: [
	 	        	{
	 	            	label: 'Gender',
	 	            	data: [m, f],
	 	            	backgroundColor: [
	 	            		"#007bff",
	 	            		"#dc3545"
	 	            	],
	 	            	hoverBackgroundColor: [
	 	            		"rgba(0, 113, 255, 0.5)",
	 	            		"rgba(220, 53, 69, 0.5)"
	 	            	],
	 	               barPercentage: 1,
	 	              barThickness: 40,
	 	              maxBarThickness: 40,
	 	              minBarLength: 2,
	 	              data:[m,f,0,max]
	 	          
	 	        }]
	 	    },
	 		
	 	    options: {}
	 	});	
	 	</script>
	 </div>
	 	
	 	

<!-- ================ 03. 드라마 2020년 최신작 중 조회수 Top5 차트 ================ -->	 	


<!-- <div id="dramaTop5_div" style="width: 500px; display: none; max-width: 100%; margin-bottom: 40px;"> -->
	<div id="container">
		<div class="col-md-6" id="dramaTop5_div" style="width: 1000; display: none;" >
	 	<!-- ★★★★★ Chart.js 차트를 그릴 canvas 태그 생성 -->
		<canvas id="dramaTop5" width="300" height="100"></canvas>
		
	 	<script>
	 	// 막대형 그래프
	 	var ctx = document.getElementById('dramaTop5').getContext('2d');
	 	var myDoughnutChart = new Chart(ctx, {
	 	    type: 'bar',
	 	   	data: {
	 	        labels: ["부부의 세계","킬링 이브 시즌 3","인간수업","킹덤 시즌 2","빨간 머리 앤 시즌 3"],
	 	        datasets: [
	 	        	{
	 	            	label: '2020 신작 6월 첫째 주 조회수 Top5',
	 	            	backgroundColor: [
	 	            		"rgba(255, 99, 132, 0.2)",
	 	            		"rgba(54, 162, 235, 0.2)",
	 	            		"rgba(255, 206, 86, 0.2)",
	 	            		"rgba(75, 192, 192, 0.2)",
	 	            		"rgba(153, 102, 255, 0.2)"
	 	            	],
	 	            	borderColor: [
	 	            		"rgba(255, 99, 132, 1)",
	 	            		"rgba(54, 162, 235, 1)",
	 	            		"rgba(255, 206, 86, 1)",
	 	            		"rgba(75, 192, 192, 1)",
	 	            		"rgba(153, 102, 255, 1)"
	 	            	],
	 	            	
	 	            	borderWidth: 1,
	 	            	data: [287, 232, 204, 158, 135],
	 	        }]
	 	    },
	 		
	 	    options: {}
	 	});	
	 	</script>
	 	</div>
	 </div>	
	 <br /><br /><br />	
	 	
		

			</div>
  </div>
	</section>









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
	
	<script>
	  $('#level').click(function() {
		  var gender= document.getElementById("gender_bar");
		  var level= document.getElementById("level_pie");
		  var dramaTop5 = document.getElementById("dramaTop5_div");
		  level.style.display = 'block';
		  gender.style.display = 'none';
		  dramaTop5.style.display = 'none';
	  });

	</script>
	
	<script>
	  $('#gender').click(function() {
		  var gender= document.getElementById("gender_bar");
		  var level= document.getElementById("level_pie");
		  var dramaTop5 = document.getElementById("dramaTop5_div");
		  gender.style.display = 'block';
		  level.style.display = 'none'; 
		  dramaTop5.style.display = 'none';
	  });
	</script>
	
	
	
	<script>
	  $('#drama').click(function() {
		  var dramaTop5 = document.getElementById("dramaTop5_div");
		  var level= document.getElementById("level_pie");
		  var gender= document.getElementById("gender_bar");
		  
		  dramaTop5.style.display = 'block';
		  level.style.display = 'none'; 
		  gender.style.display = 'none';
		  
	  });
	</script>

</body>

</html>

