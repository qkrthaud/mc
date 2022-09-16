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
							<h1 class="titDep1" data-title="프로모션" data-desc="프로모션">새로운
								소식</h1>
							<ul class="navPath">
								<li><a href="${path }/main">Home</a></li>
								<li><a href="${path }/whatsnew">What's New</a></li>
								<li><a href="${path }/whatsnew/list.do">새로운 소식</a></li>
							</ul>
						</div>
					</div>
					<div class="contArea">
						<div class="inner">
							<form id="searchForm" method="post">
								<input type="hidden" name="wnum" id="wnum" value="1"> <input
									type="hidden" name="seq" id="seq"> <input type="hidden"
									name="num" id="num">
								<fieldset class="bbsSearch">
									<legend>게시물 검색</legend>
									<div class="srch">
										<input type="text" title="검색어 입력" id="searchWord"
											name="searchWord" placeholder="검색어를 입력하세요."
											value="${map.keyword }">
										<button type="button" class="btn" onclick="resultSearch()">검색</button>
									</div>
								</fieldset>
							</form>
							<div class="mcBoard">
								<p class="count">
									총 <b class="color01">${map.wcount }</b>의 게시글이 있습니다.
								</p>
								<!-- 검색 결과 있음 -->
								<ul class="bbsList">
									<c:forEach var="dto" items="${map.notice}">
										<li class="notice"><a href="javascript:goDetail(${dto.writeNo },1)">
												<span class="bNum"> ${dto.notice } </span> <span
												class="bSubject"><strong class="tit">${dto.title }</strong></span>
												<span class="bDate">${dto.wdate }</span>
										</a></li>
									</c:forEach>
									<c:forEach var="dto" items="${map.list }">
										<li class="notice"><a href="javascript:goDetail(${dto.writeNo })">
												<span class="bNum"> <span class="hide">게시물 번호</span>${dto.writeNo }
											</span> <span class="bSubject"><strong class="tit">${dto.title }</strong></span>
												<span class="bDate">${dto.wdate }</span>
										</a></li>
									</c:forEach>
								</ul>
								<c:if test="${map.wcount != 0 }">
									<div class='btnPaging'>
										<a href='javascript:wPage(1)' role='button'
											class='arrow first'>맨앞으로</a>
										<c:choose>
											<c:when test="${map.wnum eq 1}">
												<a href='javascript:wPage(${map.wnum })' role='button'
													class='arrow prev'>이전</a>
											</c:when>
											<c:otherwise>
												<a href='javascript:wPage(${map.wnum-1 })' role='button'
													class='arrow prev'>이전</a>
											</c:otherwise>
										</c:choose>
										<span class='num'> <c:choose>
												<c:when test="${wst>=wed }">
													<c:forEach var="wNum" begin="${map.wst }"
														end="${map.wrepeat }">
														<c:choose>
															<c:when test="${wNum==map.wnum }">
																<a href='javascript:wPage(${wNum })' role='button'
																	aria-selected='true'>${wNum }</a>
															</c:when>
															<c:otherwise>
																<a href='javascript:wPage(${wNum })' role='button'>${wNum }</a>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<c:forEach var="wNum" begin="${map.wst }"
														end="${map.wst+9 }">
														<c:choose>
															<c:when test="${wNum==map.wnum }">
																<a href='javascript:wPage(${wNum })' role='button'
																	aria-selected='true'>${wNum }</a>
															</c:when>
															<c:otherwise>
																<a href='javascript:wPage(${wNum })' role='button'>${wNum }</a>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</c:otherwise>
											</c:choose>

										</span>

										<c:choose>
											<c:when test="${map.wnum == map.wrepeat}">
												<a href='javascript:wPage(${map.wnum })' role='button'
													class='arrow next'>다음</a>
											</c:when>
											<c:otherwise>
												<a href='javascript:wPage(${map.wnum+1 })' role='button'
													class='arrow next'>다음</a>
											</c:otherwise>
										</c:choose>
										<a href='javascript:wPage(${map.wrepeat })' role='button'
											class='arrow last'>맨끝으로</a>
									</div>
								</c:if>
								<script>
									function resultSearch() {
										$('#mnum').val(1);
										$('#bnum').val(1);
										go();
									}
									function wPage(val) {
										$('#wnum').val(val);
										go();
									}
									function go() {
										$("#searchForm").attr("action",
												"list.do");
										$("#searchForm").submit();
									}
									function goDetail(num, seq) {
										$("#seq").val(seq);
										$("#num").val(num);
										$("#searchForm").attr("action",
												"${path}/whatsnew/wsdetail.do");
										$("#searchForm").submit();
									}
								</script>
								<%@ include file="../layout/aside.jsp"%>
							</div>
						</div>
					</div>
					<!-- //visualArea -->
					<%@ include file="../layout/footer.jsp"%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>