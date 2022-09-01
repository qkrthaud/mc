<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>



<div class="wrapper">
<%@ include file="../layout/header.jsp" %>

<div id="container">
			<div class="content">
				
				<div class="visualArea bgStore01" data-title="맥드라이브" data-desc="맥드라이브">
					<div class="inner">
						<h1 class="titDep1">맥드라이브</h1>
						<ul class="navPath">
							<li><a href="<%=request.getContextPath()%>/main">Home</a></li>
							<li><a href="search">Store</a></li>
							<li><a href="#">맥드라이브</a></li>
						</ul>
					</div>
				</div>
<div class="contArea">
					<div class="inner">
						<h2 class="titDep2">맥드라이브는 어떻게 이용하나요?</h2>
						<p role="text" class="txtInfo">운전 중에도 24시간 간편하고 빠르게!<br> 차 안에서 주문하고, 차 안에서 바로 받아 맛있는 맥도날드를 즐겨보세요.</p>
						<div class="driveVideo">
						
						<iframe title="주차보다 쉬운 맥드라이브!" width="100%" height="650px" src="https://www.youtube.com/embed/BiMkqfVNmnk?controls=1&amp;cc_lang_pref=ko&cc_load_policy=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>
						<div class="btnArea">
							<a href="search" class="btnMC btnL">맥드라이브 매장 검색하기</a>
						</div>
					</div>
				</div>
				<%@ include file="../layout/aside.jsp" %>
</div>
<%@ include file="../layout/footer.jsp" %>
</div>

</div>
</body>
</html>