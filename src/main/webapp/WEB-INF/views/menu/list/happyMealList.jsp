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
<script>
$(function() {
	$('ul.tabType01 a').click(function() {
		var activeTab = $(this).attr('id');
		console.log(activeTab)
		if(activeTab == "tab01"){
			$(this).attr("aria-selected", "true");
			$('#tab02').attr("aria-selected", "false");
		}else{
			$(this).attr("aria-selected", "true");
			$('#tab01').attr("aria-selected", "false");
		}
	})
});	
	function loadTemplate(id) {
		return document.getElementById(id).innerHTML;
	}
	function replaceTemplate(templateStr, data) {
		var result = templateStr;
		for ( var key in data) {

			var pattern = new RegExp("{" + key + "}", "g");
			result = result.replace(pattern, data[key]);

		}
		return result;
	}
	function makeHtml(id, data) {

		return replaceTemplate(loadTemplate(id), data);
	}
	function setWebTitle() {
		console.log(data)
		var title = $("[data-title]").data("title");
		var des = $("[data-desc]").data("desc");
		if (title != undefined && $.trim(title) != "N") {
			$(document)
					.attr("title", title + " - " + $(document).attr("title"));
		}
		if (des != undefined && $.trim(des) != "") {
			$("#description").attr("contents",
					$("#description").attr("contents") + " " + des);
		}

	}
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../../layout/header.jsp"%>
		<div id="container">
			<div class="content">
				<div class="visualArea bgMenu03">
					<div class="inner">
						<h1 class="titDep1">해피밀</h1>
						<p class="subCopy">맛과 즐거움 모두 해피밀을 통해 느껴보세요!</p>
						<ul class="navPath">
							<li><a href="/">Home</a></li>
							<li><a href="javascript:gotoMenu('버거');">Menu</a></li>
							<li><a href="javascript:gotoMenu('해피밀');">해피밀</a></li>
						</ul>
					</div>
				</div>



				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li data-title="해피밀 " data-desc="해피밀메뉴"><a
								href="javascript:gotoMenu('해피밀AM');" id="tab01" role="button"
								aria-selected='true'>AM 04:00~AM 10:30</a></li>
							<li><a href="javascript:gotoMenu('해피밀PM');" id="tab02"
								role="button">AM 10:30~AM 04:00</a></li>
						</ul>

						<div class="mcMenu">
							<p class="count" id="count"></p>
							<ul class="menuList" id="menuList">

							</ul>
							<div class="btnMore" id="btnMore">
								<button type="button" class="more" onclick="more()">
									더보기</button>
							</div>
						</div>
					</div>
				</div>
				<form id="searchForm" method="post">
		<input type="hidden" name="page" id="page" value="1"> 
		<input type="hidden" name="seq" id="seq"> 
		<input type="hidden" name="sub_category" id="sub_category" value="${value }">
	</form>
				<script>
					var page = 0;
					var totalPage = 0;
					$(document).ready(function() {
						moreList(0);
						getValue();
					});
					function moreList() {
						var val = '${value}';
						console.log(page)
						console.log(val)
						$.ajax({
							type : 'post',
							url : 'menuList',
							data : {
								page : page + 1,
								value : val
							},
							dataType : 'json',
							success : function(data) {
								page = data.pageNum;
								totalPage = data.totalPage;
								$("#count").html(data.totalCount + "Products")
								console.log(data)
								for (var i = 0; i < data.menuList.length; i++) {
									$("#menuList").append(
											addList(data.menuList[i]));
								}
								if (totalPage == page) {
									$("#btnMore").hide();
								}

							},
							error : function() {
								alert('실패');
							}
						})
					}
					function addList(data) {
						return makeHtml("menu", data);
					}
					function more() {
						moreList(page + 1);
						console.log("button")
					}
					function getValue(){
						var val ='${value}';
						if(val =="해피밀AM"){
							$('#tab01').attr("aria-selected", "true");
							$('#tab02').attr("aria-selected", "false");
						}else{
							$('#tab02').attr("aria-selected", "true");
							$('#tab01').attr("aria-selected", "false");
						}
					}
					function goDetail(seq){
						$("#seq").val(seq);
						$("#searchForm").attr("action","${path}/menu/detail");
						$("#searchForm").submit();
					}
				</script>
				<script id="menu" type="text/templet">
<li>
	<a href="javascript:goDetail({menuSeq})" data-seq="{menuSeq}">
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
	<%@ include file="../../layout/footer.jsp"%>
</body>
</html>