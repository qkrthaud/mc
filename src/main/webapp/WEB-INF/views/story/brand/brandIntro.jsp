<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>맥도날드 소개</title>
	<meta name="description" id="description" contents="메뉴, 레스토랑, 프로모션 등 안내"/>
	<meta name="keywords" contents="McDonald's, McDrive, McDelivery, McMorning, Happy Meal, Signature Burger, McAllday, McCafe"/>
	<link rel="shortcut icon" type="image/x-icon" href="/kor/images/favicon.ico">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common2.css"> 
	<link rel="alternate" href="https://www.mcdonalds.co.kr">
	<script src="https://www.mcdonalds.co.kr/kor/js/libs.js"></script>
	<script src="https://www.mcdonalds.co.kr/kor/js/common.js?t=2022012502"></script>
	<script src="/kor/js/popup.js"></script>
	<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d2849da01922567115797fadd6e5ca4"></script> -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-15032749-2"></script>
	<script>
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	
	  gtag('config', 'UA-15032749-2');
	</script>
	
	
	
<script>
		$(window).on('load',function()
		{
			// commonJs.menu.TopActive(idx(0~3))	menu : 0 , store : 1 , what's news : 2 , story : 3 서브페이지에 메뉴 순번에 맞춰서 활성화 
			// commonJs.menu.TopDeActive()			활성화 해제
			// commonJs.menu.TopActive( 2 );
			// setWebTitle();
		});
		function loadTemplate(id) { return document.getElementById(id).innerHTML;}
		function replaceTemplate(templateStr, data) {
			var result = templateStr;
			for (var key in data) {
				var pattern = new RegExp("{"+key+"}","g");
				result = result.replace(pattern, data[key]);
			}
			return result;
		}
		function makeHtml(id,data){
			return replaceTemplate(loadTemplate(id),data);
		}
		function setWebTitle(){
			
			var title = $("[data-title]").data("title");
			var des = $("[data-desc]").data("desc");
			if(title != undefined && $.trim(title) !="N"){
				 $(document).attr("title",title +" - " + $(document).attr("title"));
			}
			if(des != undefined && $.trim(des) !=""){
				 $("#description").attr("contents",$("#description").attr("contents")+" "+des);
			}
			
		}
		function setCookie( name, value, expiredays ) 
		{ 
				var todayDate = new Date(); 
				todayDate.setDate( todayDate.getDate() + expiredays ); 
				document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
		}
		function getCookie(cname) {
		    var name = cname + "=";
		    var decodedCookie = decodeURIComponent(document.cookie);
		    var ca = decodedCookie.split(';');
		    for(var i = 0; i <ca.length; i++) {
		        var c = ca[i];
		        while (c.charAt(0) == ' ') {
		            c = c.substring(1);
		        }
		        if (c.indexOf(name) == 0) {
		            return c.substring(name.length, c.length);
		        }
		    }
		    return "";
		}
		function altEscapeTag(){
			$("img").each(function (i,ob){
				$(ob).attr("alt",$(ob).attr("alt").replace(/(<([^>]+)>)/ig,""));
			});
		}
	</script>
</head>
<body>	



<div class="skipMenu"><a href="#container">본문 바로가기</a></div>
<div class="wrapper ">
<%@ include file="../../layout/header.jsp" %>
			
<div id="container">
<div class="content">
				
<div class="visualArea bgStory01" data-title="브랜드 소개" data-desc="브랜드 소개">
<div class="inner">
<h1 class="titDep1">브랜드 소개</h1>
<p class="subCopy">1955년 작은 레스토랑에서부터 지금에 이르기까지 고객이 가장 좋아하는 장소이자,<br>음식을 즐기는 최고의 방법이 되기 위해 맥도날드는 오늘도 노력합니다.</p>
<ul class="navPath">
<li><a href="<%=request.getContextPath()%>/main">Home</a></li>
<li><a href="<%=request.getContextPath()%>/story/main">Story</a></li>
<li><a href="#">브랜드 소개</a></li>
</ul>
</div>
</div>
			
