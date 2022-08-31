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
* {margin: auto;}
.storeFind{position:static;margin-top:-20px; position:relative; height:300px;margin:0;padding:0}
.storeFind .storeFind_bg {width:100%; height:100%; background:#f8f8f8; position:absolute; top:0; left:0; display:block;}
.storeFind .srvcFilter .service{margin-left:-20px}
.storeFind .srvcFilter .service:after{content:'';display:block;clear:both}
.storeFind .srvcFilter .service>span{display:block;position:relative;float:left;width:200px;height:70px;margin-left:20px; margin-bottom:20px;}
.storeFind .srvcFilter .service>span input{position:absolute;top:0;left:0;width:100%;height:100%;opacity:0}
.storeFind .srvcFilter .service>span label{display:block;color:#000;position:relative;height:100%;padding:101px 0 35px;border:1px solid #d1d1d1;border-radius:10px;text-align:center;background:#fff;font-size:15px; z-index:1;}
.storeFind .srvcFilter .service>span.on label{background-color:#000}
.storeFind .srvcFilter .service>span input:checked+label{color:#fff;}
.storeFind .srvcFilter .service>span input:focus+label{outline:1px dotted #292929}
.storeFind .srvcFilter .service>span label .icon {position:absolute; top:0; left:0; z-index:-1;margin-top:40%;margin-left:50%;transform:translate(-50%, -50%);-webkit-transform:translate(-50%, -50%)}

.M{min-width:172px;padding:0 38px;font-size:15px;line-height:70px;border-radius:70px; border: 0; outline: 0;}
.MC{display:inline-block;color:#292929;font-weight:600;background:#FFBC0D;}
.Mtext{width:500px;color:#292929;height:70px;padding:0 28px;line-height:1;border:1px solid #d1d1d1;border-radius:70px;background:#fff;}
</style>
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<form id="frm" action="search">
<div class="storeFind">
<span class="storeFind_bg"></span>
<div class="srvcFilter">
<strong class="titDep4">이용가능 서비스</strong>
<div class="service">							
<span class="srvc">
<c:choose>
<c:when test="${drive==null }"><input type="checkbox" name="drive" id="drive" value="drive"></c:when>
<c:otherwise><input type="checkbox" name="drive" id="drive" value="drive" checked="checked"></c:otherwise>
</c:choose>
<label for="drive">
맥드라이브
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887501964.png" alt="맥드라이브" data-off="<%=request.getContextPath()%>/resources/images/store/1580887501964.png" data-on="<%=request.getContextPath()%>/resources/images/store/1580887505434.png"/>
</span>
</label>
</span>
								
<span class="srvc">
<c:choose>
<c:when test="${del==null }"><input type="checkbox" name="del" id="del" value="del"></c:when>
<c:otherwise><input type="checkbox" name="del" id="del" value="del" checked="checked"></c:otherwise>
</c:choose>
<label for="del">
 맥딜리버리
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887371824.png" alt="맥딜리버리" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887371824.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887378094.png"/>
</span>
</label>
</span>
								
<span class="srvc">
<c:choose>
<c:when test="${morning==null }"><input type="checkbox" name="morning" id="morning" value="morning"></c:when>
<c:otherwise><input type="checkbox" name="morning" id="morning" value="morning" checked="checked"></c:otherwise>
</c:choose>
<label for="morning">
맥모닝
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887410227.png" alt="맥모닝" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887410227.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887415001.png"/>
</span>
</label>
</span>
								
<span class="srvc">
<c:choose>
<c:when test="${parking==null }"><input type="checkbox" name="parking" id="parking" value="parking"></c:when>
<c:otherwise><input type="checkbox" name="parking" id="parking" value="parking" checked="checked"></c:otherwise>
</c:choose>
<label for="parking">
 주차
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887307761.png" alt="주차" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887307761.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887311487.png"/>
</span>
</label>
</span>
								
<span class="srvc">
<c:choose>
<c:when test="${decafe==null }"><input type="checkbox" name="decafe" id="decafe" value="decafe"></c:when>
<c:otherwise><input type="checkbox" name="decafe" id="decafe" value="decafe" checked="checked"></c:otherwise>
</c:choose>
<label for="decafe">
디카페인 커피
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887849368.png" alt="디카페인 커피" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887849368.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887855311.png"/>
</span>
</label>
</span>
								
</div>


</div>

						
</div>
<div>
<c:choose>
<c:when test="${sear==null }">
<input type="text" class="Mtext" name="sear" placeholder="검색">
</c:when>
<c:otherwise>
<input type="text" class="Mtext" name="sear" value="${sear }">

</c:otherwise>
</c:choose>

<button onclick="sub()" class="M MC">검색하기</button>

</div>
</form>



<div id="map" style="width:1500px;height:500px;margin:auto;"></div>


<!--<img src="<%=request.getContextPath()%>/resources/images/store/ico_marker.png"> -->

<script>
function seb(){
	frm.submit();
}

$(document).ready(function () {
    function storeFindBg(){
        var winWidth = window.innerWidth;
        var $storeFind = $('.storeFind');
        var $storeFindBg = $storeFind.find('.storeFind_bg');
        var storeFindWidth = $storeFind.innerWidth();
        if(winWidth >=1168){
            $storeFindBg.css({'width':winWidth, 'margin-left':-(winWidth-storeFindWidth)/2});
        }else{
            $storeFindBg.attr({'style':''});
        }
    };
    function clickItem(){
        $('.storeFind .srvcFilter .service>span input').each(function(){
            $(this).click(function(){
                var chk = $(this).is(':checked');
                var dataOff = $(this).siblings('label').find('img').attr('data-off');
                var dataOn = $(this).siblings('label').find('img').attr('data-on');
                if(chk){
                    $(this).prop('checked', true);
                    $(this).parent('span').addClass('on');
                    $(this).siblings('label').find('img').attr({'src': dataOn});
                }else{
                    $(this).prop('checked', false);
                    $(this).parent('span').removeClass('on');
                    $(this).siblings('label').find('img').attr({'src': dataOff});
                }
                
            });
        });
    };
    storeFindBg();
    clickItem();
    $(window).resize(function(){
        storeFindBg();
    });
    
    $("#searchWord").on("keydown", function(){
    	if(event.keyCode == 13) {
    		search();
    	}
    });
});



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
	    icon: "/root/resources/images/store/ico_marker.png",
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
<a href="search?num=1&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}">&#60;&#60;</a>
<c:choose>
<c:when test="${num==1 }">
<a href="search?num=${num }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}">&#60;</a>
</c:when>
<c:otherwise>
<a href="search?num=${num-1 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}">&#60;</a>
</c:otherwise>
</c:choose>

<c:forEach var="cnt" begin="1" end="${repeat }">
<a href="search?num=${cnt}&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}">${cnt }&nbsp;</a>

</c:forEach>

<c:choose>
<c:when test="${num == repeat}">
<a href="search?num=${num }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}">&#62;</a>
</c:when>
<c:otherwise>
<a href="search?num=${num+1 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}">&#62;</a>
</c:otherwise>
</c:choose>
<a href="search?num=${repeat }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}">&#62;&#62;</a>
</th>
</tr>

</table>
</body>
</html>