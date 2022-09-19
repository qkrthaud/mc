<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<%@ include file="./layout/header.jsp"%>
		<div id="container">
			<div class="content">

				<div class="titleArea" data-title="검색결과" data-desc="검색">
					<div class="inner">
						<h1 class="titDep1">검색결과</h1>
						<ul class="navPath">
							<li><a href="${path }/main">Home</a></li>
							<li><a href="${path }search.do">검색결과</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<form id="searchForm" method="post">
							<input type="hidden" name="mnum" id="mnum" value="1"> <input
								type="hidden" name="bnum" id="bnum" value="1"> <input
								type="hidden" name="page" id="page" value="1"> <input
								type="hidden" name="seq" id="seq"> <input type="hidden"
								name="sub_category" id="sub_category" value="${value }">
							<fieldset class="srchBox">
								<legend>매장검색</legend>
								<div class="form">
									<input type="text" placeholder="매장 또는 메뉴정보를 검색하실 수 있습니다."
										name="commonSearchWord" id="resultSearchWord" title="검색어 입력"
										value="${map.keyword }">
									<button type="button" class="btnMC btnM"
										onclick="resultSearch()">검색하기</button>
								</div>
							</fieldset>
						</form>
						<div class="srchResult">
							<p class="resultCopy">
								<b class="color01">"${map.keyword}"</b>에 대해 총 ${map.tcount }건의
								검색결과가 있습니다.
							</p>
							<div class="resultCont">
								<h2 class="titDep3">
									매장 <span class="unit">${map.mcount }</span>
								</h2>
								<div class="mcStore">
									<table class="tableType01">
										<caption>매장목록 - 매장명/주소, 전화번호, 영업시간, 이용가능 서비스 정보표</caption>
										<colgroup>
											<col>
											<col style="width: 14%">
											<col style="width: 18%">
											<col style="width: 30%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">매장명 / 주소</th>
												<th scope="col">전화번호</th>
												<th scope="col">영업시간</th>
												<th scope="col">이용가능 서비스</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${map.mmap!=null }">
												<%
													String[] abc = {"A", "B", "C", "D", "E"};
												int[] numbers = {1, 2, 3, 4, 5, 6};
												int num = 0;
												int abmnum = 0;
												%>
												<c:forEach var="dto" items="${map.mmap }">
													<tr>
														<td class="tdName">
															<dl class="name">
																<dt>
																	<em class="ico"><%=abc[abmnum]%></em><strong
																		class="tit">${dto.name }</strong><a
																		href="${path }/store/search?sear=${dto.name }"
																		class="btnMC btnS">지도보기</a>
																<dd>${dto.place}</dd>
																<dd class="road">${dto.place2 }</dd>
															</dl>
														</td>
														<td>${dto.tel }<br></td>
														<td>${dto.time }</td>
														<td class="tdService">
															<div class="service">
																<c:if test="${fn:contains(dto.service, '24')}">
																	<span class="srvc<%=numbers[num]%>"> <input
																		type="checkbox" disabled checked> <label>24시간
																	</label>
																	</span>
																	<%
																		num++;
																	%>
																</c:if>
																<c:if test="${fn:contains(dto.service, 'drive')}">
																	<span class="srvc<%=numbers[num]%>"> <input
																		type="checkbox" disabled checked> <label>맥드라이브
																	</label>
																	</span>
																	<%
																		num++;
																	%>
																</c:if>
																<c:if test="${fn:contains(dto.service, 'del')}">
																	<span class="srvc<%=numbers[num]%>"> <input
																		type="checkbox" disabled checked> <label>맥딜리버리
																	</label>
																	</span>
																	<%
																		num++;
																	%>
																</c:if>
																<c:if test="${fn:contains(dto.service, 'morning')}">
																	<span class="srvc<%=numbers[num]%>"> <input
																		type="checkbox" disabled checked> <label>맥모닝
																	</label>
																	</span>
																	<%
																		num++;
																	%>
																</c:if>
																<c:if test="${fn:contains(dto.service, 'parking')}">
																	<span class="srvc<%=numbers[num]%>"> <input
																		type="checkbox" disabled="" checked=""> <label>주차
																	</label>
																	</span>
																	<%
																		num++;
																	%>
																</c:if>
																<c:if test="${fn:contains(dto.service, 'decafe')}">
																	<span class="srvc<%=numbers[num]%>"> <input
																		type="checkbox" disabled="" checked=""> <label>디카페인
																			커피 </label>
																	</span>
																	<%
																		num++;
																	%>
																</c:if>
															</div>
														</td>
													</tr>
													<%
														abmnum++;
													num = 0;
													%>
												</c:forEach>
											</c:if>
											<tr>
										</tbody>
									</table>
									<c:if test="${map.mcount != 0 }">
										<div class='btnPaging'>
											<a href='javascript:storePage(1)' role='button'
												class='arrow first'>맨앞으로</a>
											<c:choose>
												<c:when test="${map.mnum eq 1}">
													<a href='javascript:storePage(${map.mnum })' role='button'
														class='arrow prev'>이전</a>
												</c:when>
												<c:otherwise>
													<a href='javascript:storePage(${map.mnum-1 })'
														role='button' class='arrow prev'>이전</a>
												</c:otherwise>
											</c:choose>
											<span class='num'> <c:choose>
													<c:when test="${mst>=med }">
														<c:forEach var="mNum" begin="${map.mst }"
															end="${map.mrepeat }">
															<c:choose>
																<c:when test="${mNum==map.mnum }">
																	<a href='javascript:storePage(${mNum })' role='button'
																		aria-selected='true'>${mNum }</a>
																</c:when>
																<c:otherwise>
																	<a href='javascript:storePage(${mNum })' role='button'>${mNum }</a>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<c:forEach var="mNum" begin="${map.mst }"
															end="${map.mst+9 }">
															<c:choose>
																<c:when test="${mNum==map.mnum }">
																	<a href='javascript:storePage(${mNum })' role='button'
																		aria-selected='true'>${mNum }</a>
																</c:when>
																<c:otherwise>
																	<a href='javascript:storePage(${mNum })' role='button'>${mNum }</a>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</c:otherwise>
												</c:choose>

											</span>

											<c:choose>
												<c:when test="${map.mnum == map.mrepeat}">
													<a href='javascript:storePage(${map.mnum })' role='button'
														class='arrow next'>다음</a>
												</c:when>
												<c:otherwise>
													<a href='javascript:storePage(${map.mnum+1 })'
														role='button' class='arrow next'>다음</a>
												</c:otherwise>
											</c:choose>
											<a href='javascript:storePage(${map.mrepeat })' role='button'
												class='arrow last'>맨끝으로</a>
										</div>
									</c:if>
								</div>
								<!-- //mcStore -->
							</div>
							<div class="resultCont">
								<h2 class="titDep3">
									메뉴 <span class="unit">${map.bcount }</span>
								</h2>
								<div class="mcMenu">
									<ul class="menuList">
										<c:forEach var="dto" items="${map.bugger }">
											<li><a
												href="javascript:goDetail(${dto.menuSeq}, '${dto.value}')"
												data-seq="${dto.menuSeq}">
													<div class="thum">
														<img src="${path}/resources/images/menuImg/${dto.image}"
															alt="${dto.name}">
													</div>
													<div class="name">
														<strong class="ko">${dto.name}</strong> <em class="en">${dto.engName}</em>
													</div>
											</a></li>
										</c:forEach>
									</ul>
								</div>
								<!-- //mcMenu -->
								<c:if test="${map.bcount != 0 }">
									<div class='btnPaging'>
										<a href='javascript:buggerPage(1)' role='button'
											class='arrow first'>맨앞으로</a>
										<c:choose>
											<c:when test="${map.bnum eq 1}">
												<a href='javascript:buggerPage(${map.bnum })' role='button'
													class='arrow prev'>이전</a>
											</c:when>
											<c:otherwise>
												<a href='javascript:buggerPage(${map.bnum-1 })'
													role='button' class='arrow prev'>이전</a>
											</c:otherwise>
										</c:choose>
										<span class='num'> <c:choose>
												<c:when test="${bst>=bed }">
													<c:forEach var="bNum" begin="${map.bst }"
														end="${map.brepeat }">
														<c:choose>
															<c:when test="${bNum==map.bnum }">
																<a href='javascript:buggerPage(${bNum })' role='button'
																	aria-selected='true'>${bNum }</a>
															</c:when>
															<c:otherwise>
																<a href='javascript:buggerPage(${bNum })' role='button'>${bNum }</a>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<c:forEach var="bNum" begin="${map.bst }"
														end="${map.bst+9 }">
														<c:choose>
															<c:when test="${bNum==map.bnum }">
																<a href='javascript:buggerPage(${bNum })' role='button'
																	aria-selected='true'>${bNum }</a>
															</c:when>
															<c:otherwise>
																<a href='javascript:buggerPage(${bNum })' role='button'>${bNum }</a>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</c:otherwise>
											</c:choose>

										</span>

										<c:choose>
											<c:when test="${map.bnum == map.brepeat}">
												<a href='javascript:buggerPage(${map.bnum })' role='button'
													class='arrow next'>다음</a>
											</c:when>
											<c:otherwise>
												<a href='javascript:buggerPage(${map.bnum+1 })'
													role='button' class='arrow next'>다음</a>
											</c:otherwise>
										</c:choose>
										<a href='javascript:buggerPage(${map.brepeat })' role='button'
											class='arrow last'>맨끝으로</a>
									</div>
								</c:if>
							</div>
						</div>
						<!-- //검색 결과 -->
					</div>
				</div>
				<!-- //contArea -->
				<script>
					function resultSearch() {
						if ($.trim($("#resultSearchWord").val()) == "") {
							alert("검색어을 입력해 주세요");
							$("#resultSearchWord").focus();
						} else {
							$('#mnum').val(1);
							$('#bnum').val(1);
							go();
						}
					}
					function storePage(val) {
						$('#mnum').val(val);
						go();
					}
					function buggerPage(val) {
						$('#bnum').val(val);
						go();
					}
					function go() {
						$("#searchForm").attr("action", "search.do"); //지도 연결
						$("#searchForm").submit();
					}
					function goDetail(seq, value) {
						$("#seq").val(seq);
						$("#sub_category").val(value);
						$("#searchForm").attr("action", "${path}/menu/detail");
						$("#searchForm").submit();
					}
				</script>
			</div>
			<%@ include file="./layout/aside.jsp"%>
		</div>
		<%@ include file="./layout/footer.jsp"%>
	</div>
</body>
</html>