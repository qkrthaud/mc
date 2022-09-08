<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

</head>
<body>


<div class="wrapper">
<%@ include file="../layout/header.jsp" %>
<div id="container">
<div class="content">
<div class="visualArea bgStore01" data-title="지역별 매장찾기" data-desc="매장찾기">
<div class="inner">
<h1 class="titDep1">매장찾기</h1>
<ul class="navPath">
<li><a href="<%=request.getContextPath()%>/main">Home</a></li>
<li><a href="search">Store</a></li>
<li><a href="#">매장찾기</a></li>
</ul>
</div>
</div>
				
<div class="contArea">
<div class="inner">
<ul class="tabType01">
<li><a href="search" role="button" aria-selected="true">지역별</a></li>
<li><a href="storeEvent" role="button">이벤트매장</a></li>
</ul>
<form id="frm" action="search">

						
<div class="storeFind">
<span class="storeFind_bg"></span>
<div class="srvcFilter">
<strong class="titDep4">이용가능 서비스</strong>
<div class="service">

<c:choose>
<c:when test="${h24==null }">
<span class="srvc">
<input type="checkbox" name="h24" id="24" value="24">
<label for="24">
24시간
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887217994.png" alt="24" data-off="<%=request.getContextPath()%>/resources/images/store/1580887217994.png" data-on="<%=request.getContextPath()%>/resources/images/store/1580887222493.png"/>
</span>
</label>
</span>
</c:when>
<c:otherwise>

<span class="srvc on">
<input type="checkbox" name="h24" id="24" value="24" checked="checked">
<label for="24">
24시간
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887222493.png" alt="24" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887217994.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887222493.png"/>
</span>
</label>
</span></c:otherwise>
</c:choose>


								
<c:choose>
<c:when test="${drive==null }">
<span class="srvc">
<input type="checkbox" name="drive" id="drive" value="drive">
<label for="drive">
맥드라이브
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887501964.png" alt="맥드라이브" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887501964.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887505434.png"/>
</span>
</label>
</span>
</c:when>
<c:otherwise>
<span class="srvc on">
<input type="checkbox" name="drive" id="drive" value="drive" checked="checked">
<label for="drive">
맥드라이브
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887505434.png" alt="맥드라이브" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887501964.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887505434.png"/>
</span>
</label>
</span>
</c:otherwise>
</c:choose>

								
<c:choose>
<c:when test="${del==null }">
<span class="srvc">
<input type="checkbox" name="del" id="del" value="del">
<label for="del">
 맥딜리버리
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887371824.png" alt="맥딜리버리" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887371824.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887378094.png"/>
</span>
</label>
</span>
</c:when>
<c:otherwise>
<span class="srvc on">
<input type="checkbox" name="del" id="del" value="del" checked="checked">
<label for="del">
 맥딜리버리
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887378094.png" alt="맥딜리버리" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887371824.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887378094.png"/>
</span>
</label>
</span>
</c:otherwise>
</c:choose>

								
<c:choose>
<c:when test="${morning==null }">
<span class="srvc">
<input type="checkbox" name="morning" id="morning" value="morning">
<label for="morning">
맥모닝
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887410227.png" alt="맥모닝" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887410227.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887415001.png"/>
</span>
</label>
</span>
</c:when>
<c:otherwise>
<span class="srvc on">
<input type="checkbox" name="morning" id="morning" value="morning" checked="checked">
<label for="morning">
맥모닝
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887415001.png" alt="맥모닝" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887410227.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887415001.png"/>
</span>
</label>
</span>
</c:otherwise>
</c:choose>

								
<c:choose>
<c:when test="${parking==null }">
<span class="srvc">
<input type="checkbox" name="parking" id="parking" value="parking">
<label for="parking">
 주차
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887307761.png" alt="주차" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887307761.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887311487.png"/>
</span>
</label>
</span>
</c:when>
<c:otherwise>
<span class="srvc on">
<input type="checkbox" name="parking" id="parking" value="parking" checked="checked">
<label for="parking">
 주차
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887311487.png" alt="주차" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887307761.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887311487.png"/>
</span>
</label>
</span>
</c:otherwise>
</c:choose>

								
<c:choose>
<c:when test="${decafe==null }">
<span class="srvc">
<input type="checkbox" name="decafe" id="decafe" value="decafe">
<label for="decafe">
디카페인 커피
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887849368.png" alt="디카페인 커피" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887849368.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887855311.png"/>
</span>
</label>
</span>
</c:when>
<c:otherwise>
<span class="srvc on">
<input type="checkbox" name="decafe" id="decafe" value="decafe" checked="checked">
<label for="decafe">
디카페인 커피
<span class=icon>
<img src="<%=request.getContextPath()%>/resources/images/store/1580887855311.png" alt="디카페인 커피" 
data-off="<%=request.getContextPath()%>/resources/images/store/1580887849368.png" 
data-on="<%=request.getContextPath()%>/resources/images/store/1580887855311.png"/>
</span>
</label>
</span>
</c:otherwise>
</c:choose>

								
</div>
</div>
<fieldset class="srchBox">
<legend>매장검색</legend>
<div class="form">
<c:choose>
<c:when test="${sear==null }">
<input type="text" id="searchWord" name="sear" placeholder="매장명, 동명, 도로명을 검색해 주세요.">
</c:when>
<c:otherwise>
<input type="text" id="searchWord" name="sear" value="${sear }">

