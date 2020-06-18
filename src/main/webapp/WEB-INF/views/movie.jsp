<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- Required meta tags -->
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
   
	<title>PlamingGo</title>

	<!-- 합쳐지고 최소화된 최신 CSS --> 
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<!-- [템플릿] 반응형 -->
	<!-- <meta content="width=device-width, initial-scale=1.0" name="viewport"> -->
 	<meta content="" name="keywords">
  	<meta content="" name="description">
  	
  	<!-- [템플릿] 홈페이지 아이콘 -->
  	<link href="img/favicon.png" rel="icon">
  	<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

	<!-- [템플릿] CSS file -->
  	<!-- <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
  	<link rel="stylesheet" type="text/css" 
  	href="${pageContext.request.contextPath }/resources/lib/bootstrap/css/bootstrap.min.css" />	

  	<!-- [템플릿] 라이브러리 CSS Files -->
  	<link rel="stylesheet" type="text/css" 
  	href="${pageContext.request.contextPath }/resources/lib/font-awesome/css/font-awesome.min.css" />
  	<link rel="stylesheet" type="text/css" 
  	href="${pageContext.request.contextPath }/resources/lib/animate/animate.min.css" />
  	<link rel="stylesheet" type="text/css" 
  	href="${pageContext.request.contextPath }/resources/lib/venobox/venobox.css" />
  	<link rel="stylesheet" type="text/css" 
  	href="${pageContext.request.contextPath }/resources/lib/owlcarousel/assets/owl.carousel.min.css" />
  
  	<!-- [템플릿] 메인 Stylesheet File -->
  	<link rel="stylesheet" type="text/css" 
  	href="${pageContext.request.contextPath }/resources/css/style.css" />
  	
  	<!-- 스프링에서 제이쿼리 사용하기 -->
  	<script type="text/javascript" src='<c:url value="/resources/js/jquery-3.4.1.min.js"></c:url>'></script>
	
	<!-- ** 검색창 CSS (search.css) -->
	<link rel="stylesheet" type="text/css" 
  	href="${pageContext.request.contextPath }/resources/css/search.css" />
  	
	<style>
		/* 검색창 타입 CSS */
		#searchType {
		  border: 0;
		  padding: 9px 10px;
		  cursor: pointer;
		  background: #f82249;
		  color: #fff;
		  transition: all 0.3s ease;
		  outline: none;
		  font-size: 14px;
		}
	</style>
