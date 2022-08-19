<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<h3>버거</h3>
<table border="1">
	<c:forEach var="dto" items="${ list }">
			<tr>
				<td>
				<img width="100px" height="100px" src="${contextPath}/mc/download?thumbNail=${dto.thumbNail}">
				</td>
				<td>${dto.name }</td>
				<td>${dto.engName }</td>
			</tr>
		</c:forEach>
</table>


</body>
</html>