</c:otherwise>
</c:choose>
<input type="hidden" name="num" value="1">
<button type="button" class="btnMC btnM" onclick="sub()">검색하기</button>
</div>
</fieldset>							
</div>
</form>
						
<div class="storeResult">
<div id="map" class="map" style="height:600px;weight:600px;"></div>
<c:choose>
<c:when test="${sear==null }">
<div class="mcStore">
<table class="tableType01">
<caption>매장목록 - 매장명/주소, 전화번호, 영업시간, 이용가능 서비스 정보표</caption>
<colgroup><col style="width:16%"><col style="width:16%"><col style="width:34%"></colgroup>
<thead>
<tr>
<th scope="col">매장명 / 주소</th>
<th scope="col">전화번호</th>
<th scope="col">영업시간</th>
<th scope="col">이용가능 서비스</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tdName">
<dl class="name">
<dt><strong class="tit"><a href="javascript:moveMap(37.570698,126.983558);" title="지도보기">한국맥도날드(유)</a></strong>
<dd>서울 종로구 공평동 70</dd>
<dd class="road">서울특별시 종로구  종로 51(종로타워)</dd>
</dl>
</td>
<td>1600-5252</td>
<td></td>
<td class="tdService">
<div class="service">
</div>
</td>
</tr>
</table>
</div>
<p class="noResult nobg">검색어를 입력해 주세요.</p>
</c:when>
<c:otherwise>
<div class="mcStore">
<p style="color:#da0000"> *영업시간은 매장 사정에 따라 변경 될 수 있습니다 </p>
<table class="tableType01">
<caption>매장목록 - 매장명/주소, 전화번호, 영업시간, 이용가능 서비스 정보표</caption>
<colgroup><col><col style="width:16%"><col style="width:16%"><col style="width:34%"></colgroup>
<thead>
<tr>
<th scope="col">매장명 / 주소</th>
<th scope="col">전화번호</th>
<th scope="col">영업시간</th>
<th scope="col">이용가능 서비스</th>
</tr>
</thead>
<tbody>
<c:if test="${list!=null }">
<% String[] abc={"A","B","C","D","E"};
int abcnt=0;
%>
<c:forEach var="dto" items="${list }">
<tr>
<td class="tdName">
<dl class="name">
<dt><em class="ico"><%=abc[abcnt] %></em><strong class="tit"><a href="javascript:moveMap(${dto.lat },${dto.lng });" title="지도보기">${dto.name}</a></strong>
<dd>${dto.place}</dd>
<dd class="road">${dto.place2 }</dd>
</dl>
</td>
<td>${dto.tel }<br></td>
<td>${dto.time }</td>
<td class="tdService">
<div class="service">
<c:if test="${fn:contains(dto.service, '24')}">
<span class="srvc">
<input type="checkbox" id="24Icon" disabled checked>
<label for="24icon">
<span class=icon><img src="<%=request.getContextPath()%>/resources/images/store/1580887217994.png" alt="24시간"/></span>
24시간
</label>
</span>
</c:if>	