<div class="contArea">
<div class="inner">
<ul class="tabType01">
<li><a href="<%=request.getContextPath()%>/story/brand/brandIntro" role="button" aria-selected="true">맥도날드 소개</a></li>
<li><a href="<%=request.getContextPath()%>/story/brand/brandHistory" role="button">맥도날드 철학 및 역사</a></li>
</ul>
<div class="brnadCont01">
<div class="img"><img src="<%=request.getContextPath()%>/resources/images/story/img_brand_cont01.jpg" alt="1955 맥도날드 매장 이미지"></div>
<h2 class="titDep2 mt50">세계 1위의 푸드서비스 기업, 맥도날드</h2>
<p class="txtInfo">전세계 120개국 3만 7천여 개의 매장에서 매일 6,900만명의 고객들에게 제품과 서비스를 제공하고 있는 맥도날드는 전세계인들이 사랑하는<br>
퀵 서비스 레스토랑(QSR, Quick Service Restaurant)이자 세계 1위의 푸드서비스 기업으로, 고객에게 더 나은 경험을 제공함으로써<br>
&apos;고객이 가장 좋아하는 장소이자 음식을 즐기는 최고의 방법(Our Customer’s Favorite Place and Way to Eat)&apos;이 되기 위해 노력하고 있습니다. 
</div>
<div class="brnadCont02">
<h3 class="titDep3">한국 맥도날드의 첫 걸음</h3>
<div class="socialList">
<ul>
<li>
<span class="thum"><img src="<%=request.getContextPath()%>/resources/images/story/img_brand_cont02_01.jpg" alt="서울올림픽 이미지"></span>
<strong>1988 서울 올림픽을 개최하며 서울이 세계 속에<br>우뚝 섰던 그때의 감동을 기억하십니까?</strong>
<p>159개국의 83,190명의 선수가 참가한 1988 서울 올림픽과 함께 맥도날드가<br>한국을 찾아왔습니다. 이후 맥도날드는 빅맥, 후렌치 후라이 그리고 해피밀과 같이<br>세계적으로 유명한 메뉴를 선보이며 한국 소비자들이 선호하는 즐거운 외식 공간으로<br>사랑을 받고 있습니다.</p>
</li>
<li>
<span class="thum"><img src="<%=request.getContextPath()%>/resources/images/story/img_brand_cont02_02.jpg" alt="맥도날드 압구정점 이미지"></span>
<strong>한국 첫 맥도날드 매장, 압구정점 그랜드 오프닝</strong>
<p>맥도날드는 가장 트렌디한 장소로 떠오르는 압구정동에 첫 레스토랑을 열었습니다.<br>수백 명의 고객들이 레스토랑 앞에 길게 줄을 늘어서며 맥도날드의 성공적인 시작을<br>함께 축하했고 이를 통해 맥도날드가 한국 시장에서 지속적으로 성장할 수 있다는<br>잠재력을 보여 주었습니다.</p>
</li>
<li>
<span class="thum"><img src="<%=request.getContextPath()%>/resources/images/story/img_brand_cont02_03.jpg" alt="맥도날드의 미래 이미지"></span>
<strong>우리는 계속해서 나아갑니다.</strong>
<p>맥도날드는 지난 31년 동안 국내 협력 업체와 긴밀하게 일하고, 현재 15,000여명의<br>직원이 근무하는 등 한국 사회의 고용 창출에 기여하고 있습니다. 또한, 30여개 이상의<br>국내외 비즈니스를 지원해 왔습니다. 맥도날드는 좋은 품질의 제품을 합리적인 가격과<br>최상의 서비스 제공을 통해 고객이 가장 선호하는 장소로 거듭나기 위해 지속적으로<br>노력할 것입니다.</p>
</li>
</ul>
</div>
</div>
</div>
<div class="history">
<div class="inner">
<h4>맥도날드가 걸어온 길</h4>
<ul class="tabType01 tabMn totalTabMn">
<li><a href="#tab02_01" role="button" aria-selected="true">한국</a></li>
<li><a href="#tab02_02" role="button">글로벌</a></li>
</ul>
<div class="tabCont" id="tab02_01" style="display:block">
<ul class="historyTab subtabMn">
<li><a href="#tab02_01_01" role="button" aria-selected="true">2010<span class="hide">년도</span></a></li>
<li><a href="#tab02_01_02" role="button">2000<span class="hide">년도</span></a></li>
<li><a href="#tab02_01_03" role="button">1990<span class="hide">년도</span></a></li>
</ul>
<div class="subtabCont" id="tab02_01_01" style="display:block">
<ul class="historyList">
<li class="year2019">
<strong>2019<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>제주, 광주 지역 맥딜리버리 바이크를 친환경 전기 바이크로 전면 교체</span>
<span>서울시와 전기바이크 교체 업무협약(MOU) 체결</span>
</div>
<div class="thum"><img src="<%=request.getContextPath()%>/resources/images/story/img_histoy_kor_2019.png" alt="전기바이크 이미지"></div>
</div>
</li>
<li class="year2018">
<strong>2018<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt"><span>2018 평창 동계올림픽 공식 후원</span></div>
<div class="thum"><img src="<%=request.getContextPath()%>/resources/images/story/img_histoy_kor_2018.png" alt="평창동계올림픽 이미지"></div>
</div>
</li>
<li class="year2017">
<strong>2017<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt"><span>프리미엄 수제 버거 '시그니처 버거' 전국 런칭</span></div>
</div>
</li>
<li class="year2016">
<strong>2016<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>국내 첫 미래형 매장 상암 DMC점 오픈</span>
<span>슈비버거 슈슈버거 출시</span>
<span>조주연 대표이사 부임</span>
</div>												
</div>
</li>
<li class="year2015">
<strong>2015<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt"><span>프리미엄 수제 버거 '시그니처 버거' 첫 출시</span></div>
</div>
</li>
<li class="year2014">
<strong>2014<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt"><span>1955 버거 출시</span></div>
</div>
</li>
<li class="year2013">
<strong>2013<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>한국 진출 25주년</span>
<span>조 엘린저(Joe Erlinger) 대표이사 부임</span>
<span>‘행복의 버거’ 캠페인 시작</span>
<span>‘아빠와 함께하는 축구교실’ 및 ‘다문화 가정 어린이 축구교실’ 프로그램 시작</span>
</div>
</div>
</li>
<li class="year2012">
<strong>2012<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>새로운 메뉴 플랫폼 행복의 나라 메뉴 출시</span>
<span>새로운 서비스 플랫폼 맥카페(McCafé) 도입</span>
</div>
</div>
</li>
<li class="year2011">
<strong>2011<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>온라인 축구 매뉴얼 사커 툴킷(Soccer Toolkit) 런칭</span>
</div>
</div>
</li>
<li class="year2010">
<strong>2010<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>NCSI(국가 고객 만족도 지수) QSR(퀵 서비스 레스토랑) 분야 1위 수상</span>
<span>쿼터 파운더 치즈 버거 국내 소개</span>
<span>전국 매장에서 무료 와이파이(Wi-fi) 서비스 시작</span>
<span>션 뉴튼(Sean Newton) 대표이사 부임</span>
</div>
</div>
</li>
</ul>
</div>
<div class="subtabCont" id="tab02_01_02">
<ul class="historyList">
<li class="year2009">
<strong>2009<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>프리미엄 커피 브랜드 맥카페(McCafé) 출시</span>
</div>
</div>
</li>
<li class="year2008">
<strong>2008<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>한국 진출 20주년</span>
</div>
</div>
</li>
<li class="year2007">
<strong>2007<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>맥딜리버리(McDelivery) 서비스 시작</span>
<span>트랜스 지방(TFA)을 낮춘 후렌치 후라이로 전면 교체</span>
<span>로날드 맥도날드 어린이 축구 교실 ‘방과후 프로그램’ 시작</span>
<span>한국RMHC, 양산 부산대학교 어린이 병원에 어린이 병원 학교 설립</span>
<span>한국RMHC, 소아암 아동의 ‘학교 복귀 및 적응을 위한 통합 프로그램’ 개발</span>
<span>재단법인 로날드맥도날드하우스 출범</span>
</div>
</div>
</li>
<li class="year2006">
<strong>2006<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>아침 메뉴 맥모닝(McMorning) 국내 소개</span>
<span>‘로날드 맥도날드 어린이 축구 교실’ 출범</span>
</div>
</div>
</li>
<li class="year2005">
<strong>2005<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>24시간 매장 오픈 서비스 시작</span>
<span>연대 세브란스 어린이 병원에 ‘어린이 병원 학교’ 설립</span>
<span>맥런치(McLunch) 메뉴 국내 소개</span>
</div>
</div>
</li>
<li class="year2003">
<strong>2003<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>맥스파이시 상하이 버거(구 상하이 스파이스 치킨 버거) 출시</span>
</div>
</div>
</li>
</ul>
</div>
<div class="subtabCont" id="tab02_01_03">
<ul class="historyList">
<li class="year1997">
<strong>1997<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>불고기 버거 출시</span>
</div>
</div>
</li>
<li class="year1995">
<strong>1995<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>100호점, 영동점 오픈</span>
</div>
</div>
</li>
<li class="year1992">
<strong>1992</strong>
<div class="yearCont">
<div class="txt">
<span>업계 최초로 드라이브 스루(Drive-Thru) 국내 도입</span>
</div>
</div>
</li>
<li class="year1988">
<strong>1988<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="thum"><img src="<%=request.getContextPath()%>/resources/images/story/img_histoy_kor_1988.png" alt="맥도날드 압구정점 이미지"></div>
<div class="txt">
<span>맥도날드 1호점, 압구정점 오픈</span>
</div>
</div>
</li>
										
