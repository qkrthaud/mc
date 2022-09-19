<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrapper ">
	<%@ include file="../../layout/header.jsp" %>
		<div id="container">
			<div class="content">
				
<div class="visualArea bgStory04" data-title="맥도날드 사람들" data-desc="인재채용">
					<div class="inner">
						<h1 class="titDep1">맥도날드 사람들</h1>
						<p class="subCopy">끊임없는 변화와 도전을 통해 성장해온 맥도날드<br>이 변화의 중심에는 맥도날드와 함께 변화하며 성장하는 &lsquo;맥도날드 사람들&rsquo;이 있습니다.</p>
						<ul class="navPath">
							<li><a href="<%=request.getContextPath() %>/main">Home</a></li>
							<li><a href="<%=request.getContextPath() %>/story/main">Story</a></li>
							<li><a href="<%=request.getContextPath() %>/story/people/crew">맥도날드 사람들</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner type02">
						<ul class="tabType01">
							<li><a href="<%=request.getContextPath() %>/story/people/crew.do" role="button">크루이야기</a></li>
							<li><a href="<%=request.getContextPath() %>/story/people/work.do" role="button">업무소개</a></li>
							<li><a href="#" role="button" aria-selected="true">인재채용</a></li>
						</ul>
						<div class="careerIntro">
							<p>변화를 만나는 곳, 변화를 만드는 곳<br>한국맥도날드의 최신 채용정보를 확인하세요.</p>
						</div>
						<div class="careersWrap">
							<div>
								<img src="<%=request.getContextPath() %>/resources/images/story/img_career01.jpg" alt="">
								<p>맥도날드의 시간제(Part Time) 근무자를 우리는 크루(Crew) 라고 부릅니다.<br>즐거운 일터에서 함께 일하며 경험을 쌓고, 다양한 혜택과 매니저로 성장할 수 있는<br>최고의 기회를 누려보세요!</p>
								<a href="https://www.mcalba.co.kr/m/appstrap/" class="btnMC btnM" target="_blank" title="새창 열림">크루 지원하기</a>
							</div>
							<div>
								<img src="<%=request.getContextPath() %>/resources/images/story/img_career02.jpg" alt="">
								<p>사회인으로 첫 발을 내딛는 지금, 당신은 중요한 선택의 순간에 서 있습니다.<br>당신의 첫번째 선택이 맥도날드가 되기를 희망합니다. 늘 현명한 선택으로 성공을 창조해 온 맥도날드, 이곳에서 당신의 소중한 꿈을 펼쳐보세요 !</p>
								<a href="http://mcd.saramin.co.kr" class="btnMC btnM" target="_blank" title="새창 열림">레스토랑 매니저 / 본사 직원 지원하기</a>
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