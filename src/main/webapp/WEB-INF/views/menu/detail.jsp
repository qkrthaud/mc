<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.explan{width:450px;}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="contArea">
				<div class="inner">
					<div class="menuView">
						<div class="viewTop">
							<div class="name">
								<h2 class="ko">${dto.name }</h2>
								<em class="en">${dto.engName }</em>
							</div>
							<div class="visual">
								<img src="${contextPath}/resources/menuimg/${dto.image}">
							</div>
							<div class="explan">${dto.explanation }</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>