<c:if test="${fn:contains(dto.service, 'drive')}">													
<span class="srvc">
<input type="checkbox" id="driveIcon" disabled checked>
<label for="driveIcon">
<span class=icon><img src="<%=request.getContextPath()%>/resources/images/store/1580887501964.png" alt="맥드라이브"/></span>
맥드라이브
</label>
</span>
</c:if>
<c:if test="${fn:contains(dto.service, 'del')}">													
<span class="srvc">
<input type="checkbox" id="delIcon" disabled checked>
<label for="delIcon">
<span class=icon><img src="<%=request.getContextPath()%>/resources/images/store/1580887371824.png" alt="맥딜리버리"/></span>
맥딜리버리
</label>
</span>
</c:if>
<c:if test="${fn:contains(dto.service, 'morning')}">													
<span class="srvc">
<input type="checkbox" id="morningIcon" disabled checked>
<label for="morningIcon">
<span class=icon><img src="<%=request.getContextPath()%>/resources/images/store/1580887410227.png" alt="맥모닝"/></span>
맥모닝
</label>
</span>
</c:if>
<c:if test="${fn:contains(dto.service, 'parking')}">													
<span class="srvc">
<input type="checkbox" id="parkingIcon" disabled checked>
<label for="parkingIcon">
<span class=icon><img src="<%=request.getContextPath()%>/resources/images/store/1580887307761.png" alt="주차"/></span>
주차
</label>
</span>
</c:if>
<c:if test="${fn:contains(dto.service, 'decafe')}">													
<span class="srvc">
<input type="checkbox" id="decafeIcon" disabled checked>
<label for="decafeIcon">
<span class=icon><img src="<%=request.getContextPath()%>/resources/images/store/1580887849368.png" alt="디카페인 커피"/></span>
디카페인 커피
</label>
</span>	
</c:if>				
</div>
</td>
</tr>
<% abcnt++; %>
</c:forEach>
</c:if>
</table>

<div class='btnPaging'>
<a href='search?num=1&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button' class='arrow first'>맨앞으로</a>
<c:choose>
<c:when test="${num==1 }">
<a href='search?num=${num }&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button' class='arrow prev'>이전</a>
</c:when>
<c:otherwise>
<a href='search?num=${num-1 }&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button' class='arrow prev'>이전</a>
</c:otherwise>
</c:choose>
<span class='num'>
<c:choose>
<c:when test="${cns>=cnn }">
<c:forEach var="cnt" begin="${cns }" end="${repeat }">
<c:choose>
<c:when test="${cnt==num }">
<a href='search?num=${cnt}&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button' aria-selected='true'>${cnt }</a>

</c:when>
<c:otherwise>
<a href='search?num=${cnt}&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button'>${cnt }</a>

</c:otherwise>
</c:choose>
</c:forEach>
</c:when>
<c:otherwise>
<c:forEach var="cnt" begin="${cns }" end="${cns+9 }">
<c:choose>
<c:when test="${cnt==num }">
<a href='search?num=${cnt}&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button' aria-selected='true'>${cnt }</a>

</c:when>
<c:otherwise>
<a href='search?num=${cnt}&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button'>${cnt }</a>

</c:otherwise>
</c:choose>
</c:forEach>
</c:otherwise>
</c:choose>

</span>

<c:choose>
<c:when test="${num == repeat}">
<a href='search?num=${num }&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button' class='arrow next'>다음</a>
</c:when>
<c:otherwise>
<a href='search?num=${num+1 }&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button' class='arrow next'>다음</a>
</c:otherwise>
</c:choose>
<a href='search?num=${repeat }&h24=${h24 }&sear=${sear}&drive=${drive}&del=${del}&decafe=${decafe }&parking=${parking }&morning=${morning}' role='button' class='arrow last'>맨끝으로</a>
</div>
</div>
</c:otherwise>

</c:choose>





</div>
</div>
</div>
<%@ include file="../layout/aside.jsp" %>
</div>
<%@ include file="../layout/footer.jsp" %>
</div>
</div>




<script>

function sub(){
	$("#frm").submit();
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
	    icon: "/root/resources/images/store/img_pin0"+(i+1)+".png",
	    map: map
	});

	var infowindow = new naver.maps.InfoWindow({
	content: list[i].name
	});
	markers.push(marker);
	infos.push(infowindow);
	
}
function moveMap(xx,yy){
    var po = new naver.maps.LatLng(xx, yy);
    map.panTo(po);
    document.getElementById('map').focus();
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

</body>
</html>