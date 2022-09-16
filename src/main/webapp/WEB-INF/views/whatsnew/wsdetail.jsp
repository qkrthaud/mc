<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="../layout/header.jsp"%>
		<div id="container">
			<div class="content">
				<div class="content">
					<div class="visualArea bgWhats01">
						<div class="inner">
							<h1 class="titDep1">새로운 소식</h1>
							<ul class="navPath">
								<li><a href="${path }/main">Home</a></li>
								<li><a href="${path }/whatsnew">What's New</a></li>
								<li><a href="${path }/whatsnew/list.do">새로운 소식</a></li>
							</ul>
						</div>
					</div>
					<!-- //visualArea -->
					<div class="contArea">
						<div class="inner">
							<c:choose>
								<c:when test="${not empty notice}">
									<div class="bbsDetail">
										<div class="bbsTit">
											<h2 id="news_title">${notice.title }</h2>
											<span class="date"> <em><b class="hide">등록일 :</b>${notice.wdate }</em>
												<em><b class="hide">조회수 :</b> ${notice.view }</em>
											</span>
										</div>
										<article class="bbsCon">
											${notice.content }
											<p>
												<br>
											</p>
										</article>
										<div class="btnArea">
											<c:if test="${notice.writeNo > 1}">
												<button type="button"
													onclick="javascript:goDetail(${notice.writeNo-1},1);"
													class="prev">이전 글 보기</button>
											</c:if>
											<a href="${path }/whatsnew/list.do" role="button"
												class="btnMC btnM"><span>목록보기</span></a>
											<c:if test="${notice.writeNo < nCount}">
												<button type="button"
													onclick="javascript:goDetail(${notice.writeNo+1},1);"
													class="next">다음 글 보기</button>
											</c:if>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="bbsDetail">
										<div class="bbsTit">
											<h2 id="news_title">${normal.title }</h2>
											<span class="date"> <em><b class="hide">등록일 :</b>${normal.wdate }</em>
												<em><b class="hide">조회수 :</b> ${normal.view }</em>
											</span>
										</div>
										<article class="bbsCon">
											${normal.content }
											<p>
												<br>
											</p>
										</article>
										<div class="btnArea">
											<c:if test="${normal.writeNo > 1}">
												<button type="button"
													onclick="javascript:goDetail(${normal.writeNo-1});"
													class="prev">이전 글 보기</button>
											</c:if>
											<a href="${path }/whatsnew/list.do" role="button"
												class="btnMC btnM"><span>목록보기</span></a>
											<c:if test="${normal.writeNo < wCount}">
												<button type="button"
													onclick="javascript:goDetail(${normal.writeNo+1});"
													class="next">다음 글 보기</button>
											</c:if>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<!-- //contArea -->
			</div>
			<%@ include file="../layout/aside.jsp"%>
			<form id="searchForm" method="post">
				<input type="hidden" name="seq" id="seq"> <input
					type="hidden" name="num" id="num">
			</form>
			<script>
					function goDetail(num,seq) {
						$("#seq").val(seq);
						$("#num").val(num);
						$("#searchForm").attr("action", "${path}/whatsnew/wsdetail.do");
						$("#searchForm").submit();
					}
				</script>
		</div>
		<%@ include file="../layout/footer.jsp"%>
	</div>
</body>
</html>