</head>
<body>
   	
   	<!--==========================
    	Header
    	① 고정 - 상단 메뉴바
  	============================-->
	<header id="header">
	    <div class="container">
	    	<div id="logo" class="pull-left">
	        	<!-- Uncomment below if you prefer to use a text logo -->
	       		<h1><a href="../PlamingGo">Pla<span>ming</span>Go</a></h1>
	      	</div>
	      	
	      	<nav id="nav-menu-container">
	        	<ul class="nav-menu">
	        		<li>
			<!-- 검색 처리 : form 태그 추가 -->
			<!-- 검색창 검색 결과 후, search 페이지로 이동 -->
				<form action="Msearch" method="get" id="form1" name="form1">
        		<input type="hidden" name="page" id="page" value="" />
						<div class="box">
						  <div class="container-4">
						    <input type="search" name="searchKeyword" id="search" placeholder="제목, 배우, 감독 검색 " value="${searchKeyword }" />
						    <button type="submit" class="icon"><i class="fa fa-search"></i></button>
						  </div>
						</div>
				</form>	
	        		</li>
	         		<li><a href="PlamingGo">홈</a></li>
		          	<li class="menu-active"><a href="movie">영화</a></li>
		          	<li><a href="drama">드라마</a></li> 
		          	<li><a href="customer">고객센터</a></li>
		          	
		          	<!-- 계정 로그인 -->
          			<c:if test="${empty sessionScope.id }">
			        	<li class="buy-tickets"><a href="login_view">로그인</a></li>
			        </c:if>
			        <c:if test="${not empty sessionScope.id && code!=0 }">
			          	<li class="buy-tickets"><a href="logout">로그아웃</a></li>
			          	<li class="buy-tickets"><a href="mypage">${id }</a></li>
			        </c:if>
			        <c:if test="${code==0 }">
			          	<li class="buy-tickets"><a href="logout">로그아웃</a></li>
			          	<li class="buy-tickets"><a href="adminpage">관리자메뉴</a></li>
			        </c:if>
			        <!-- 계정 로그인 끝 -->
			        
	        	</ul>
	      	</nav><!-- #nav-menu-container -->
	    </div>
  	</header><!-- #header -->

 
 	 <!--==========================
      		Subscribe Section     	  	
      		검색창
    	============================-->
    	<%-- <section id="subscribe">
      		<div class="container wow fadeInUp">
        		<!-- <div class="section-header">
       	  			<br />
       	  			<br />
          			<h2>검색하세요.</h2> 
          			<p>인기검색어 <a href="drama_detailview?c=1">부부의 세계</a> | <a href="drama">킬링 이브</a></p>
        		</div> -->
    		
				<!-- 검색 처리 : form 태그 추가 -->
				<!-- 검색창 검색 결과 후, search 페이지로 이동 -->
        		<form action="search" method="get" id="form1" name="form1">
        			<input type="hidden" name="page" id="page" value="" />
          			
          			<div class="form-row justify-content-center">
			            <div class="col-auto">
			            	<select name="searchType" class="form-control" id="searchType">
			            		<option value="title" selected>제목</option>
			            		<option value="actor">배우</option>
			            		<option value="director">감독</option>
			            	</select>
			            </div>
			            <div class="col-auto">
			              <input type="text" name="searchKeyword" class="form-control" 
			              	placeholder="작품 제목, 배우, 감독으로 검색"
			     			value="${searchKeyword }" />	<!-- value는 검색키워드가 검색창에 남아있는 것을 의미 -->
			            </div>
			            <div class="col-auto">
			              <button type="submit">검색</button>
			            </div>
          			</div>
        		</form>
             </div>
		</section>		 --%>
 
 
   	<!--==========================
    	Body
		바뀌는 내용 부분
  	============================-->	
	<main id="main">
	
    <!-- 캐러셀 -->
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  			<!-- 인디케이터 -->
  			<ol class="carousel-indicators">
    			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  			</ol>
  			<!-- /인디케이터 끝 -->
  			<!-- 슬라이드 쇼 -->
  			<div class="carousel-inner">
    			<div class="carousel-item">
      				<a href="#">
      					<img src="resources/upload_movie/aladin.jpg" class="d-block w-100" 
      					alt="Second Slide" width="90%">
      				</a>
    			</div>
    			<div class="carousel-item active">
      				<a href="#">
      					<img src="resources/upload_movie/lady.jpg" class="d-block w-100" 
      					alt="First Slide" width="90%">
      				</a>
    			</div>
    			<div class="carousel-item">
      				<a href="#">
      					<img src="resources/upload_movie/lalaland.jpg" class="d-block w-100" 
      					alt="Third Slide" width="90%">
      				</a>
    			</div>		
  			</div>	
  			<!-- /슬라이드 쇼 끝 -->
  			
  			<!-- 왼쪽 오른쪽 화살표 버튼 -->
  			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    			<span class="sr-only">Previous</span>
  			</a>
  			<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    			<span class="carousel-control-next-icon" aria-hidden="true"></span>
    			<span class="sr-only">Next</span>
  			</a>
  			<!-- /화살표 버튼 끝 -->
		</div>
	<!-- 캐러셀 끝 -->
		
		
        <!--==========================
      		Subscribe Section     	  	
      		검색창
    	============================-->
    	<%-- <section id="subscribe">
      		<div class="container wow fadeInUp">
        		<!-- <div class="section-header">
       	  			<br />
       	  			<br />
          			<h2>검색하세요.</h2> 
          			<p>인기검색어 <a href="#">##</a> | <a href="movie">#</a></p>
        		</div> -->
    		
				<!-- 검색 처리 : form 태그 추가 -->
				<!-- 검색창 검색 결과 후, search 페이지로 이동 -->
        		<form action="search" method="get" id="form1" name="form1">
        			<input type="hidden" name="page" id="page" value="" />
          			
          			<div class="form-row justify-content-center">
			            <div class="col-auto">
			            	<select name="searchType" class="form-control" id="searchType">
			            		<option value="movie_title" selected>제목</option>
			            		<option value="movie_actor">배우</option>
			            		<option value="movie_director">감독</option>
			            	</select>
			            </div>
			            <div class="col-auto">
			              <input type="text" name="searchKeyword" class="form-control" 
			              	placeholder="작품 제목, 배우, 감독으로 검색"
			     			value="${searchKeyword }" />	<!-- value는 검색키워드가 검색창에 남아있는 것을 의미 -->
			            </div>
			            <div class="col-auto">
			              <button type="submit">검색</button>
			            </div>
          			</div>
        		</form>
             </div>
        		</form>
             </div>
		</section>		 --%>
        		
        
        	
        <!--==========================
      		Hotels Section 
     		드라마 리스트 페이지
    	============================-->
    	<section id="hotels" class="section-with-bg wow fadeInUp">
      		<div class="container">
        		<div class="section-header">
          			<h2>MOVIE</h2>
          			<br /><br /><br />
          			
          			
		<!-- 드롭다운 : 최신작품 순 / 평균별점 순  / 조회수 순 -->
					<div class="btn-group" align="center">
						<button type="button" class="btn btn-outline-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					  		최신작품 순
					  	</button>
					  	<div class="dropdown-menu">
						    <a class="dropdown-item" href="#">최신작품 순</a>
						    <a class="dropdown-item" href="#">평균별점 순</a>
						    <a class="dropdown-item" href="#">조회수 순</a>
						   <!--  <div class="dropdown-divider"></div>
						    <a class="dropdown-item" href="#">Separated link</a> -->
					  	</div>
					</div>
									
		<!-- 관리자 로그인 : 새로운 작품 등록 버튼 -->
        		<c:if test="${code==0 }">
        			<a class="btn btn-outline-danger" href="movie_insert" role="button">새로운 작품 등록</a>
        		</c:if>

          		<hr />	<!-- 경계선 -->
        			
        		</div>	<!-- 헤더 섹션 끝 -->
        		
        		
			<!-- 01. 영화 리스트  -->
				<!-- db의 데이터를 forEach문을 이용해 모두 가져와 화면에 출력하기 -->
				
       			<div class="row">
					<c:forEach items="${getmovielist }" var="list">
         			<div class="col-lg-4 col-md-6">
            			<div class="hotel">
              				<div class="hotel-img">
              					<a href="moviedetail?movie_code=${list.movie_code }">
	                				<img src="resources/upload_movie/${list.movie_img }" class="img-fluid" >	   	
              					</a>
              				</div>
              				
              				<!-- 상세보기를 할 때는 기본키의 값(code)을 파라미터로 넘겨주도록 링크작성 -->
              				<h3><a href="moviedetail?movie_code=${list.movie_code }">${list.movie_title }</a></h3>
            
              				<!-- 평점 if문 -->
              				<c:if test="${list.movie_rating==5.0 }">
	              				<div class="stars">
					            	<i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
	                				&nbsp;${list.movie_rating }
	              				</div>              
              				</c:if>
              				<c:if test="${list.movie_rating>4.0 && list.movie_rating<5.0 }">
				              	<div class="stars">
				                	<i class="fa fa-star"></i>
				                	<i class="fa fa-star"></i>
				                	<i class="fa fa-star"></i>
				                	<i class="fa fa-star"></i>
				               	 	<i class="fa fa-star-half-full"></i>
				                	&nbsp;${list.movie_rating }
				              	</div>              
              				</c:if>
				            <c:if test="${list.movie_rating==4.0}">
					            <div class="stars">
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                &nbsp;${list.movie_rating }
					            </div>              
				            </c:if>
              				<c:if test="${list.movie_rating>3.0 && list.movie_rating<4.0 }">
	              				<div class="stars">
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star-half-full"></i>
					                &nbsp;${list.movie_rating }
	              				</div>              
			              	</c:if>
			              	<c:if test="${drama.rating==3.0}">
	              				<div class="stars">
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                &nbsp;${list.movie_rating }
	              				</div>              
              				</c:if>
               				<c:if test="${list.movie_rating>2.0 && list.movie_rating<3.0 }">
	              				<div class="stars">
					               	<i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					                <i class="fa fa-star-half-full"></i>
					                &nbsp;${list.movie_rating }
	              				</div>              
              				</c:if>
              				<c:if test="${list.movie_rating==2.0}">
	              				<div class="stars">
					            	<i class="fa fa-star"></i>
					                <i class="fa fa-star"></i>
					               	&nbsp;${list.movie_rating }
	              				</div>              
             		 		</c:if>
               				<c:if test="${list.movie_rating>1.0 && list.movie_rating<2.0 }">
	              				<div class="stars">
					          	  	<i class="fa fa-star"></i>
					          	  	<i class="fa fa-star-half-full"></i>
					                &nbsp;${list.movie_rating }
	              				</div>              
              				</c:if>
              				<c:if test="${list.movie_rating==1.0}">
	              				<div class="stars">
					                <i class="fa fa-star"></i>
					             	&nbsp;${list.movie_rating }
	              				</div>              
              				</c:if>
             
              				<p>${list.movie_age } &nbsp;·&nbsp; 상영 시간 ${list.movie_time }</p>
            			</div>
          			</div>
					</c:forEach>
	
        		</div>
      		</div>

			<br />
	<!-- 02. 페이징 처리 -->
			<!-- BoardController 에서 model에 add 하여 view단인 drama로 보내서 받음 -->
			<%-- 전체 드라마 데이터 수 : ${tot_movie_cnt } --%>
			<br />
	 
			<%-- <c:if test="${pageVo.totPage>1 }">
				<c:if test="${pageVo.page>1 }">
					<a href="movie?page=1">처음&nbsp;</a>
					<a href="movie?page=${pageVo.page-1 }">이전&nbsp;</a>			
				</c:if>
		
				<!-- 현재 페이지에서는 링크가 없고 숫자만 나올 수 있도록 지정하기 -->	
				<c:forEach begin="${pageVo.pageStart }" end="${pageVo.pageEnd }" var="pageNum">
					<c:choose>
						<c:when test="${pageNum eq pageVo.page }">
							<strong style="color: #f82249">${pageNum } &nbsp;</strong>
						</c:when>
						
						<c:otherwise>
							<a href="movie?page=${pageNum }">${pageNum }</a> &nbsp;
						</c:otherwise>
					</c:choose>	
				</c:forEach>
			
				<c:if test="${pageVo.totPage>pageVo.page }">
					<a href="movie?page=${pageVo.page+1 }">다음&nbsp;</a>
					<a href="movie?page=${pageVo.totPage }">마지막&nbsp;</a>
				</c:if>
			</c:if>			 --%>
    	</section>
    	
    	
	</main>
   
   <!--==========================
   	Footer
	하단 홈페이지 정보
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

  	<!-- [템플릿] JavaScript Libraries -->
  	<script src='<c:url value="/resources/lib/jquery/jquery.min.js"></c:url>'></script>
  	<script src='<c:url value="/resources/lib/jquery/jquery-migrate.min.js"></c:url>'></script>
  	<script src='<c:url value="/resources/lib/bootstrap/js/bootstrap.bundle.min.js"></c:url>'></script>
  	<script src='<c:url value="/resources/lib/easing/easing.min.js"></c:url>'></script>
  	<script src='<c:url value="/resources/lib/superfish/hoverIntent.js"></c:url>'></script>
  	<script src='<c:url value="/resources/lib/superfish/superfish.min.js"></c:url>'></script>
  	<script src='<c:url value="/resources/lib/wow/wow.min.js"></c:url>'></script>
  	<script src='<c:url value="/resources/lib/venobox/venobox.min.js"></c:url>'></script>
  	<script src='<c:url value="/resources/lib/owlcarousel/owl.carousel.min.js"></c:url>'></script>

  	<!-- [템플릿] Contact Form JavaScript File -->
  	<script src='<c:url value="/resources/contactform/contactform.js"></c:url>'></script>

  	<!-- [템플릿] Main Javascript File -->
  	<script src='<c:url value="/resources/js/main.js"></c:url>'></script>   
    	
   	<!-- 합쳐지고 최소화된 최신 자바스크립트 --> 
   	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<!-- 제이쿼리 스크립트는 JQUERY-3.3.1의 밑에 있어야 작동함 -->
		<script>
			$('.carousel').carousel({
				  interval: 5000
			})	
		</script>
		
	<!-- 드롭다운 토글 -->
	<script>
		$('.dropdown-toggle').dropdown()
	</script>
		
</body>
</html>