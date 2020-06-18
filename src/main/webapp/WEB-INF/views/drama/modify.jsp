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

    <!-- 구글 웹 폰트 CDN "Noto+Sans+KR" 
  		  해당 폰트를 적용하고 싶은 Style에 font-family로 적용-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
	
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
  	

  	<!-- 등록되어 있던 이미지 보여주기 -->
  	<style>
  		.select_img img {
  			margin: 20px 0;
  			width: 500px;
  			height: 350px;
  		}
  	</style>
  	
  	
</head>
<body>
   	<script>
		$("#age option:selected").val();
	</script>
	
   	<!--==========================
    	Header
    	① 고정 - 상단 메뉴바
  	============================-->
	<header id="header">
	    <div class="container">
	    	<div id="logo" class="pull-left">
	        	<!-- Uncomment below if you prefer to use a text logo -->
	       		<h1><a href="../PlamingGo">Pla<span>ming</span>Go</a></h1>
	        	<!-- <a href="#intro" class="scrollto"><img src="img/logo.png" alt="" title=""></a> -->
	      	</div>
	
	      	<nav id="nav-menu-container">
	        	<ul class="nav-menu">
	         		<li>
		        	<!-- 검색 처리 : form 태그 추가 -->
					<!-- 검색창 검색 결과 후, search 페이지로 이동 -->
					<form action="../search" method="get" id="form1" name="form1">
        			<input type="hidden" name="page" id="page" value="" />
						<div class="box">
						  <div class="container-4">
						    <input type="search" id="search" name="searchKeyword" placeholder="제목, 배우, 감독 검색 " value="${searchKeyword }" />
						    <button type="submit" class="icon"><i class="fa fa-search"></i></button>
						  </div>
						</div>
					</form>		
	        		</li>
	         		<li class="menu-active"><a href="../PlamingGo">홈</a></li>
		          	<li><a href="../movie">영화</a></li>
		          	<li><a href="../drama">드라마</a></li>
		          	<li><a href="../customer">고객센터</a></li>
		          	
		          	<!-- 계정 로그인 -->
          			<c:if test="${empty sessionScope.id }">
			        	<li class="buy-tickets"><a href="../login_view">로그인</a></li>
			        </c:if>
			        <c:if test="${not empty sessionScope.id && code!=0 }">
			          	<li class="buy-tickets"><a href="../logout">로그아웃</a></li>
			          	<li class="buy-tickets"><a href="../mypage">${id }</a></li>
			        </c:if>
			        <c:if test="${code==0 }">
			          	<li class="buy-tickets"><a href="../logout">로그아웃</a></li>
			          	<li class="buy-tickets"><a href="../adminpage">관리자메뉴</a></li>
			        </c:if>
			        <!-- 계정 로그인 끝 -->
	        	</ul>
	      	</nav><!-- #nav-menu-container -->
	    </div>
  	</header><!-- #header -->
  	
