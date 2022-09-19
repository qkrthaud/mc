<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
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
	$(function() {
		$('ul.tabType01 a').click(function() {
			var activeTab = $(this).attr('id');
			$('ul.tabType01 a').removeClass('on');
			$('.ing').removeClass('on');
			$('.end').removeClass('on');
			$('.ing').hide();
			$('.end').hide();
			$('#all').attr("aria-selected", "false");
			$('#ing').attr("aria-selected", "false");
			$('#end').attr("aria-selected", "false");
			$(this).attr("aria-selected", "true");
			$(this).addClass('on');
			if (activeTab == "all") {
				$('.ing').addClass('on');
				$('.end').addClass('on');
				$('.ing').show();
				$('.end').show();
				console.log("all ON");
			} else {
				console.log(activeTab);
				$('.' + activeTab).addClass('on');
				$('.' + activeTab).show();
				console.log("else ON");
			}
		})
	});
</script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../layout/header.jsp"%>
		<div id="container">
			<div class="content">
				<div class="visualArea bgWhats01">
					<div class="inner">
						<h1 class="titDep1" data-title="프로모션" data-desc="프로모션">맥도날드
							프로모션</h1>
						<ul class="navPath">
							<li><a href="main">Home</a></li>
							<li><a href="${path }/whatsnew/whatsnew">What's New</a></li>
							<li><a href="${path }/whatsnew/whatsnew_promotion">맥도날드 프로모션</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea bgG">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="javascript:getList(1,'');" id="all"
								aria-selected="true" role="button">전체보기</a></li>
							<!-- 선택 된 태그에 aria-selected="true" 추가 -->
							<li><a href="javascript:getList(1,'진');;" id="ing"
								role="button">진행중</a></li>
							<li><a href="javascript:getList(1,'종');" id="end"
								role="button">종료</a></li>
						</ul>
						<!-- 행사 있을 경우              종료된 행사일 경우 class값 end 추가-->
						<ul class="cardBanner" id="promotionList">
						
						</ul>
						<div class="btnMore" id="btnMore">
							<a href="javascript:more();" class="more">더보기</a>
						</div>
					</div>
				</div>
				<form   id="searchForm" method="post">
		<input type="hidden" name="page" id="page" value="1">
		<input type="hidden" name="seq" id="seq" >
		<input type="hidden" name="rnum" id="rnum" >
		<input type="hidden" name="searchStatus" id="searchStatus" >

	</form>
				<script type="text/javascript">
					var init_page = 0;
					var totalPage = 0;
					var page_status = "";

					var isCertificate = false;

					$(document).ready(function() {
						getList(1, '');
					});

					function getList(page_val, status) {
						$.ajax({
							type : 'post',
							url : '${path}/whatsnew/promotion.do',
							data : {
								page : page_val,
								searchStatus : status
							},
							success : function(data) {
									if (page_status != status) {
										$("#promotionList").empty();
									}
									totalPage = data.totalPage;
									page = data.pageNum;
									page_status = data.status;

									if (data != null && data != '') {
										for (var i = 0; i < data.promotion.length; i++) {

											if (data.promotion[i].status == "종료된") {
												data.promotion[i].end = "end";
												data.promotion[i].end_text = "종료된 행사입니다.";
											} else {
												data.promotion[i].end = "";
												data.promotion[i].end_text = "";
											}
											$("#promotionList").append(addList(data.promotion[i]));
										}
									} else {
										$("#promotionList").append(addList());
									}
									if (totalPage == page_val) {
										$("#btnMore").hide();
									} else {
										$("#btnMore").show();
									}
									if (status == '') {
										$('#all').attr('aria-selected','true');
										$('#end').attr('aria-selected','false');
										$('#ing').attr('aria-selected','false');

									} else if (status == '진') {
										$('#all').attr('aria-selected','false');
										$('#end').attr('aria-selected','false');
										$('#ing').attr('aria-selected','true');
									} else if (status == '종') {
										$('#all').attr('aria-selected','false');
										$('#end').attr('aria-selected','true');
										$('#ing').attr('aria-selected','false');
									}
/* 									if (page_val > 1) {
										$("[data-seq='"+ data.list[0].seq+"']").focus();
									} */
							},
						})
					}
					function addList(data) {
						return makeHtml("promotion", data);
					}
					function more() {
						getList(page + 1, page_status);
					}
				</script>

				<script id="promotion" type="text/template">
<li>
	<a href="${path }/whatsnew/promotion?writeNo={writeNo}" class="{end}" data="">
		<div class="tmb"><img src="${path}/resources/images/whatsnew/{mainImg}"></div>
		<div class="con">
			<strong class="tit">{title}</strong><span id="statusSpan">{end_text}</span>
		</div>
	</a>
</li>
</script>
				<%@ include file="../layout/aside.jsp"%>
			</div>
			<%@ include file="../layout/footer.jsp"%>
		</div>
	</div>
</body>
</html>