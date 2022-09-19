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
				
<div class="visualArea bgStory02" data-title="맥도날드 사회적 책임" data-desc="행복의 버거 캠페인">
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
							<li><a href="<%=request.getContextPath() %>/story/society/happyBurger" role="button" aria-selected="true">행복의 버거 캠페인</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/safetyGuard" role="button">맥도날드 안전지킴 캠페인</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/mcDonaldHouse" role="button">재단법인 로날드맥도날드하우스</a></li>
						</ul>
						
						<div class="socialTab">
							<div class="img"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_02_01.jpg" alt="행복의 버거 캠페인 대표이미지"></div>
							<h2 class="titDep2">&lsquo;행복의 버거&rsquo; 캠페인은 무엇인가요?</h2>
							<p role="text" class="txtInfo02">&lsquo;행복의 버거&rsquo;는 나눔과 사랑의 손길이 필요한<br>우리 주변 이웃들에게 햄버거를 전달하는 캠페인입니다.</p>
														
							<div class="socialList">
								<ul>
									<li>
										<span class="thum"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_02_02.jpg" alt="강원산불피해돕기 이미지"></span>
										<strong>강원 산불 피해 이재민 및 소방관 물품 지원</strong>
										<p>2019년 4월, 강원지역에서 일어난 산불로 피해를 입은 이재민과 피해 복구에 나선<br>강원지역 4개 소방서 소방관들에게 버거 및 음료 2,000세트를 제공했습니다.<br>뿐만 아니라, 맥도날드는 2018년 5월 소방청과 &lsquo;행복의 버거 캠페인&rsquo; 협약을 체결하며<br>5,000세트에 달하는 행복의 버거를 순직 소방관의 유가족 및 공상 소방관과 그 가족들에게<br>무상으로 제공해오고 있습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_02_03.jpg" alt="영진종합사회복지관
버거전달 이미지"></span>
										<strong>부산 영진종합사회복지관에 행복의 버거 증정</strong>
										<p>맥도날드는 5월 8일 어버이날을 맞아 영진종합사회복지관에 어르신들을 위한<br>행복의 버거 200세트를 제공했습니다. 맥도날드는 지난 8년간 지역 내 봉사활동에<br>앞장서온 부산 지역 직원들의 선행에 동참하는 의미로 이날 행사를 준비했습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_02_04.jpg" alt="논산훈련소 버거전달 이미지"></span>
										<strong>논산 육군훈련소에 행복의 버거 세트 제공</strong>
										<p>맥도날드는 2018년 12월 28일 한파 속에서 국방의 의무를 다하는 육군 훈련병들에게<br>빅맥 1,000개와 애플파이 12,000개를 무상 제공했습니다.이처럼 맥도날드는 지난 7년간<br>지역아동센터 어린이, 어린이 병원 환우, 장애 학생과 학부모, 환경 미화원, 육군 훈련생,<br>순직 소방관 유가족 등 다양한 이웃들을 위해 20만개가 넘는 햄버거를 전달하며 나눔의<br>의미를 실천하고 있습니다.</p>
									</li>
								</ul>
							</div>
							<div class="btnArea">
								<a href="<%=request.getContextPath() %>/story/society/list" role="button" class="btnList"><span>목록보기</span></a>
							</div>
						</div>
						<!-- //socialTab -->
					</div>
				</div>
				<!-- //contArea -->

<%@ include file="../../layout/aside.jsp" %>
</div>
<%@ include file="../../layout/footer.jsp" %>
</div>
</div>
</body>
</html>