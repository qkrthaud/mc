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
			if (activeTab == "tab01") {
				$(this).attr("aria-selected", "true");
				$('#tab02').attr("aria-selected", "false");
			} else {
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
		<%@ include file="../layout/header.jsp"%>
		<div id="container">
			<div class="content">
				<div class="visualArea bgMenu04" data-title="사이드 &amp; 디저트"
					data-desc="맥도날드 홈페이지 사이드&디저트메뉴">
					<div class="inner">
						<h1 class="titDep1">사이드 &amp; 디저트</h1>
						<p class="subCopy">
							가볍게 즐겨도, 버거와 함께 푸짐하게 즐겨도, <br>언제나 맛있는 사이드와 디저트 메뉴!
						</p>
						<ul class="navPath">
							<li><a href="/">Home</a></li>
							<li><a href="javascript:gotoMenu('버거');">Menu</a></li>
							<li><a href="javascript:gotoMenu('사이드');">사이드 &amp; 디저트</a></li>
						</ul>
					</div>
				</div>

				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">

							<li data-title="사이드 &amp; 디저트" data-desc="사이드 &디저트 메뉴"><a
								href="javascript:gotoMenu('사이드');" id="tab01" role="button"
								aria-selected='true'>사이드</a></li>
							<!-- 선택 된 태그에 aria-selected="true" 추가 -->
							<li><a href="javascript:gotoMenu('디저트');" id="tab02"
								role="button">디저트</a></li>


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
					function getValue() {
						var val = '${value}';
						if (val == "사이드") {
							$('#tab01').attr("aria-selected", "true");
							$('#tab02').attr("aria-selected", "false");
						} else {
							$('#tab02').attr("aria-selected", "true");
							$('#tab01').attr("aria-selected", "false");
						}
					}
				</script>
				<script id="menu" type="text/templet">
<li>
	<a href="detail?engName={engName}">
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