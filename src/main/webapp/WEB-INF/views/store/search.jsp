<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<input type="button" value="주소검색" onclick="daumPost()">


<div id="map" style="width:400px;height:400px;margin:auto;"></div>


<script>
var mapOptions = {
	    center: new naver.maps.LatLng(37.5495067, 127.0251849),
	    
	    zoom: 16
	};
var map = new naver.maps.Map('map', mapOptions);
	
var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.5495067, 127.0251849),
    
    map: map
});
var contentString = [
    '<div class="iw_inner" style="width:100px;">',
    '   <h3>　회사명</h3>',
    '   <p>　주소　<br />',
    '    　전화번호 <br />',
    '</div>'
				
].join('');

var infowindow = new naver.maps.InfoWindow({
content: contentString
});

naver.maps.Event.addListener(marker, "click", function(e) {
if (infowindow.getMap()) {
    infowindow.close();
} else {
    infowindow.open(map, marker);
}
});

infowindow.open(map, marker);
</script>

</body>
</html>