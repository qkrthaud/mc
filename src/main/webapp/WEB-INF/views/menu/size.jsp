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
	$(document).ready(function() {
		var name= '${menuInfo.name}'
		var seq = '${menuInfo.menuSeq}'
		var size ='${menuInfo.menuSize}'
		console.log(name)
		console.log(seq)
		console.log(size)
		$('.toggle').find('>button').each(function() {
			var t = $(this);
			var b = t.closest('.toggle');
			var content = $(document).find('#' + t.attr('aria-controls'));
			var arr = [];
			if (t.attr('text')) {
				arr = t.attr('text').split('|');
				console.log(arr)
			}
			$(this).on('click', function(evt) {
				var s, n;
				evt.preventDefault();
				if (t.attr('aria-selected') == 'true') {
					t.attr({
						'aria-selected' : false,
						'aria-expanded' : false
					});
					b.removeClass('open');
					content.stop().show();
					n = content.outerHeight();
					s = 200 * (n / 400)
					content.slideUp(s);
					if (arr.length) {
						t.text(arr[0]);
					}
				} else {
					t.attr({
						'aria-selected' : true,
						'aria-expanded' : true
					});
					b.addClass('open');
					n = content.outerHeight();
					s = 100 * (n / 400)
					// console.log( s )
					content.stop().hide().slideDown(s);
					if (arr.length) {
						t.text(arr[1]);
					}
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="wrapper">
	<%@ include file="../layout/header.jsp"%>
		<div id="container">
			<div class="content">
				<div class="visualArea bgMenu05">
					<div class="inner">
						<h1 class="titDep1">맥카페 &amp; 음료</h1>
						<p class="subCopy">언제나 즐겁게, 맥카페와 다양한 음료를 부담없이 즐기세요!</p>
						<ul class="navPath">
							<li><a href="/">Home</a></li>
							<li><a href="javascript:gotoMenu('버거');">Menu</a></li>
							<li><a href="javascript:gotoMenu('맥카페');">맥카페 &amp; 음료</a></li>
						</ul>
					</div>
				</div>

				<div class="contArea">
					<div class="inner">
						<div class="menuView">
							<div class="viewTop">
								<div class="name">
									<h2 class="ko">${menuInfo.name}</h2>
									<em class="en">${menuInfo.engName }</em>
								</div>
								<div class="info" data-title="${menuInfo.name }"
									data-desc="'${value }' 메뉴">
									<div class="visual">
										<img src="${path}/resources/images/menuImg/${menuInfo.image}"
											alt="${menuInfo.name }">
									</div>
									<br> <br>
									<div class="desc">
										<h3>${menuInfo.explanation }</h3>
									</div>
								</div>
							</div>
							<div class="viewCon">

								<div class="toggle">
									<h4 class="tit">영양정보</h4>
									<button type="button" aria-selected="false"
										aria-controls="toggle02" aria-expanded="false">영양정보
										보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle02" class="toggleCon">
										<table class="tableType01 nutrDesc">
											<caption>영양정보 - 영양소별 함량, 영양소기준치 정보표</caption>
											<colgroup>
												<col style="width: 15%">
												<col>
											</colgroup>
											<thead>
												<tr>
													<th scope="row">영양소</th>
													<th scope="col">중량(g)</th>
													<th scope="col">중량(ml)</th>
													<th scope="col">열량</th>
													<th scope="col">당</th>
													<th scope="col">단백질</th>
													<th scope="col">포화지방</th>
													<th scope="col">나트륨</th>
													<th scope="col">카페인</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row">함량</th>
													<td>${nutInfo.weight_G }g</td>
													<td>${nutInfo.weight_Ml }ml</td>
													<td>${nutInfo.calorie }kcal</td>
													<td>${nutInfo.suger }g</td>
													<td>${nutInfo.protein }g</td>
													<td>${nutInfo.saturated_Fat }g</td>
													<td>${nutInfo.natrium }mg</td>
													<td>${nutInfo.caffeine }mg</td>
												</tr>
												<tr>
													<th scope="row">영양소기준치</th>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>${nutInfo.suger }%</td>
													<td>${pro_cal }%</td>
													<td>${fat_cal }%</td>
													<td>${nat_cal }%</td>
													<td>-</td>
												</tr>
											</tbody>
										</table>

									</div>
								</div>

								<div class="toggle">
									<h4 class="tit">알레르기 정보</h4>
									<button type="button" aria-selected="false"
										aria-controls="toggle03" aria-expanded="false">알레르기
										정보 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle03" class="toggleCon">
										<div class="allerDesc">
											<p>${nutInfo.allergy_Info }</p>
										</div>
									</div>
								</div>

								<div class="toggle">
									<h4 class="tit">원산지 정보</h4>
									<button type="button" aria-selected="false"
										aria-controls="toggle04" aria-expanded="false">원산지 정보
										보기</button>
									<div id="toggle04" class="toggleCon">
										<ul class="origin_info">${nutInfo.origin_Info }
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="../layout/aside.jsp"%>
		</div>
		<%@ include file="../layout/footer.jsp"%>
	</div>
</body>
</html>