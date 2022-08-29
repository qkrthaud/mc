<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/css/mc.css" rel="stylesheet">
</head>
<body>
	<c:import url="../layout/header.jsp" />
	<div class="wrapper">
	<h3>${value }</h3>

		<li data-title="버거" data-desc="버거메뉴">
			<p class="count" id="count">
				<ul class="menuList" id="menuList">
				<c:forEach var="dto" items="${ list }">
			<li>
				<a href="detail?engName=${dto.engName }">
				<div class="thum">
				<img src="${path}/resources/menuimg/${dto.image}" alt="${dto.name }">
				</div>
				<br>
				<div class="name">
				<strong class="ko">${dto.name }</strong>
				<em class="en">${dto.engName }</em>
				</div>
				</a>
			</li>
		</c:forEach>
			
			</ul>
	
	</div>
	<c:import url="../layout/footer.jsp" />
</body>
</html>