</ul>
</div>
</div>
<div class="tabCont" id="tab02_02">
<ul class="historyTab subtabMn">
<li><a href="#tab02_02_01" role="button" aria-selected="true">2000</a></li>
<li><a href="#tab02_02_02" role="button">1900</a></li>
</ul>
<div class="subtabCont" id="tab02_02_01" style="display:block">
<ul class="historyList">
<li class="yearG2017">
<strong>2017<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>우버이츠(UberEATS)와의 맥딜리버리의 글로벌 런칭을 기념하며<br>7월 26일을 맥딜리버리 데이로 선정</span>
</div>
</div>
</li>
<li class="yearG2015">
<strong>2015<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>미국 맥도날드 올데이 브랙퍼스트(All Day Breakfast) 론칭</span>
</div>
</div>
</li>
<li class="yearG2003">
<strong>2003<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>9월 2일 맥도날드의 첫 글로벌 광고 캠페인 ‘I’m lovin’ it’독일 뮌헨에서 론칭</span>
</div>
</div>
</li>
<li class="yearG2002">
<strong>2002<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>맥플러리가 캐나다 맥도날드 메뉴에 추가됨</span>
</div>
</div>
</li>
</ul>
</div>

<div class="subtabCont" id="tab02_02_02">
<ul class="historyList">
<li class="yearG1993">
<strong>1993<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>호주 빅토리아에 세계 최초로 맥카페 오픈</span>
</div>
</div>
</li>
<li class="yearG1990">
<strong>1990<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>1월 31일 러시아 모스크바 최초 맥도날드 레스토랑 오픈</span>
<span>오픈일 30,000명 이상 방문</span>
</div>
</div>
</li>
<li class="yearG1984">
<strong>1984<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>1월 14일 창업자 레이 크록 (Ray Kroc) 사망</span>
</div>
</div>
</li>
<li class="yearG1983">
<strong>1983<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>미국 맥도날드 전체 레스토랑 메뉴에 치킨 맥너겟 추가</span>
</div>
</div>
</li>
<li class="yearG1975">
<strong>1975<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>에그 맥머핀 메뉴에 추가</span>
</div>
</div>
</li>
<li class="yearG1974">
<strong>1974</strong>
<div class="yearCont">
<div class="txt">
<span>필라델피아에 로널드맥도날드 하우스 최초 개원</span>
</div>
</div>
</li>
<li class="yearG1973">
<strong>1973<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>쿼터 파운더 및 쿼터 파운더 치즈 메뉴에 추가</span>
</div>
</div>
</li>
<li class="yearG1968">
<strong>1968<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>빅맥 메뉴에 추가</span>
</div>
</div>
</li>
<li class="yearG1965">
<strong>1965<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>피쉬버거 (Filet-O-Fish sandwich) 메뉴에 추가</span>
</div>
</div>
</li>
<li class="yearG1961">
<strong>1961<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>주식회사 맥도날드 시스템(McDonald’s System, Inc.),</span>
<span>270만 달러에 맥도날드 운영권 인수</span>
<span>일리노이 주에 햄버거 대학 설립</span>
</div>
</div>
</li>
<li class="yearG1956">
<strong class="fGrey">1956<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>프레드 터너(Fred Turner) 사장, 카운터 직으로 맥도날드에 입사</span>
</div>
</div>
</li>
<li class="yearG1955">
<strong class="fGrey">1955<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>레이 크록, 최초의 맥도날드 매장 오픈</span>
</div>
</div>
</li>
<li class="yearG1954">
<strong class="fGrey">1954<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="thum"><img src="<%=request.getContextPath()%>/resources/images/story/img_histoy_global_1954.png" alt="레이크록과 맥도날드 형제 이미지"></div>
<div class="txt">
<span>레이 크록, 맥도날드 형제 방문</span>
</div>												
</div>
</li>
<li class="yearG1949">
<strong class="fGrey">1949</strong>
<div class="yearCont">
<div class="txt">
<span>프렌치 프라이로 포테이토 칩 대체<br>밀크셰이크 (Triple Thick Milkshake) 메뉴 추가</span>
</div>
</div>
</li>
<li class="yearG1948">
<strong class="fGrey">1948<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>메뉴를 9개로 줄이며 레스토랑 재오픈</span>
</div>
</div>
</li>
<li class="yearG1940">
<strong class="fGrey">1940<span class="hide">년도</span></strong>
<div class="yearCont">
<div class="txt">
<span>맥도날드 형제, McDonald’s Bar-B-Q 레스토랑 오픈</span>
</div>
</div>
</li>
</ul>
</div>
</div>
						
