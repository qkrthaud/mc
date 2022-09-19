<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=hjn22xjjiy&submodules=geocoder"></script>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<title>Insert title here</title>


</head>
<body>
<div class="wrapper ">
<%@ include file="../layout/header.jsp" %>
<div id="container">
<div class="content">
				
<div class="visualArea bgStore01" data-title="임차문의" data-desc="임차문의">
<div class="inner">
<h1 class="titDep1">임차문의</h1>
<ul class="navPath">
<li><a href="<%=request.getContextPath()%>/main">Home</a></li>
<li><a href="search">Store</a></li>
<li><a href="#">임차문의</a></li>
</ul>
</div>
</div>
<div class="contArea">
<div class="inner">						
<h2 class="titDep3">토지 임대 및 매매</h2>
<table class="tableType01">
<caption>토지 임대 및 매매 - 임차조건, 면적 안내표</caption>
<colgroup><col style="width:15%"><col></colgroup>
<tbody>
<tr>
<th scope="row">임차조건</th>
<td class="tleft">
<ul class="list">
<li>안정적이고 지속적인 주거 인구 증가 지역</li>
<li>차량의 진 출입 및 접근성이 좋은 위치</li>
<li>도로변에 위치하여 가시성이 좋은 입지</li>
<li>교통 통행량이 많은 지역</li>
</ul>
</td>
</tr>
<tr>
<th scope="row">면적</th>
<td class="tleft">
<ul class="list">
<li>서울 - 최소 200평 이상 대지 면적</li>
<li>경기도 및 광역시 - 최소 300평 이상 대지 면적</li>
<li>그 외의 지역 - 최소 400평 이상 대지 면적</li>
</ul>
</td>
</tr>
</tbody>
</table>
<div class="btnArea">
<a href="download" class="btnMC btnL">제안서 양식 다운로드</a>
<p class="txtInfo">위의 입지 제안서 양식을 다운로드하여 작성하신 후 담당자에게 보내 주세요.<br> 
<b>담당자 이메일 : <a href="https://www.naver.com/" target="blank">qkrthaud9981@naver.com</a></b></p>
</div>
<h2 class="titDep3">건물임대</h2>
<table class="tableType01">
<caption>건물임대 - 임차조건, 면적 안내표</caption>
<colgroup><col style="width:15%"><col></colgroup>
<tbody>
<tr>
<th scope="row">임차조건</th>
<td class="tleft">
<ul class="list">
<li>유동인구가 풍부한 지역 (역세권, 사무실 및 아파트 밀집 지역 등)</li>
<li>서울/경기도 지역</li>
<li>6대 광역시</li>
</ul>
</td>
</tr>
<tr>
<th scope="row">면적</th>
<td class="tleft">
<ul class="list">
<li>전용으로 1층이 80평 이상의 면적 (20평은 창고, 휴게실 공간으로 지하/윗층으로 이동 될 수 있음)</li>
<li>1,2층일 경우, 각 층이 40평 이상의 면적</li>
<li>중심 상업지구라면 1층 40평 이하일 때, 2층은 60평 이상의 면적</li>
</ul>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<%@ include file="../layout/aside.jsp" %>
</div>
<%@ include file="../layout/footer.jsp" %>
</div>
</div>
</body>
</html>