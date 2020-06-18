<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">

<head>

<script type="text/javascript">
function check(color) {
	var t=document.terms;
	if (t.t1.checked && t.t2.checked) {
		t.btn.disabled=false; //약관 둘다 체크됐을시 버튼활성화
		 t.btn.style.background=color; // 약관 둘다 체크됐을시 버튼색 변경
	}else{
		t.btn.disabled=true; // 둘중하나라도 체크되지않았다면 그대로 버튼은 비활성화
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
        
          <h2>가입약관</h2>
          <p>아래 약관사항은 PlamingGo 가입을위한 필수 동의 사항입니다.</p>
        </div>


    
	<form method="POST" action="join" name="terms" >
          <div class="form-row justify-content-center"  >
            <div class="col-auto">
            
            <h4 id="terms" style="margin-top: 50px;">이용약관</h4>
              <div style="overflow-y:auto; width:900px; height:400px;margin-left:20px; margin-bottom : 15px; padding:18px; background-color:white;">
             제 1장 총칙

제 1 조(목적) <br />
<br /> 
본 약관은 국가공간정보포털 웹사이트(이하 "국가공간정보포털")가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 회원과 국가공간정보포털의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.<br /> 
<br />
제 2 조(약관의 효력과 변경)<br /> 
<br />
1. 국가공간정보포털은 이용자가 본 약관 내용에 동의하는 경우, 국가공간정보포털의 서비스 제공 행위 및 회원의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다. <br />
2. 국가공간정보포털은 약관을 개정할 경우, 적용일자 및 개정사유를 명시하여 현행약관과 함께 국가공간정보포털의 초기화면에 그 적용일 7일 이전부터 적용 전일까지 공지합니다. 단, 회원에 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 국가공간정보포털은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 회원이 알기 쉽도록 표시합니다. <br />
3. 변경된 약관은 국가공간정보포털 홈페이지에 공지하거나 e-mail을 통해 회원에게 공지하며, 약관의 부칙에 명시된 날부터 그 효력이 발생됩니다. 회원이 변경된 약관에 동의하지 않는 경우, 회원은 본인의 회원등록을 취소(회원탈퇴)할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이내에 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우는 약관 변경에 대한 동의로 간주됩니다. <br />
<br /> 
제 3 조(약관 외 준칙) <br />
<br /> 
본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다. <br />
<br /> 
제 4 조(용어의 정의) <br />
<br /> 
본 약관에서 사용하는 용어의 정의는 다음과 같습니다. <br />
1. 이용자 : 본 약관에 따라 국가공간정보포털이 제공하는 서비스를 받는 자 <br /> 
2. 가입 : 국가공간정보포털이 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위 <br /> 
3. 회원 : 국가공간정보포털에 개인 정보를 제공하여 회원 등록을 한 자로서 국가공간정보포털이 제공하는 서비스를 이용할 수 있는 자. <br /> 
4. 계정(ID) : 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 국가공간정보포털에서 부여하는 문자와 숫자의 조합 <br /> 
5. 비밀번호 : 회원과 계정이 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 회원 자신이 선정한 문자와 숫자의 조합 <br /> 
6. 탈퇴 : 회원이 이용계약을 종료시키는 행위 <br /> 
7. 본 약관에서 정의하지 않은 용어는 개별서비스에 대한 별도 약관 및 이용규정에서 정의합니다. <br /> 
<br /> 
<br /> 
제 2장 서비스 제공 및 이용<br /> 
<br /> 
제 5 조 (이용계약의 성립)<br /> 
<br /> 
<strong style="color: #007DCD;">
1. 이용계약은 이용자가 온라인으로 국가공간정보포털에서 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료하는 것으로 성립됩니다.<br /> 
2. 국가공간정보포털은 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.<br /> </strong>
   1) 다른 사람의 명의를 사용하여 신청하였을 때<br /> 
   2) 이용계약 신청서의 내용을 허위로 기재하였거나 신청하였을 때<br /> 
   3) 다른 사람의 국가공간정보포털 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때<br /> 
   4) 국가공간정보포털을 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우<br /> 
   5) 기타 국가공간정보포털이 정한 이용신청요건이 미비 되었을 때<br /> 
