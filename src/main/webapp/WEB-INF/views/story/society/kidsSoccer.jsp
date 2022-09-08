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
				
<div class="visualArea bgStory02" data-title="맥도날드 사회적 책임" data-desc="어린이 축구교실">
					<div class="inner">
						<h1 class="titDep1">맥도날드 사회적 책임</h1>
						<p class="subCopy">맥도날드는 어떤 곳 보다 햄버거 비즈니스를 진지하게 생각합니다.<br>엄격한 품질 관리 시스템을 통해 고품질의 음식을 제공하며,조리 과정에서 고객이 궁금한 모든 것을 알려드립니다.</p>
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
							<li><a href="<%=request.getContextPath() %>/story/society/kidsSoccer" role="button" aria-selected="true">로날드 맥도날드 어린이 축구교실</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/happyBurger" role="button">행복의 버거 캠페인</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/safetyGuard" role="button">맥도날드 안전지킴 캠페인</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/mcDonaldHouse" role="button">재단법인 로날드맥도날드하우스</a></li>
						</ul>
						
						<div class="socialTab">
							<div class="img"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_01_01.jpg" alt="어린이축구교실 대표이미지"></div>
							<h2 class="titDep2">&lsquo;로날드 맥도날드<br>어린이 축구교실&rsquo; 은 무엇인가요?</h2>
							<p role="text" class="txtInfo02">로날드 맥도날드 어린이 축구교실은 축구를 통해 우리 어린이들에게 마음껏 뛰어 놀며<br>성장할 수 있는 환경을 만들어 주고자 시작한 캠페인입니다.</p>
							<p role="text" class="txtInfo">2006년 처음 시작된 축구교실은 참가한 어린이와 가족들의 뜨거운 반응을 얻고 있습니다.<br>로날드 맥도날드 어린이 축구교실의 참가비는 무료이며, 참가 어린이 모두에게 유니폼이 제공됨은 물론, 영양교육 비디오와 수료증 등이 제공됩니다.</p>
							<div class="socialList">
								<ul>
									<li>
										<span class="thum"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_01_02.jpg" alt="아빠와 함께하는 축구교실 이미지"></span>
										<strong>아빠와 함께하는 축구교실</strong>
										<p>&lsquo;아빠와 함께 하는 축구교실&rsquo;은 맥도날드의 대표 사회공헌 활동인 &lsquo;로날드 맥도날드<br>어린이 축구교실&rsquo;의 일환으로, 여가시간을 좀 더 자녀들과 보내고자 하는 아빠들이 체계적이고 효과적인 축구 수업을 받고, 추후 직접 아이들의 선생님 역할을 하도록 돕고 있습니다. FC서울의 유소년 코치가 직접 지도하는 전문적인 커리큘럼과 아빠와 자녀가 함께 운동을 즐기며 추억을 쌓을 수 있는 프로그램 구성으로 매년 가족 단위 참가자들로부터 높은 호응을 얻고 있습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_01_03.jpg" alt="학교방문 축구교실 이미지"></span>
										<strong>학교방문 축구교실</strong>
										<p>맥도날드의 찾아가는 &lsquo;학교방문 축구교실&rsquo; 은 현재 부산 지역에서 부산아이파크<br>축구단과의 협약을 통해 부산 지역 어린이들을 대상으로 진행하는 무료 축구교실 프로그램입니다. 대한축구협회 라이선스를 가진 부산아이파크 유소년 코치들이<br>부산지역 내 초등학교를 방문하여 체계적이고 전문적인 축구 기본기 교육을 가르치고 있으며, 2019년 축구교실 참여 어린이에게는 수료증과 함께 부산아이파크 홈 경기 1회<br>무료 관람권 및 동반 부모님 대상 티켓 50% 할인 혜택이 주어집니다.</p>
									</li>
									<li>
										<span class="thum"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_01_04.jpg" alt="다문화 어린이 축구교실 이미지"></span>
										<strong>다문화 가정 어린이 축구교실</strong>
										<p>맥도날드는 다문화가정 어린이들의 건강한 성장 발달과 사회통합을 위해 서울지역 다문화가정지원센터 및 FC 서울과 함께 &lsquo;다문화가정 어린이 축구교실&rsquo;을 운영하고 있습니다. 다문화 가정 어린이들과 일반 가정 어린이들이 한데 어우러져 프로그램에 참여함으로써 다문화 가정 어린이들의 체력과 사회성을 기르는데 도움을 주고 있습니다.</p>
									</li>
									
									<li>
										<span class="thum"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02_01_06.jpg" alt="특수학교 축구교실 이미지"></span>
										<strong>특수학교 축구교실</strong>
										<p>맥도날드는 지난 2016년부터 평소 체육 활동이 어려운 특수학교 학생들을 대상으로<br>3년째 축구교실 프로그램을 진행하고 있습니다. 2018년 12월에는 부산맹학교를 찾아가 전문 코치들과 함께 시각 장애 학생들을 위한 맟춤형 축구교육을 제공하고 행복의 버거 100세트를 전달하기도 했습니다. 2019년부터는 특수학교 대상 축구교실을 연 2회로 확대함으로써 스포츠 사각지대에 놓인 학생들에게 운동의 즐거움을 알려주고 <br>소중한 추억을 선사하고자 합니다.</p>
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
<%@ include file="../../layout/aside.jsp" %>
</div>
<%@ include file="../../layout/footer.jsp" %>
</div>
</div>
</body>
</html>