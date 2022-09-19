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
				
<div class="visualArea bgStory02" data-title="사회적 책임과 지원" data-desc="사회적 책임과 지원">
					<div class="inner">
						<h1 class="titDep1">사회적 책임과 지원</h1>
						<p class="subCopy">맥도날드는 건전한 기업시민으로서의 책임을 다하고자 노력합니다.<br>지역 사회의 발전과 사람들의 행복에 기여하고, 지금보다 더 나은 세상을 만들기 위해 오늘도 나아갑니다.</p>
						<ul class="navPath">
							<li><a href="<%=request.getContextPath() %>/main">Home</a></li>
							<li><a href="<%=request.getContextPath() %>/story/main">Story</a></li>
							<li><a href="#">맥도날드 사회적 책임</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<h2 class="titDep2">McDonald's Sustainability</h2>
						<div class="social">
							<div>
								<a href="<%=request.getContextPath() %>/story/society/scaleForGood">
									<span class="thum"><img src="<%=request.getContextPath() %>/resources/images/story/img_social01.jpg" alt=""></span>
									<strong>스케일 포 굿</strong>
									<p>스케일 포 굿 캠페인은 맥도날드가 책임있는 글로벌 기업으로<br>전세계 사회, 환경문제에 기여하고자 시작한 캠페인입니다.</p>
								</a>
							</div>
							<div>
								<a href="<%=request.getContextPath() %>/story/society/kidsSoccer">
									<span class="thum"><img src="<%=request.getContextPath() %>/resources/images/story/img_social02.jpg" alt=""></span>
									<strong>지역사회 공헌</strong>
									<p>맥도날드가 속한 지역사회에서 받은 사랑을 되돌려주고,<br>지역사회의 발전과 행복에 기여하고자 노력하고 있습니다.</p>
								</a>
							</div>
						</div>
					</div>
				</div>

<%@ include file="../../layout/aside.jsp" %>
</div>
<%@ include file="../../layout/footer.jsp" %>
</div>
</div>
</body>
</html>