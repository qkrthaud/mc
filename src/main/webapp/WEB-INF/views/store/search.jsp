<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>Insert title here</title>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=hjn22xjjiy"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<style type="text/css">

</style>
</head>
<body>

<form action="search">
<c:choose>
<c:when test="${dri==null }"><input type="checkbox" name="dri" id="dri" value="dri"></c:when>
<c:otherwise><input type="checkbox" name="dri" id="dri" value="dri" checked="checked"></c:otherwise>
</c:choose>
<c:choose>
<c:when test="${mor==null }"><input type="checkbox" name="mor" id="mor" value="mor"></c:when>
<c:otherwise><input type="checkbox" name="mor" id="mor" value="mor" checked="checked"></c:otherwise>
</c:choose>
<c:choose>
<c:when test="${del==null }"><input type="checkbox" name="del" id="del" value="del"></c:when>
<c:otherwise><input type="checkbox" name="del" id="del" value="del" checked="checked"></c:otherwise>
</c:choose>
<c:choose>
<c:when test="${par==null }"><input type="checkbox" name="par" id="par" value="par"></c:when>
<c:otherwise><input type="checkbox" name="par" id="par" value="par" checked="checked"></c:otherwise>
</c:choose>
<c:choose>
<c:when test="${dec==null }"><input type="checkbox" name="dec" id="dec" value="dec"></c:when>
<c:otherwise><input type="checkbox" name="dec" id="dec" value="dec" checked="checked"></c:otherwise>
</c:choose>



<input type="text" name="sear" placeholder="검색">
<input type="submit" value="검색">
</form>
<!-- 체크박스 값 배열로 저장 -->
<!-- 검색어리스트 => 반복문 => 서비스 스플릿 => 스플릿 반복해서 배열비교 => 올트루일때 새 배열에 저장  -->

<div id="map" style="width:1500px;height:500px;margin:auto;"></div>


<script>
let list= new Array();
let markers = new Array();
let infos = new Array();
<c:forEach var="result" items="${list}" varStatus="status">
list.push({name : "${result.name}",lat : "${result.lat}",lng : "${result.lng}"});
/* console.log("${result.lat}");
console.log(list[0].name);
console.log(list[0].lat);
console.log(list[0].lng); */
</c:forEach>


	var mapOptions = {
		    center: new naver.maps.LatLng(37.5495067, 127.0251849),
		    
		    zoom: 14
		};
	var map = new naver.maps.Map('map', mapOptions);


	



	
for(var i=0;i<list.length;i++){
	
	
	var marker = new naver.maps.Marker({
	    position: new naver.maps.LatLng(list[i].lat, list[i].lng),
	    
	    map: map
	});

	var infowindow = new naver.maps.InfoWindow({
	content: list[i].name
	});
	markers.push(marker);
	infos.push(infowindow);
	
}


function getClickHandler(seq){
	return function(e){
		var marker=markers[seq],infowindow=infos[seq];
		if(infowindow.getMap()){
			infowindow.close();
		}else{
			infowindow.open(map,marker);
		}
	}
}
for(var i=0; i<markers.length;i++){
	console.log(markers[i],getClickHandler(i));
	naver.maps.Event.addListener(markers[i],'click',getClickHandler(i));
}
map.setCenter(new naver.maps.LatLng(list[0].lat, list[0].lng))

</script>
<table border="1">
<tr>
<th>매장명/주소</th>
<th>전화번호</th>
<th>영업시간</th>
<th>이용가능 서비스 </th>
</tr>
<c:if test="${list!=null }">
<c:forEach var="dto" items="${list }">
<tr>
<th>${dto.name}</th><th rowspan="3">${dto.tel }</th><th rowspan="3">24</th>
<th rowspan="3">${ dto.service}</th>

</tr>
<tr><th>${dto.place}</th></tr>
<tr><th>${dto.place2 }</th></tr>
</c:forEach>
</c:if>
<tr>
<th colspan="4">
<a href="search?num=1&sear=${sear}">&#60;&#60;</a>
<c:choose>
<c:when test="${num==1 }">
<a href="search?num=${num }&sear=${sear}">&#60;</a>
</c:when>
<c:otherwise>
<a href="search?num=${num-1 }&sear=${sear}">&#60;</a>
</c:otherwise>
</c:choose>

<c:forEach var="cnt" begin="1" end="${repeat }">
<a href="search?num=${cnt}&sear=${sear}">${cnt }&nbsp;</a>

</c:forEach>

<c:choose>
<c:when test="${num == repeat}">
<a href="search?num=${num }&sear=${sear}">&#62;</a>
</c:when>
<c:otherwise>
<a href="search?num=${num+1 }&sear=${sear}">&#62;</a>
</c:otherwise>
</c:choose>
<a href="search?num=${repeat }&sear=${sear}">&#62;&#62;</a>
</th>
</tr>

</table>
</body>
</html>