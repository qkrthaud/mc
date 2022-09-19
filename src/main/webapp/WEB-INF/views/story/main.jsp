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
<div class="wrapper subMain">
<%@ include file="../layout/header.jsp" %>
		<div id="container">
			<div class="content">
				
	<div class="visualArea bgStory" data-title="Story" data-desc="스토리">
					<div class="inner">
						<h1 class="titDep1">Story</h1>						
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<h2 class="titDep2">세계 1위의 푸드서비스 기업, 맥도날드</h2>
						<p role="text" class="txtInfo">전 세계 119개국 3만 4천여 개의 매장에서, 약 170만 명의 직원들이 근무하며<br>매일 6,900만 명의 고객들에게 제품과 서비스를 제공하고 있는 맥도날드는<br>전세계인들이 사랑하는 퀵 서비스 레스토랑(QSR, Quick Service Restaurant)이자<br>세계 1위의 푸드서비스 기업으로, 고객에게 더 나은 경험을 제공함으로써<br>&lsquo;고객이 가장 좋아하는 장소이자 음식을 즐기는 최고의 방법(Our Customer’s<br>Favorite Place and Way to Eat)&rsquo;이 되기 위해 노력하고 있습니다.</p>
						<ul class="submainCon">
							<li class="subMenu">
								<div class="img"><img src="<%=request.getContextPath()%>/resources/images/story/img_submenu01.jpg" alt="브랜드소개 이미지"></div>
								<div class="txtCon">
									<h3 class="tit">01. 브랜드소개</h3>
									<strong class="subTit">1955년부터 지금까지 이어져온<br>맥도날드의 발자취</strong>
									<p>1955년 작은 레스토랑에서부터 지금에 이르기까지<br>고객이 가장 좋아하는 장소이자, 음식을 즐기는<br>최고의 방법이 되기 위해 맥도날드는 오늘도 노력합니다.</p>
									<a href="<%=request.getContextPath()%>/story/brand/brandIntro" class="btnMC btnM" title="브랜드소개 페이지 이동">자세히 보기</a>
								</div>								
							</li>
							<li class="subMenu">								
								<div class="txtCon">
									<h3 class="tit">02.<br>맥도날드의<br>사회적 책임</h3>
									<strong class="subTit">더 나은 세상을 위한 맥도날드의 노력</strong>
									<p>맥도날드는 건전한 기업시민으로서의 책임을 다하고자 노력합니다.<br>지역 사회의 발전과 사람들의 행복에 기여하고<br>지금보다 더 나은 세상을 만들기 위해 오늘도 나아갑니다.</p>
									<a href="<%=request.getContextPath()%>/story/society/list" class="btnMC btnM" title="맥도날드의 사회적 책임과 지원 페이지 이동">자세히 보기</a>									
								</div>
								<div class="img"><img src="<%=request.getContextPath()%>/resources/images/story/img_submenu02.jpg" alt="맥도날드의 사회적 책임 이미지"></div>								
							</li>
							<li class="subMenu">
								<div class="img"><img src="<%=request.getContextPath()%>/resources/images/story/img_submenu03.jpg" alt="맥도날드 경쟁력 이미지"></div>
								<div class="txtCon">
									<h3 class="tit">03. 맥도날드 경쟁력</h3>
									<strong class="subTit">식재료부터 레스토랑까지<br>엄격한 기준을 고집합니다.</strong>
									<p>맥도날드는 어떤 곳 보다 햄버거 비즈니스를 진지하게 생각합니다.<br>엄격한 품질 관리 시스템을 통해 고품질의 음식을 제공하며,<br>조리 과정에서 고객이 궁금한 모든 것을 알려드립니다.</p><!-- 0702 문구수정 -->
									<a href="<%=request.getContextPath()%>/story/competition/farmToRestaurant" class="btnMC btnM">자세히 보기</a>
								</div>								
							</li>
							<li class="subMenu">								
								<div class="txtCon">
									<h3 class="tit">04. 맥도날드 사람들</h3>
									<strong class="subTit">최초의 서비스에 담긴 자부심으로<br>맥도날드의 새로운 변화를 이끌어갑니다.</strong>
									<p>끊임없는 변화와 도전을 통해 성장해온 맥도날드.<br>이 변화의 중심에는 맥도날드와 함께 변화하며 성장하는 <br>&apos;맥도날드 사람들&apos;이 있습니다.</p><!-- 0702 문구수정 -->
									<a href="<%=request.getContextPath()%>/story/people/crew" class="btnMC btnM" title="맥도날드 사람들 페이지 이동">자세히 보기</a>
								</div>
								<div class="img"><img src="<%=request.getContextPath()%>/resources/images/story/img_submenu04.jpg" alt="맥도날드 사람들 이미지"></div>						
							</li>
						</ul>
					</div>
				</div>
<%@ include file="../layout/aside.jsp" %>
</div>
<%@ include file="../layout/footer.jsp" %>
</div>
</div>
</body>
</html>