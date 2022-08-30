<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="${path}/resources/css/mc.css" rel="stylesheet">
<link href="${path}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	<c:import url="../layout/header.jsp" />
	<div class="wrapper">
	<div id="container">
			<div class="content">
	<div class="visualArea bgMenu01">
		<div class="inner">
			<h1 class="titDep1">버거</h1>
			<p class="subCopy">
				빅맥<sub class="reg">®</sub>에서 맥스파이시<sub class="reg">®</sub> 상하이버거까지,
				<br>주문 즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다.
			</p>
			<ul class="navPath">
				<li><a href="/">Home</a></li>
				<li><a href="${path}/menu/list?value=버거">Menu</a></li>
				<li><a href="${path}/menu/list?value=${value}">${value }</a></li>
			</ul>
		</div>
	</div>

	<div class="contArea">
		<div class="inner">
			<ul class="tabType01">

				<li data-title="버거" data-desc="버거메뉴"><a
					href="javascript:gotoMenu(1);" role="button" aria-selected='true'>단품메뉴</a></li>
				<!-- 선택 된 태그에 aria-selected="true" 추가 -->
				<li><a href="javascript:gotoMenu(2);" role="button">세트메뉴</a></li>

			</ul>
			<div class="mcMenu">
				<p class="count" id="count"></p>
				<ul class="menuList" id="menuList">
					<c:forEach var="dto" items="${ list }">
						<li><a href="detail?engName=${dto.engName }">
								<div class="thum">
									<img src="${path}/resources/menuimg/${dto.image}"
										alt="${dto.name }">
								</div> <br>
								<div class="name">
									<strong class="ko">${dto.name }</strong> <em class="en">${dto.engName }</em>
								</div>
						</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<form id="searchForm" method="post">
		<input type="hidden" name="page" id="page" value="1"> <input
			type="hidden" name="seq" id="seq"> <input type="hidden"
			name="sub_category_seq" id="sub_category_seq" value="1">
	</form>
</div>
</div>
</div>
	<c:import url="../layout/footer.jsp" />
</body>
</html>