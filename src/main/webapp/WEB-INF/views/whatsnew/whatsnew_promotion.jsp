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
							<li><a href="whatsnew">What's New</a></li>
							<li><a href="whatsnew_promotion">맥도날드 프로모션</a></li>
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
							<li><a href="#" id="ing"
								role="button">진행중</a></li>
							<li><a href="#" id="end"
								role="button">종료</a></li>
						</ul>
						<!-- 행사 있을 경우              종료된 행사일 경우 class값 end 추가-->
						<ul class="cardBanner" id="promotionList">
							<c:forEach var="dto" items="${whatsnew_b}">
								<c:choose>
								<c:when test="${dto.status eq'진행중' }">
									<li class="ing on"><a href="${path }/whatsnew/promotion?writeNo=${dto.writeNo }" class = "ing on">
											<div class="tmb">
												<img src="${path }/resources/images/whatsnew/${dto.mainImg }">
											</div>
											<div class="con">
												<strong class="tit">${dto.title }</strong>
											</div>
									</a></li>
								</c:when>
								<c:otherwise>
									<li class="end on"><a href="${path }/whatsnew/promotion?writeNo=${dto.writeNo }" class = "end on">
											<div class="tmb">
												<img src="${path }/resources/images/whatsnew/${dto.mainImg }">
											</div>
											<div class="con">
												<strong class="tit">${dto.title }</strong>
												<span id="statusSpan">종료된 행사입니다.</span>
											</div>
									</a></li>
								</c:otherwise>
								</c:choose>
							</c:forEach>
						</ul>
						<div class="btnMore" id="btnMore">
							<a href="javascript:more();" class="more">더보기</a>
						</div>
						<!-- //행사 있을 경우-->
						<!-- 행사 없을 경우 -->

						<!-- //행사 없을 경우 -->
					</div>
				</div>
				<%@ include file="../layout/aside.jsp"%>
			</div>
			<%@ include file="../layout/footer.jsp"%>
		</div>
	</div>
</body>
</html>