<br /> 
제 6 조 (회원정보 사용에 대한 동의)<br /> 
<br /> 
<strong style="color: #007DCD;">
1. 회원의 개인정보는 「공공기관의개인정보보호에관한법률」에 의해 보호됩니다.<br /> 
2. 국가공간정보포털의 회원 정보는 다음과 같이 사용, 관리, 보호됩니다.<br /> </strong>
   1) 개인정보의 사용 : 국가공간정보포털는 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습 니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 이용자 스스로 개인정보를 공개한 경우에는 그러 하지 않습니다.<br /> 
   2) 개인정보의 관리 : 회원은 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 회원의 개인정보를 수정/삭제할 수 있습니다.<br /> 
   3) 개인정보의 보호 : 회원의 개인정보는 오직 본인만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 회원의 계정과 비밀번호에 의해 관리되고 있습니다. 따라서 타인에게 본인의 계정과 비밀번호를 알려주어서는 안되며, 작업 종료시에는 반드시 로그아웃해 주시기 바랍니다.<br /> 
<strong style="color: #007DCD;">3. 회원이 본 약관에 따라 이용신청을 하는 것은, 국가공간정보포털의 신청서에 기재된 회원정보를 수집, 이용하는 것에 동의하는 것으로 간주 됩니다.<br /> 
</strong>
<br /> 
제 7 조 (사용자의 정보 보안)<br /> 
<br /> 
1. 이용자는 국가공간정보포털 서비스 가입 절차를 완료하는 순간부터 본인이 입력한 정보의 비밀을 유지할 책임이 있으며, 회원이 고의나 중대한 실수로 회원의 계정과 비밀번호를 사용하여 발생한 피해에 대한 책임은 회원 본인에게 있습니다.<br /> 
2. 계정과 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 계정이나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우에는 즉시 국가공간정보포털에 신고하여야 합니다. 신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다.<br /> 
3. 이용자는 국가공간정보포털 서비스의 사용 종료시마다 정확히 접속을 종료해야 하며, 정확히 종료하지 아니함으로써 제3자가 이용자에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 국가공간정보포털은 책임을 부담하지 아니합니다.<br /> 
<br /> 
제 8 조 (서비스의 변경)<br /> 
<br /> 
1. 당 사이트는 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다.<br /> 
2. 당 사이트는 서비스 이용과 관련하여 가입자에게 발생한 손해 중 가입자의 고의,과실에 의한 손해에 대하여 책임을 부담하지 아니합니다.<br /> 
<br /> 
제 9 조 (이용기간 및 자격의 정지 및 상실)<br /> 
<br /> 
1. 국가공간정보포털 회원이용기간은 조직통폐합에 따른 불가항력을 제외하고 회원신청에서 탈퇴까지로 합니다.<br /> 
2. 국가공간정보포털은 이용자가 본 약관에 명시된 내용을 위배하는 행동을 한 경우, 이용자격을 일시적으로 정지하고 30일 이내에 시정하도록 이용자에게 요구할 수 있으며, 이후 동일한 행위를 2회 이상 반복할 경우에 30일간의 소명기회를 부여한 후 이용자격을 상실시킬 수 있습니다.<br /> 
3. 국가공간정보포털 회원이 신청 후 12개월이상 장시간 이용하지 않은 회원은 휴면아이디로 분류하여, 자격 정지 및 상실이 가능합니다.<br /> 
<br /> 
제 10 조 (계약해제, 해지 등)<br /> 
<br /> 
1. 회원은 언제든지 서비스 초기화면의 마이페이지 또는 정보수정 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, 국가공간정보포털은 관련법 등이 정하는 바에 따라 이를 즉시 처리하여야 합니다.<br /> 
2. 회원이 계약을 해지할 경우, 관련법 및 개인정보취급방침에 따라 국가공간정보포털이 회원정보를 보유하는 경우를 제외하고는 해지 즉시 회원의 모든 데이터는 소멸됩니다.<br /> 
3. 회원이 계약을 해지하는 경우, 회원이 작성한 게시물 중 블로그 등과 같이 본인 계정에 등록된 게시물 일체는 삭제됩니다. 단, 타인에 의해 스크랩 되어 재게시되거나, 공용게시판에 등록된 게시물 등은 삭제되지 않으니 사전에 삭제 후 탈퇴하시기 바랍니다.<br /> 
<br /> 
제 11 조 (게시물의 저작권)<br /> 
<br /> 
1. 이용자가 게시한 게시물의 저작권은 이용자가 소유하며, 국가공간정보포털는 서비스 내에 이를 게시할 수 있는 권리를 갖습니다.
2. 국가공간정보포털은 다음 각 호에 해당하는 게시물이나 자료를 사전통지 없이 삭제하거나 이동 또는 등록 거부를 할 수 있습니다.
   1) 본서비스 약관에 위배되거나 상용 또는 불법, 음란, 저속하다고 판단되는 게시물을 게시한 경우
   2) 다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우
   3) 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우
   4) 불법복제 또는 해킹을 조장하는 내용인 경우
   5) 영리를 목적으로 하는 광고일 경우
   6) 범죄와 결부된다고 객관적으로 인정되는 내용일 경우
   7) 다른 이용자 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우
   8) 국가공간정보포털에서 규정한 게시물 원칙에 어긋나거나, 게시판 성격에 부합하지 않는 경우
   9) 기타 관계법령에 위배된다고 판단되는 경우
