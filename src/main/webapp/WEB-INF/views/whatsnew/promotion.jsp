<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${details.title }</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico">
${details.contentStyle }
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
							<li><a href="${path }/main">Home</a></li>
							<li><a href="whatsnew">What's New</a></li>
							<li><a href="whatsnew_promotion">맥도날드 프로모션</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="contArea">
				<div class="inner">
					<div class="bbsDetail">
						<div class="bbsTit">
							<h2>${details.title }</h2>
							<span class="date"> <em><b class="hide">등록일 :</b>
									${details.wdate }</em> <em><b class="hide">조회수 :</b>
									${details.view }</em>
							</span>
						</div>
						<article class="bbsCon">
							<div class="bannerImg">
								<img
									src="${path }/resources/images/whatsnew/${details.contentImg}"
									alt="불고기 버거 세트를 4,500원으로 즐겨요">
								<div class="blind">
									<h1>모두가 해피한 인기 스낵 할인</h1>
									<p>해피스낵</p>
									<h2>신제품 소시지 스낵랩으로 더 새로워진 해피스낵 라인업!지금 바로 만나보세요!</h2>
								</div>
								<c:if test="${not empty details.videoName }">
									${details.videoName }
								</c:if>
								<c:if test="${not empty details.aTag }">
									${details.aTag }
								</c:if>
							</div>
						</article>

						<div class="btnArea">
							<a href="${path }/whatsnew_promotion" role="button"
								class="btnMC btnM"><span>목록보기</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>