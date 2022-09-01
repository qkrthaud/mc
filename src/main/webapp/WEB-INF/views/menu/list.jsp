<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="${path}/resources/css/mc.css" rel="stylesheet">
<link href="${path}/resources/css/common.css" rel="stylesheet">
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
</script>
</head>
<body>
	<c:import url="../layout/header.jsp" />
	<div class="wrapper">
	<div id="container">
			<div class="content">
	<div class="visualArea bgMenu01">
		<div class="inner">
			<h1 class="titDep1">버거</h1>
			<p class="subCopy">
				빅맥<sub class="reg">®</sub>에서 맥스파이시<sub class="reg">®</sub> 상하이버거까지,
				<br>주문 즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다.
			</p>
			<ul class="navPath">
				<li><a href="/">Home</a></li>
				<li><a href="${path}/menu/list?value=버거">Menu</a></li>
				<li><a href="${path}/menu/list?value=${value}">${value }</a></li>
			</ul>
		</div>
	</div>

	<div class="contArea">
		<div class="inner">
			<ul class="tabType01">

				<li data-title="버거" data-desc="버거메뉴"><a
					href="javascript:gotoMenu(1);" role="button" aria-selected='true'>단품메뉴</a></li>
				<!-- 선택 된 태그에 aria-selected="true" 추가 -->
				<li><a href="javascript:gotoMenu(2);" role="button">세트메뉴</a></li>
			</ul>
			<div class="mcMenu">
				<p class="count" id="count"></p>
				<ul class="menuList" id="menuList">
					
				</ul>
				<div class="btnMore" id="btnMore">
				<button type="button" class="more"onclick="moreList()">더보기</button>
				</div>
			</div>
		</div>
	</div>
	<form id="searchForm" method="post">
		<input type="hidden" name="page" id="page" value="1"> <input
			type="hidden" name="seq" id="seq"> <input type="hidden"
			name="sub_category_seq" id="sub_category_seq" value="1">
	</form>
<script type="text/javascript">
var totalPage =0;
		
$(document).ready(function (){
	getList(1);
});
function getList(page){
	$.ajax({
		url:"getList",
		type:'post',
		dataType :"json",
		data:{
			page: "1",
			value:"버거"
		},
		success:function(data){
			console.log('success');
			console.log(data);
			totalPage=data.totalPage;
			totalCount=data.totalCount;
			$("#count").html(data.totalCount+" Products")
			for(var i=0; i<getList.length; i++){
				$("#menuList").append(addList(data.getList[i]));
			}
			if(totalPage==page){
				$("#btnMore").hide();
			}
			}
		
	});
	
			
}
function goDetail(seq){
		$("#seq").val(seq);
		$("#searchForm").attr("action","/kor/menu/detail.do");
		$("#searchForm").submit();
}
function addList(data){
	return makeHtml("menu",data);
}
function more(){
	getList(init_page+1);
}
</script>
<script id="menu" type="text/templet">
<li>
	<a href="detail?engName=${dto.engName }">
		<div class="thum">
		<img src="${path}/resources/menuimg/${dto.image}" alt="${dto.name }">
		</div> 
		<br>
		<div class="name">
		<strong class="ko">${dto.name }</strong>
		 <em class="en">${dto.engName }</em>
		</div>
	</a>
</li>
</script>

</div>
</div>
</div>
	<c:import url="../layout/footer.jsp" />
</body>
</html>