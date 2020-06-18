<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- Required meta tags -->
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<!-- <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->
   	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
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
	
	<!-- 스타일 CSS -->
	<style type="text/css">
		#intro {
		  width: 100%;
		  height: 100vh;
		  background: url("resources/upload_movie/${movie_detail.movie_img }") top center;
		  background-size: cover;
		  overflow: hidden;
		  position: relative;
		}
		
		#reviewReply {
			font-size: 13px;
			color: #593996;
		}
	</style>
	
</head>
<body>
    <% request.setCharacterEncoding("UTF-8"); %>
   	
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
					<form action="search" method="get" id="form1" name="form1">
        			<input type="hidden" name="page" id="page" value="" />
						<div class="box">
						  <div class="container-4">
						    <input type="search" id="search" name="searchKeyword" placeholder="제목, 배우, 감독 검색 " value="${searchKeyword }" />
						    <button type="submit" class="icon"><i class="fa fa-search"></i></button>
						  </div>
						</div>
					</form>		
	        		</li>
	         		<li><a href="../PlamingGo">홈</a></li>
		          	<li><a href="movie">영화</a></li>
		          	<li class="menu-active"><a href="drama">드라마</a></li> 
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
		Intro Section
		상세페이지 - 헤더 / 이미지+트레일러
	============================-->
	<section id="intro">
		<div class="intro-container wow fadeIn">
			<h1 class="mb-4 pb-0">지금 바로,<br><span>&nbsp;${movie_detail.movie_title }</span>의<br />예고편을 감상하세요!</h1>
			<%-- <p class="mb-4 pb-0">${movie_detail.movie_title }<br />지금 바로 감상하세요!</p> --%>
			<a href="${movie_detail.movie_trailer }" class="venobox play-btn mb-4" data-vbtype="video"
			data-autoplay="true"></a>
		</div>
	</section>
									    	

   	<!--==========================
    	Body
		바뀌는 내용 부분
  	============================-->	
	<main id="main">
	   
		<!--==========================
			Speaker Details Section
			드라마 상세보기 - 기본정보
		============================-->
		<!-- 뒤로가기 아이콘 -->
		<br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span style="color: #f82249">
			<a href="drama">
				<i class="fa fa-arrow-left fa-lg"></i> <!-- 33% 크기 -->
			</a>
		</span>
		
		
	<!-- 관리자 : 수정 / 삭제 버튼 -->
		<c:if test="${code==0 }">
			&nbsp;&nbsp;
			<!-- 수정 버튼 -->
			<a class="btn btn-outline-danger" href="movie_modify?movie_code=${movie_detail.movie_code }" role="button">수정</a>
		
			<!-- 삭제 버튼 -->
			<button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModal">
				 삭제
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
				        	삭제하시겠습니까?
				      </div>
				      <div class="modal-footer">
				        <a class="btn btn-outline-danger" href="movie_delete?movie_code=${movie_detail.movie_code }" role="button">확인</a>
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				      </div>
				    </div>
				  </div>
				</div>
				<!-- 모달창 끝 -->		
		</c:if>	
	<!-- 관리자 -->	
		
		
		<br /><br />
		
		
		<!-- 헤더  -->
		<h1 style="font-family:'Noto Sans KR', sans-serif; font-size: 35px;">
			&nbsp;&nbsp;&nbsp;기본 정보
		</h1>
		<hr /> <!-- 줄 -->
		
		
		<section id="speakers-details" class="wow fadeIn">
			<div class="container">
				
				<div class="row">
			    	<!-- 왼쪽 : 포스터 이미지 -->
			    	<div class="col-md-6">
			    		<td><img
						src="resources/upload_movie/${movie_detail.movie_img }"  
						style="width: 500px; height: 630px;"
						/></td>
			  		</div>	
			  		
			  		<!-- 오른쪽 : 드라마 상세정보 -->
			        <div class="col-md-6">
			            <div class="details">
			            	<!-- 제목(TITLE)/별점(RATING) -->
			            	<h2>${movie_detail.movie_title } <span class="badge badge-pill badge-dark"><i class="fa fa-star"></i> ${detailview.rating }</span></h2>
			              	
			              	<dl class="row"> 	
								<dt class="col-sm-3">제작년도</dt>
							  	<dd class="col-sm-9">${movie_detail.movie_date }</dd>
							  
								<dt class="col-sm-3">권장 연령</dt>
  								<dd class="col-sm-9">${movie_detail.movie_age }</dd>
  								
  								<dt class="col-sm-3">상영 시간</dt>
  								<dd class="col-sm-9">${movie_detail.movie_time }</dd>
  								
  								<dt class="col-sm-3">감독</dt>
  								<dd class="col-sm-9">${movie_detail.movie_director }</dd>
  								
  								<dt class="col-sm-3">배우</dt>
  								<dd class="col-sm-9">${movie_detail.movie_actor }</dd>
							
  								<dt class="col-sm-3">장르</dt>
  								<dd class="col-sm-9">${movie_detail.movie_genre}</dd>
								
								<dt class="col-sm-3">줄거리</dt>
  								<dd class="col-sm-9">${movie_detail.movie_summary}</dd>
							</dl>
			            </div> <!-- 드라마 정보 끝  -->
			        </div> <!-- 오른쪽 grid 끝 --> 
			     </div> <!-- class row(왼쪽/오른쪽 나누기) 끝 -->
			

			<!-- 조회수 증가 -->
				 <br />
			     <hr />
				 <span style="color: #f82249"><i class="fa fa-eye fa-lg"></i></span>
				 &nbsp;현재 <strong>2738</strong>명의 플라밍고 회원님이 <strong>${movie_detail.movie_title }</strong>에 관심을 보였어요!
				 <hr />
				 <br />
			</div>	<!-- 조회수까지 컨테이너 끝  -->	 
    	   
    	   
    	   
		
      <!-- =============================
      	   Contact Section 
      	       댓글
      ===============================-->
   
   		<!-- 헤더  -->
		<h1 style="font-family:'Noto Sans KR', sans-serif; font-size: 35px;">
			&nbsp;&nbsp;&nbsp;댓글
		</h1>
		<hr />
		
		
		<!-- 댓글 섹션 시작 -->
      	<section id="contact" class="section-bg wow fadeInUp">
      		<div class="container">
      		
      		<!-- 01. 댓글창 ; 데이터베이스에서 값 가져오기 -->
      		<span style="font-family:'Noto Sans KR', sans-serif; font-size: 20px;">&nbsp;&nbsp;&nbsp;리뷰</span>
      		<br /><br />
      	
      			
			<table class="table table-hover">
		  		<tbody>
		  			<c:forEach items="${review_list }" var="review_list">
					<tr>
				    	<td><span style="color: #593996;"><i class="fa fa-user"></i></span>&nbsp;&nbsp;&nbsp;${review_list.mreview_writer }</td>
				      	<td colspan="6">${review_list.mreview_content }</td>
					    <td></td>
					    <td></td>
					    <td></td>
					    <td></td>
					    <td></td>
					    <td align="right">${review_list.mreview_date }</td>
					    <td colspan="2" align="right">
					    	<c:if test="${id eq review.writer || code==0 }">
					    		<%-- <a href="dreview_modify?rno=${review.rno }&bno=${reveiew.bno }">수정</a> &nbsp; --%>
					    		<a href="review_delete?review_num=${review_list.review_num }&join_code=${review_list.join_code }"><i class="fa fa-times"></i></a>
					    	</c:if>
					    </td>
					    <td></td>
				    </tr>
				    </c:forEach>
				</tbody>
			</table>
		<!-- 01. 댓글창  -->
      		
      		
      		<br /><br /><br />
      		<br /><br /><br />
      		
      		
      	<!-- 02. 리뷰 작성 -->	
      	<!-- 헤더  -->
		<h1 style="font-family:'Noto Sans KR', sans-serif; font-size: 20px;">&nbsp;&nbsp;&nbsp;작성</h1>
		<hr />
		
      		<div class="form">
		        <form action="review_insert" method="post" >
			    	<!-- 
			          	bno(게시물번호=해당 드라마코드)값을 쓰기 위해선 드라마테이블의 code를 가져와야 하므로 hidden으로 code를 컨트롤러에 파라미타 값 보내기 
			        -->
		        	<input type="hidden" name="join_code"
						value="${movie_detail.movie_code }" />
		          	
			        	<div class="form-row">
			            	<div class="form-group col-md-3">
			              		&nbsp;<span style="color: #593996;"><i class="fa fa-user"></i></span>&nbsp; <span id="reviewReply">아이디</span>
			                	<input type="text" name="mreview_writer" class="form-control" id="name" value="${id }" readonly />
			                	<div class="validation"></div>
			              	</div>
			     		</div>
			     		
			     		<div class="form-group">
			     			&nbsp;<span style="color: #593996;"><i class="fa fa-edit"></i></span>&nbsp; <span id="reviewReply">감상평</span>
			              	<textarea class="form-control" name="mreview_content" rows="5" data-rule="required" data-msg="내용을 입력해주세요." placeholder="${id }님의  리뷰가 다른 회원에게 도움이 돼요!"></textarea>
			              	<div class="validation"></div>
			            </div>
			     		
			     		<--<div class="form-row">
			            	<div class="form-group col-md-3">
			              		&nbsp;<span style="color: #593996;"><i class="fa fa-check"></i></span>&nbsp; <span id="reviewReply">작성일</span>
			                	<input type="date" class="form-control" name="regdate" id="datePicker" value="yyyy-MM-dd" />
			                	<div class="validation"></div>
			              	</div>-->
			            </div>
			            <br />
			            <div class="text-center"><button type="submit">등록</button></div>
			          
			    </form>
	        </div>
	   	<!-- 02. 댓글 작성 끝 -->
			
	      	</div>	<!-- 컨테이너 끝 -->
    	</section>	<!-- #contact -->
	
	
		
	<!-- 02. 에피소드 + 영상 
		<section id="episode">
			<div class="container">
	        	<div class="section-header">
	          		<h2>에피소드</h2>
	          		<p>02. Episode</p>
	        	</div>
	        	
			<c:forEach items="${episode }" var="episode">
				<div class="row row-cols-1 row-cols-md-3">
					<div class="col mb-4">
				    	<div class="card">
				    		<div id="select_thumbnail1">
				    			<a href="${episode.video }">
				    				<img src="resources/upload-drama/${episode.thumbnail }" class="card-img-top">	    		
			    				</a>
				    		</div>
				      		<div class="card-body">
				        		<h5 class="card-title">${episode.eno }화.&nbsp;${episode.subtitle }</h5>
				        		<p class="card-text">${episode.video }</p>
				      		</div>
				   		</div>
					</div>
				</div>
			</c:forEach>
			</div>
		</section>
			
		
		</section> <!-- 드라마 상세보기 섹션 끝 -->
