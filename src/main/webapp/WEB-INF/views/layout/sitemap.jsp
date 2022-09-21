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
	<%@ include file="../layout/header.jsp" %>	
		<div id="container">
			<div class="content">
				
<div class="titleArea" data-title="사이트맵" data-desc="사이트맵">
					<div class="inner">
						<h1 class="titDep1">사이트맵</h1>
						<ul class="navPath">
							<li><a href="<%=request.getContextPath() %>/main">Home</a></li>
							<li><a href="#">사이트맵</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="siteMap">
							<li><a href="javascript:gotoMenu('버거');">Menu</a>
								<ul class="depth">
									<li><a href="javascript:gotoMenu('버거')" class="dth2">버거</a></li>
							<li><a href="javascript:gotoMenu('맥런치')" role="button">맥런치</a></li>
							<li><a href="javascript:gotoMenu('맥모닝')" class="dth2">맥모닝</a></li>
							<li><a href="javascript:gotoMenu('해피스낵')" role="button">해피 스낵</a></li>
							<li><a href="javascript:gotoMenu('사이드')" class="dth2">사이드 &amp; 디저트</a></li>
							<li><a href="javascript:gotoMenu('맥카페')" class="dth2">맥카페 &amp; 음료</a></li>
							<li><a href="javascript:gotoMenu('해피밀AM')" class="dth2">해피밀</a></li>
									<!-- <li><a href="javascript:gotoMenu(11);" class="dth2">365일 즐거운 혜택</a></li> -->
								</ul>
							</li>
							<li><a href="<%=request.getContextPath() %>/store/search">Store</a>
								<ul class="depth">
									<li><a href="<%=request.getContextPath() %>/store/search" class="dth2">매장찾기</a></li>
									<li><a href="<%=request.getContextPath() %>/store/delivery" class="dth2">맥딜리버리</a></li>
									<li><a href="<%=request.getContextPath() %>/store/drive" class="dth2">맥드라이브</a></li>
									<li><a href="<%=request.getContextPath() %>/store/rental" class="dth2">임차문의</a></li>
								</ul>
							</li>
							<li><a href="<%=request.getContextPath() %>/whatsnew/whatsnew_promotion">What's New</a>
								<ul class="depth">
									<li><a href="<%=request.getContextPath() %>/whatsnew/whatsnew_promotion" class="dth2">프로모션</a></li>
									<li><a href="<%=request.getContextPath() %>/whatsnew/list.do" class="dth2">새로운 소식</a></li>
									<!--  li><a href="/kor/kitchen.do" class="dth2">주방공개의 날</a></li -->
									<!-- li><a href="/kor/happymeal/list.do" class="dth2">이달의 해피밀</a></li -->
								</ul>
							</li>
							<li><a href="<%=request.getContextPath() %>/story/main">Story</a>
								<ul class="depth">
									<li><a href="<%=request.getContextPath() %>/story/brand/brandIntro">브랜드 소개</a></li>
									<li><a href="<%=request.getContextPath() %>/story/society/list">사회적 책임과 지원</a></li>
									<li><a href="<%=request.getContextPath() %>/story/competition/farmToRestaurant">맥도날드 경쟁력</a></li>
									<li><a href="<%=request.getContextPath() %>/story/people/crew">맥도날드 사람들</a></li>
								</ul>
							</li>
							<li><a href="https://voc.mcd.co.kr/MC/HOM/faqMain.jsp" target="_blank" title="새창 열림">고객문의</a>
								<ul class="depth">
									<li><a href="https://voc.mcd.co.kr/MC/HOM/faqMain.jsp" target="_blank" title="새창 열림">FAQ</a></li>
									<li><a href="https://voc.mcd.co.kr/MC/HOM/inquiry.jsp" target="_blank" title="새창 열림">1:1 문의</a></li>
									<li><a href="<%=request.getContextPath() %>/layout/private">개인정보 처리방침</a></li>
								</ul>
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