<!-- 	<img src="https://images.justwatch.com/backdrop/175312447/s1440/kilring-ibeu" 
	style="position: absolute; top:0; left: 0; width: 100%; height: 100%;" alt="" /> -->
    <section id="about" ></section>
    
   
   	<!--==========================
    	Body
		바뀌는 내용 부분
  	============================-->	
	<main id="main">
	   
		<!--==========================
			Speaker Details Section
			등록
		============================-->
		<!-- 뒤로가기 아이콘 -->
		<br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span style="color: #f82249">
			<a href="../drama">
				<i class="fa fa-arrow-left fa-lg"></i> <!-- 33% 크기 -->
			</a>
		</span>
		<br /><br />
		
		
		<!-- 헤더  -->
		<h1 style="font-family:'Noto Sans KR', sans-serif; font-size: 35px;">
			&nbsp;&nbsp;&nbsp;정보 수정
		</h1>
		<hr /> <!-- 줄 -->
		
		
			
		<section id="speakers-details" class="wow fadeIn">
			<div class="container">
	        	<div class="section-header">
	          		<h2>기본 정보</h2>
	          		<p>Basic Information</p>
	        	</div>
	      	</div>
	      	
	      	
		<!-- 드라마 정보 수정 -->
		<!-- insert 테이블과 modify 테이블은 비슷하므로, insert 테이블을 복사해옴 -->
		<!-- ※ 파일이나 이미지를 서버로 전송할 경우 enctype 요소 반드시 사용 -->
		<form action="modify_page" method="post" enctype="multipart/form-data">
		<input type="hidden" name="c" value="${modify.code }" />
			<!-- 01. 기본정보 컨테이너 시작 -->
			<div class="container">
				<!-- 수정 버튼 -->
				<button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModal">
				 	수정
				</button>
				
				<!-- 모달창 -->
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">확인</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        	수정하시겠습니까?
				      </div>
				      <div class="modal-footer">
				        <button type="submit" class="btn btn-outline-danger">확인</button>
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				      </div>
				    </div>
				  </div>
				</div>
				<!-- 모달창 끝 -->
				
				<!-- 취소 버튼  -->
				<a class="btn btn-outline-danger" href="../drama_detailview?c=${modify.code }" role="button">취소</a>
				
				
				<hr />
				
				
				<div class="row">
			    	<div class="col-md-6">
						<!-- 이미지 파일 첨부 -->	
						<div class="inputArea">
							<label for="img">
								<strong>원본 이미지</strong>&nbsp;&nbsp;<input type="text" value="${modify.img }" readonly/>
							</label><br />
							
							<div class="select_img">
								<img src="../resources/upload-drama/${modify.img }" class="img-fluid"/>
								<!-- 원본 이미지를 저장하는 숨겨진(hidden) 인풋박스 추가 -->
								<input type="hidden" name="img" value="${modify.img }"/>
							</div>
							<input type="file" id="img" name="img" />
						</div>	
						
						<br />
			    	</div>
			
			        <div class="col-md-6">
			            <div class="details">
			            	<!-- 제목(TITLE)-->
			            	<h2>
			            		<input type="text" name="title" size="30" value="${modify.title }" required autofocus/>
			            	</h2>
			            
			              	<dl class="row">
			              		<dt class="col-sm-3">평점</dt>
							  	<dd class="col-sm-9"><input type="text" name="rating" size="30" value="${modify.rating }" required placeholder="평점(숫자만 기입)"/></dd>
			              		
								<dt class="col-sm-3">제작년도</dt>
							  	<dd class="col-sm-9"><input type="text" name="opendate" size="30" value="${modify.opendate }" required placeholder="제작년도(숫자만 기입)"/></dd>
							  
								<dt class="col-sm-3">국가</dt>
  								<dd class="col-sm-9">
  									<select name="nation" required>	
  										<c:if test="${modify.nation eq '한국' }">
									        <option value="한국" selected>한국</option>
									        <option value="미국">미국</option>
									        <option value="영국">영국</option>
									        <option value="대만">대만</option>
									        <option value="홍콩">홍콩</option>
									        <option value="중국">중국</option>
									        <option value="일본">일본</option>
									        <option value="스페인">스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="기타">기타</option>
  										</c:if>
  										<c:if test="${modify.nation eq '미국' }">
  											<option value="한국">한국</option>
									        <option value="미국" selected>미국</option>
									        <option value="영국">영국</option>
									        <option value="대만">대만</option>
									        <option value="홍콩">홍콩</option>
									        <option value="중국">중국</option>
									        <option value="일본">일본</option>
									        <option value="스페인">스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="기타">기타</option>
  										</c:if>
  										<c:if test="${modify.nation eq '영국' }">
  											<option value="한국">한국</option>
  											<option value="미국">미국</option>
									        <option value="영국" selected>영국</option>
									        <option value="대만">대만</option>
									        <option value="홍콩">홍콩</option>
									        <option value="중국">중국</option>
									        <option value="일본">일본</option>
									        <option value="스페인">스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="기타">기타</option>
  										</c:if>
  										<c:if test="${modify.nation eq '대만' }">
  											<option value="한국">한국</option>
  											<option value="미국">미국</option>
  											<option value="영국">영국</option>
									        <option value="대만" selected>대만</option>
									        <option value="홍콩">홍콩</option>
									        <option value="중국">중국</option>
									        <option value="일본">일본</option>
									        <option value="스페인">스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="기타">기타</option>
  										</c:if>
  										<c:if test="${modify.nation eq '홍콩' }">
  											<option value="한국">한국</option>
  											<option value="미국">미국</option>
  											<option value="영국">영국</option>
  											<option value="대만">대만</option>
									        <option value="홍콩" selected>홍콩</option>
									        <option value="중국">중국</option>
									        <option value="일본">일본</option>
									        <option value="스페인">스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="기타">기타</option>
  										</c:if>
  										<c:if test="${modify.nation eq '중국' }">
  											<option value="한국">한국</option>
									        <option value="미국">미국</option>
									        <option value="영국">영국</option>
									        <option value="대만">대만</option>
									        <option value="홍콩">홍콩</option>
									        <option value="중국" selected>중국</option>
									        <option value="일본">일본</option>
									        <option value="스페인">스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="기타">기타</option>
  										</c:if>
  										<c:if test="${modify.nation eq '일본' }">
  											<option value="한국">한국</option>
									        <option value="미국">미국</option>
									        <option value="영국">영국</option>
									        <option value="대만">대만</option>
									        <option value="홍콩">홍콩</option>
									        <option value="중국">중국</option>
									        <option value="일본" selected>일본</option>
									        <option value="스페인">스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="기타">기타</option>
  										</c:if>
  										<c:if test="${modify.nation eq '스페인' }">
  											<option value="한국">한국</option>
									        <option value="미국">미국</option>
									        <option value="영국">영국</option>
									        <option value="대만">대만</option>
									        <option value="홍콩">홍콩</option>
									        <option value="중국">중국</option>
									        <option value="일본">일본</option>
									        <option value="스페인" selected>스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="기타">기타</option>
  										</c:if>
  										<c:if test="${modify.nation eq '프랑스' }">
									        <option value="한국">한국</option>
									        <option value="미국">미국</option>
									        <option value="영국">영국</option>
									        <option value="대만">대만</option>
									        <option value="홍콩">홍콩</option>
									        <option value="중국">중국</option>
									        <option value="일본">일본</option>
									        <option value="스페인">스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="프랑스" selected>프랑스</option>
									        <option value="기타">기타</option>
  										</c:if>
  										<c:if test="${modify.nation eq '기타' }">
  											<option value="한국">한국</option>
									        <option value="미국">미국</option>
									        <option value="영국">영국</option>
									        <option value="대만">대만</option>
									        <option value="홍콩">홍콩</option>
									        <option value="중국">중국</option>
									        <option value="일본">일본</option>
									        <option value="스페인">스페인</option>
									        <option value="프랑스">프랑스</option>
									        <option value="기타" selected>기타</option>
  										</c:if>
								    </select>
  								</dd>
  								
  								<dt class="col-sm-3">개요</dt>
  								<dd class="col-sm-9">
  									<select name="age" id="age" required >
  										<c:if test="${modify.age eq '전체' }">
									    	<option value="연령" disabled>연령</option>
									    	<option value="전체" selected>전체</option>
									        <option value="12세">12세</option>
									        <option value="15세">15세</option>
									        <option value="청불">청불</option>  											
  										</c:if>
  										<c:if test="${modify.age eq '12세' }">
  											<option value="연령" disabled>연령</option>
									    	<option value="전체">전체</option>
									        <option value="12세" selected>12세</option>
									        <option value="15세">15세</option>
									        <option value="청불">청불</option> 
  										</c:if>
  										<c:if test="${modify.age eq '15세' }">
  											<option value="연령" disabled>연령</option>
									    	<option value="전체">전체</option>
									        <option value="12세">12세</option>
									        <option value="15세" selected>15세</option>
									        <option value="청불">청불</option> 
  										</c:if>
  										<c:if test="${modify.age eq '청불' }">
									    	<option value="연령" disabled>연령</option>
									    	<option value="전체">전체</option>
									        <option value="12세">12세</option>
									        <option value="15세">15세</option>
									        <option value="청불" selected>청불</option> 							
  										</c:if>   
								    </select>
  									&nbsp;/&nbsp;
  									<input type="text" name="epi" size="10" value="${modify.epi }" required/>개
  								</dd>
  								
  								<dt class="col-sm-3">감독</dt>
  								<dd class="col-sm-9"><input type="text" name="director" size="30" value="${modify.director }" required/></dd>
  								
  								<dt class="col-sm-3">배우</dt>
  								<dd class="col-sm-9"><input type="text" name="actor" size="30" value="${modify.actor }" required/></dd>
							
  								<dt class="col-sm-3">장르</dt>
  								<dd class="col-sm-9"><input type="text" name="genre" size="30" value="${modify.genre }" required/></dd>
								
								<dt class="col-sm-3">줄거리</dt>
								<dd class="col-sm-9"><textarea name="summary" cols="38" rows="10" required>${modify.summary }</textarea></dd>
							
								<dt class="col-sm-3">트레일러</dt>
  								<dd class="col-sm-9"><input type="text" name="trailer" size="30" value="${modify.trailer }" required/></dd>
							</dl>
			            </div>
			        </div> <!-- 오른쪽 드라마 정보 끝 --> 
			    </div> <!-- class row 끝 -->			
			</div>  <!-- 01. 기본정보 컨테이너 끝 -->	
		</form> <!-- 드라마 수정 form 끝 -->
		
			<br /><br />
			<hr />
			<br /><br />
			
			
		</section>  <!-- 드라마 수정 섹션 끝 -->
		
		
		<hr />
	   	<br />
	    <br />
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


	<!-- *** 상세보기의 이미지를 그대로 가져오기 -->
	<script>
		$("#img").change(function(){
			if (this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data){
					$(".select_img img").attr("src", data.target.result).width(500).height(350);
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
	</script>
	
	<!-- 선택된 셀렉트값 가져오기 -->
	<script>
		$("#age option:selected").val();
	</script>
	

</body>
</html>
