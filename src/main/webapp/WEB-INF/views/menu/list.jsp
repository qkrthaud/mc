<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${contextPath}/resources/css/mc.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	<div class="wrapper">
	<h3>버거</h3>
	<ul class="menuList">
		<c:forEach var="dto" items="${ list }">
			<li>
				<div class="thum">
				<img src="${contextPath}/resources/menuimg/${dto.thumbNail}">
				</div>
				<br>
				<div class="name">
				<strong>${dto.name }</strong>
				<br>
				${dto.engName }
				</div>
			</li>
		</c:forEach>
	</ul>
	</div>
</body>
</html>