</div>
</div>
</div>
<%@ include file="../../layout/aside.jsp" %>
</div>
<%@ include file="../../layout/footer.jsp" %>
</div>
</div>

	

	<script>

	if($(location).attr('pathname') == "/kor/kitchen_step1.do"){//주방 공개의 날에서만 지도 호출 2019-12-18
		var mapPop;
		var marker;
	    var mapContainerPop = document.getElementById('storePopMap'),
		mapOptionPop = {
	         center: new daum.maps.LatLng(37.494879, 127.130762),
	         level: 3
		};
		mapPop = new daum.maps.Map(mapContainerPop, mapOptionPop); // 지도를 생성합니다
		$(window).on("load",function(){
			$("#store01").select(function(){ getGugunJsonp();});
		}); 
	}
	
	function showStorePopMaker(obj){
			if(marker!=undefined && marker!=null)marker.setMap(null);    
			
			var positions = 
				{
			        title: $(obj).data("a_company"), 
			        latlng: new daum.maps.LatLng($(obj).data("a_loc_x"),$(obj).data("a_loc_y"))
			    };
			var imageSize = new daum.maps.Size(54, 70); 
		    // 마커 이미지를 생성합니다    
		    var markerImage = new daum.maps.MarkerImage("/kor/images/whats/ico_marker.png", imageSize); 
		    
		    // 마커를 생성합니다
		     marker= new daum.maps.Marker({
		        map: mapPop, // 마커를 표시할 지도
		        position: positions.latlng, // 마커를 표시할 위치
		        title : positions.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		    marker.setMap(mapPop);  
		    var mLabel = new kakao.maps.InfoWindow({
		        position: positions.latlng, // 지도의 중심좌표에 올립니다.
		        content: positions.title // 인포윈도우 내부에 들어갈 컨텐츠 입니다.
		    });
		    mLabel.open(mapPop, marker)
		    mapPop.panTo(positions.latlng);
	}
	function getGugunJsonp(){
		if($("#store01").val()==""){
			$("#store02").html("<option value=\"\">전체</option>");
			commonJs.select.update($('#store02'));
		}else{
			$.support.cors = true;
			$.ajax({
			    url : "/kor/kitchen_getGugun.do",
			    data : {a_sido:$("#store01").val()},
			    dataType : "json",
			    success: function(data) {
			    	$("#store02").html("");
					var html="";
					for (var i=0;i<data.list.length;i++){
						html += "<option value='"+data.list[i].gugun+"'>"+data.list[i].gugun+"</option>";
					}
					$("#store02").append(html);
					commonJs.select.update($('#store02'));
			    }
			});
		}
	}
	function getStoreList(){
		if($.trim($("#store01").val()) =="" && $.trim($("#store02").val())=="" && $.trim($("#store03").val())==""){ 
			alert("매장명을 입력해주세요"); 
			$("#store03").focus();
		}else{
			$.post("/kor/kitchen_getStoreList.do",
					{a_sido:$("#store01").val(), a_gugun:$("#store02").val(), a_company:$("#store03").val() },
				   function(data){
						var html="";
						if(data.list.length > 0){
							$("#storePopListUl").html("");
							for (var i=0;i<data.list.length;i++){
								html += makeHtml("storeListPop",data.list[i]);
							}
							altEscapeTag();
							$("#storePopListUl").append(html);
							$("#storeS").show();
							$("#storePopMap").show();
							$("#storeN").hide();
						}else{
							$("#searchWordShow").html($("#store03").val());
							$("#storePopMap").hide();
							$("#storeS").hide();
							$("#storeN").show();
						}
						$(window).trigger('resize');
				   },
				   "json");
		}
	}
	function selectStorePop(){
		if(		$("input:radio[name='store_info']:checked").length>0  ){
			$("#scode").val($("input:radio[name='store_info']:checked").val());
			$("#store_name").val($("input:radio[name='store_info']:checked").data("a_company"));
			commonJs.popup.basic.hide($('#storeSearch'));
			getEvent();
		}else{
			alert("매장을 선택하셔야 합니다");
		}
	}
	</script>
	<script id="storeListPop" type="text/templet">
					<li>
						<span class="formWrap labelR">
							<input type="radio" name="store_info" id="ck_{a_scode}" data-a_loc_x="{a_loc_x}" data-a_loc_y="{a_loc_y}" data-a_scode="{a_scode}" data-a_company="{a_company}"  value="{a_scode}" onclick="showStorePopMaker(this)">
							<label for="ck_{a_scode}">{a_company}</label>	
						</span>
						<div class="addrArea">
							<p class="addr"><em class="hide">주소</em>{a_address_2}</p>
							<p class="phone"><em class="hide">연락처</em><span>{a_tel_1}</span><span>{a_tel_2}</span></p>
						</div>
					</li>
	</script>
	

	
		<script type="text/javascript">
	$(function()
		{
		
		});
	</script>	
</body>
</html>