3. 이용자의 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 이용자가 부담하여야 합니다.


제 3장 의무 및 책임


제 12 조 (국가공간정보포털의 의무)

1. 국가공간정보포털은 회원의 개인 신상 정보를 본인의 승낙없이 타인에게 누설, 배포하지 않습니다. 단, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지 아니합니다.
2. 국가공간정보포털은 법령과 본 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 지속적·안정적으로 서비스를 제공하기 위해 노력 할 의무가 있습니다.
3. 국가공간정보포털은 이용자의 귀책사유로 인한 서비스 이용 장애에 대하여 책임을 지지 않습니다.

제 13 조 (회원의 의무)

1. 회원 가입시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 회원에 대한 정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 회원은 자신의 계정 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
2. 회원은 국가공간정보포털의 사전 승낙없이 서비스를 이용하여 어떠한 영리행위도 할 수 없으며, 그 영업활동의 결과에 대해 국가공간정보포털은 일절 책임을 지지 않습니다. 또한 회원은 이와 같은 영업활동으로 국가공간정보포털이 손해를 입은 경우 손해배상의무를 지며, 국가공간정보포털은 해당 회원에 대해 서비스 이용제한 및 적법한 절차를 거쳐 손해배상 등을 청구할 수 있습니다.
3. 회원은 국가공간정보포털 서비스 이용과 관련하여 다음 각 호의 행위를 하여서는 안됩니다.
   1) 회원가입 신청 또는 회원정보 변경 시 허위내용을 기재하거나 다른 회원의 비밀번호와 ID를 도용하여 부정 사용하는 행위
   2) 저속, 음란, 모욕적, 위협적이거나 타인의 Privacy를 침해할 수 있는 내용을 전송, 게시, 게재, 전자우편 또는 기타의 방법으로 전송하는 행위
   3) 국가공간정보포털 운영진, 직원 또는 관계자를 사칭하는 행위
   4) 서비스를 통하여 전송된 내용의 출처를 위장하는 행위
   5) 법률, 계약에 의해 이용할 수 없는 내용을 게시, 게재, 전자우편 또는 기타의 방법으로 전송하는 행위
   6) 서버 해킹 및 컴퓨터바이러스 유포, 웹사이트 또는 게시된 정보의 일부분 또는 전체를 임의로 변경하는 행위
   7) 타인의 특허, 상표, 영업비밀, 저작권, 기타 지적재산권을 침해하는 내용을 게시, 게재, 전자우편 또는 기타의 방법으로 전송하는 행위
   8) 국가공간정보포털의 승인을 받지 아니한 광고, 판촉물, 스팸메일, 행운의 편지, 피라미드 조직 기타 다른 형태의 권유를 게시, 게재, 전자우편 또는 기타의 방법으로 전송하는 행위
   9) 다른 사용자의 개인정보를 수집, 저장, 공개하는 행위
   10) 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위
   11) 선량한 풍속, 기타 사회질서를 해하는 행위
   12) 타인의 명예를 훼손하거나 모욕하는 행위
   13) 타인의 지적재산권 등의 권리를 침해하는 행위
   14) 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 지속적으로 전송하는 행위
   15) 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있는 일체의 행위
   17) 본 약관을 포함하여 기타 국가공간정보포털이 정한 제반 규정 또는 이용 조건을 위반하는 행위
   18) 기타 관계법령에 위배되는 행위


