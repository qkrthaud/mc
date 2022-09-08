<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://www.mcdonalds.co.kr/kor/js/libs.js"></script>
<script src="https://www.mcdonalds.co.kr/kor/js/common.js?t=2022012502"></script>
</head>
<body>
<div class="wrapper ">
	<%@ include file="../../layout/header.jsp" %>
		<div id="container">
			<div class="content">
				
	<div class="visualArea bgStory02"  data-title="맥도날드 사회적 책임" data-desc="재단법인 로날드맥도날드하우스">
					<div class="inner">
						<h1 class="titDep1">맥도날드 사회적 책임</h1>
						<p class="subCopy">맥도날드는 건전한 기업시민으로서의 책임을 다하고자 노력합니다.<br>지역 사회의 발전과 사람들의 행복에 기여하고, 지금보다 더 나은 세상을 만들기 위해 오늘도 나아갑니다.</p>
						<ul class="navPath">
							<li><a href="<%=request.getContextPath() %>/main">Home</a></li>
							<li><a href="<%=request.getContextPath() %>/story/main">Story</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/list">맥도날드 사회적 책임</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
								<li><a href="<%=request.getContextPath() %>/story/society/kidsSoccer" role="button">로날드 맥도날드 어린이 축구교실</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/happyBurger" role="button" >행복의 버거 캠페인</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/safetyGuard" role="button" >맥도날드 안전지킴 캠페인</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/mcDonaldHouse" role="button" aria-selected="true">재단법인 로날드맥도날드하우스</a></li>
						</ul>
						
						<div class="socialTab">
							<div class="img"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_04_01.jpg" alt="로날드 맥도날드 하우스 대표이미지"></div>
							<h2 class="titDep2">&lsquo;재단법인 로날드맥도날드하우스&rsquo; 은 무엇인가요?</h2>
							<p role="text" class="txtInfo02">RMHC(Ronald McDonald House Charities) 는 아동 복지 사업을 실시하는 글로벌 비영리 법인으로<br>현재 전세계 64개국에서 RMHC 하우스를 건립, 운영하고 있습니다.</p>
							<p role="text" class="txtInfo">한국에서는 RMHC Korea가 국내 1호 RMHC 하우스를 경남 양산 부산대학교 병원 부지 내에 건립 중이며, 오는 2019년 하반기 오픈을 앞두고 있습니다.<br>RMHC는 중증 환아를 둔 가족이 병원 인근에 머무르며 치료에 집중할 수 있도록 편안한 RMHC 하우스를 제공함으로써,<br>아픈 어린이들이 가족의 돌봄과 지지를 받으며 건강한 사회의 일원으로 성장하도록 동행하고 있습니다.</p>
							<a href="http://www.rmhc.or.kr/" target="_blank" role="button" class="btnStn">RMHC 바로가기</a>
							<div class="btnArea">
								<a href="<%=request.getContextPath() %>/story/society/list" role="button" class="btnList"><span>목록보기</span></a>
							</div>
						</div>
						<!-- //socialTab -->
					</div>
				</div>

<%@ include file="../../layout/aside.jsp" %>
</div>
<%@ include file="../../layout/footer.jsp" %>
</div>
</div>
</body>
</html>