-->
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
            			<img src="resources/img/logo.png" alt="TheEvenet">
            			<p>In alias aperiam. Placeat tempore facere. Officiis voluptate ipsam vel eveniet est dolor et totam porro. Perspiciatis ad omnis fugit molestiae recusandae possimus. Aut consectetur id quis. In inventore consequatur ad voluptate cupiditate debitis accusamus repellat cumque.</p>
         			</div>

          			<div class="col-lg-3 col-md-6 footer-links">
            			<h4>Useful Links</h4>
            			<ul>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Home</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">About us</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Terms of service</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Privacy policy</a></li>
		            	</ul>
		          	</div>
		
		          	<div class="col-lg-3 col-md-6 footer-links">
		            	<h4>Useful Links</h4>
		           		<ul>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Home</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">About us</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Terms of service</a></li>
		              		<li><i class="fa fa-angle-right"></i> <a href="#">Privacy policy</a></li>
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
		
		            	<div class="social-links">
			            	<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
			            	<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
			              	<a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
			              	<a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
			              	<a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
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

	<!-- 제이쿼리 스크립트 -->
	<script>
	// star rating
	var starRating = function(){
	  var $star = $(".star-input"),
	      $result = $star.find("output>b");
	  $(document)
	    .on("focusin", ".star-input>.input", function(){
	    $(this).addClass("focus");
	  	})
	    .on("focusout", ".star-input>.input", function(){
	    var $this = $(this);
	    setTimeout(function(){
	      if($this.find(":focus").length === 0){
	        $this.removeClass("focus");
	      }
	    }, 100);
	  })
	    .on("change", ".star-input :radio", function(){
	    $result.text($(this).next().text());
	  })
	    .on("mouseover", ".star-input label", function(){
	    $result.text($(this).text());
	  })
	    .on("mouseleave", ".star-input>.input", function(){
	    var $checked = $star.find(":checked");
	    if($checked.length === 0){
	      $result.text("0");
	    } else {
	      $result.text($checked.next().text());
	    }
	  });
	};
	starRating();
	</script>
	
	
	<!-- 리뷰 댓글창 현재시각 기본값 설정 -->
	<script type="text/javascript">
		document.getElementById('datePicker').valueAsDate = new Date();
	</script>
		
	
	
	
</body>
</html>