제 4장 기타


제 14 조 (양도금지)

회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없습니다.

제 15조 (면책조항)

1. 국가공간정보포털은 서비스 이용과 관련하여 이용자에게 발생한 손해에 대하여 국가공간정보포털의 중대한 과실, 고의 또는 범죄행위로 인해 발생한 손해를 제외하고 이에 대하여 책임을 부담하지 않으며, 이용자가 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다.
2. 국가공간정보포털은 서비스 이용과 관련하여 이용자에게 발생한 손해 중 이용자의 고의, 실수에 의한 손해에 대하여 책임을 부담하지 아니합니다.
3. 국가공간정보포털은 이용자간 또는 이용자와 제3자간에 서비스를 매개로 하여 물품거래 혹은 금전적 거래 등과 관련하여 어떠한 책임도 부담하지 아니하고, 이용자가 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.

제 16 조 (재판관할)

국가공간정보포털과 이용자간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을 적용하며, 본 분쟁으로 인한 소는 민사소송법상의 관할법원에 제기합니다.
부 칙 1. (시행일) 본 약관은 2016년 1월 1일부터 시행됩니다.
              </div>
              
              
        	  <p><!-- 온클릭으로 체크할시 위에 스크립트를 불러오며 동시에 체크됐을시를 대비해 변경할 색상코드를 전달 -->
            <input type="checkbox" name="t1" onclick="check('#F82249')"/> 이용약관에 대하여 확인했으며, 동의합니다.
 			 </p>      
  
            <h4 id="terms">개인정보 수집 및 이용에 대한 안내</h4>
             <div style="overflow-y:auto; width:900px; height:300px;margin-left:20px; margin-bottom : 15px; padding:18px; background-color:white;">
가. 개인정보의 수집 및 이용 목적 <br />
① 국가공간정보포털은 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다. <br />
<strong style="color: #007DCD;">
1. 국가공간정보포털 서비스 제공을 위한 회원관리 <br />
1) 공간정보 다운로드, 오픈API 신청 및 활용 등 포털 서비스 제공과 서비스 부정이용 방지를 목적으로 개인정보를 <br />
   처리합니다. <br /></strong>
 <br />
나. 수집하는 개인정보의 항목 <br />
<strong style="color: #007DCD;">① 국가공간정보포털 회원정보(필수): 이름, 이메일(아이디), 비밀번호 <br /> </strong>
 <br />
다. 개인정보의 보유 및 이용기간 <br />
① 국가공간정보포털은 법령에 따른 개인정보 보유ㆍ이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유ㆍ이용기간 내에서 개인정보를 처리ㆍ보유합니다. <br />
<strong style="color: #007DCD;">
1. 국가공간정보포털 회원정보 <br />
- 수집근거: 정보주체의 동의 <br />
- 보존기간: 회원 탈퇴 요청 전까지(1년 경과 시 재동의) <br />
- 보존근거: 정보주체의 동의 <br /></strong>
 <br />
라. 동의 거부 권리 및 동의 거부에 따른 불이익 <br />
위 개인정보의 수집 및 이용에 대한 동의를 거부할 수 있으나, 동의를 거부할 경우 회원 가입이 제한됩니다. <br />
             </div>
              <p><!-- 온클릭으로 체크할시 위에 스크립트를 불러오며 동시에 체크됐을시를 대비해 변경할 색상코드를 전달 -->
            <input type="checkbox" name="t2" onclick="check('#F82249')"/>개인정보 수집 및 이용에 대하여 동의합니다.
            </p> <!-- 최초 비활성화 상태로 해놓았으며 위에 스크립트에서 동의사항 둘다 동의됐을시 색상변경 및 활성화 -->
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

