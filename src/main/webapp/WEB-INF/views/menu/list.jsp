<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="dto" value="${getList}"/>
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
		function loadTemplate(id) {
			console.log(id)
			return document.getElementById(id).innerHTML;
			}
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
			<h1 class="titDep1">${value }</h1>
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
					href="${path}/menu/list?value=버거" role="button" aria-selected='true'>단품메뉴</a></li>
				<!-- 선택 된 태그에 aria-selected="true" 추가 -->
				<li><a href="${path}/menu/list?value=세트" role="button">세트메뉴</a></li>
			</ul>
			<div class="mcMenu">
				<p class="count" id="count"></p>
				<ul class="menuList" id="menuList">
							
							</ul>
				<div class="btnMore" id="btnMore">
				<button type="button" class="more" onclick="more()">
				더보기
				</button>
				</div>
			</div>
		</div>
	</div>
	<script>
var page = 0;
var totalPage =0;
$(document).ready(function(){
	moreList(0);
});
function moreList(){
	var val = '${value}';
	console.log(page)
	console.log(val)
	$.ajax({
		type: 'post',
		url : 'menuList',
		data : {
			page: page+1,
			value: val
		},
		dataType:'json',
		success: function(data){
			page=data.pageNum;
			totalPage=data.totalPage;
			$("#count").html(data.totalCount+"Products")
			console.log(data)
			for(var i=0; i<data.menuList.length; i++){
				$("#menuList").append(addList(data.menuList[i]));
			}
			if(totalPage == page){
				$("#btnMore").hide();
			}
			
		},
		error:function(){
			alert('실패');
		}
	})
}
function addList(data){
	return makeHtml("menu", data);
}
function more(){	
	moreList(page+1);
	console.log("button")
}
</script>
<script id="menu" type="text/templet">
<li>
	<a href="detail?engName={name}">
		<div class="thum"><img src="${path}/resources/images/menuImg/{image}"
		 alt="{name}"></div>
		<div class="name">
		<strong class="ko">{name}</strong>
	<em class="en">{engName}</em>
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