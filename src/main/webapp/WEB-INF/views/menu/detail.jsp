<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="contArea">
				<div class="inner">
					<div class="menuView">
						<div class="viewTop">
							<div class="name">
								<h2 class="ko">${menuInfo.name }</h2>
								<em class="en">${menuinfo.engName }</em>
							</div>
							<div class="visual">
								<img src="${contextPath}/resources/menuimg/${menuInfo.image}">
							</div>
							<div class="explan">${menuInfo.explanation }</div>
						</div>
						<div class="viewCon">
							
							<div class="toggle">
									<h4 class="tit">영양정보</h4>
									<button type="button" aria-selected="false" aria-controls="toggle02" aria-expanded="false">영양정보 보기</button><!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle02" class="toggleCon">
										<table class="tableType01 nutrDesc">
											<caption>영양정보 - 영양소별 함량, 영양소기준치 정보표</caption>
											<colgroup><col style="width:15%"><col></colgroup>
											<thead>
												<tr>
													<th scope="row">영양소</th>
													<th scope="col">중량(g)</th>
													<th scope="col">중량(ml)</th>
													<th scope="col">열량</th>
													<th scope="col">당</th>
													<th scope="col">단백질</th>
													<th scope="col">포화지방</th>
													<th scope="col">나트륨</th>
													<th scope="col">카페인</th>
													
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row">함량</th>
													<td>${nutInfo.weight_G }g</td>
													<td>${nutInfo.weight_Ml }ml</td>
													<td>${nutInfo.calorie }kcal</td>
													<td>${nutInfo.suger }g</td>
													<td>${nutInfo.protein }g</td>
													<td>${nutInfo.saturated_Fat }g</td>
													<td>${nutInfo.natrium }mg</td>
													<td>${nutInfo.caffeine }mg</td>
												</tr>
												<tr>
													<th scope="row">영양소기준치</th>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>${suger }%</td>
													<td>38%</td>
													<td>46%</td>
													<td>61%</td>
													<td>-</td>
												</tr>
											</tbody>
										</table>
							
									</div>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>