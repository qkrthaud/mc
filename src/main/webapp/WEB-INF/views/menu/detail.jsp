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
$(document).ready(function(){
	var doc;
	$('div.toggle').click(function(){
			$('.toggle').find('>button').each(function(){
				var t = $(this);
				var b = t.closest('.toggle');
				var arr =[];
				if(t.attr('text')){
					arr = t.attr('text').split('|');
					}
				$(this).on('click',function(){
						if(t.attr('aria-selected') == 'true'){
							t.attr({
								'aria-selected':false,
								'aria-expanded':false
						});
						b.removeClass('open');
						if( arr.length ){
							t.text(arr[0]);
						}
						}else{
							t.attr({
								'aria-selected':true,
								'aria-expanded':true
							});
							b.addClass('open');
							if( arr.length ){
								t.text(arr[1]);
							}
						}
				});
						});
						});
				
				});

</script>
</head>
<body>
	<div class="wrapper">
		<%@include file="../layout/header.jsp"%>
		<div id="container">
			<div class="content">

				<div class="visualArea bgMenu01">
					<div class="inner">
						<h1 class="titDep1">버거</h1>
						<p class="subCopy">
							빅맥<sub class="reg">®</sub>에서 맥스파이시<sub class="reg">®</sub>
							상하이버거까지, <br>주문 즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다.
						</p>
						<ul class="navPath">
							<li><a href="/">Home</a></li>
							<li><a href="javascript:gotoMenu(1);">Menu</a></li>
							<li><a href="javascript:gotoMenu(1);">버거</a></li>
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
								<div class="info" data-title="88 서울 비-프 버거 세트(버거)"
									data-desc="버거 메뉴">
									<div class="visual">
										<img src="${path}/resources/images/menuImg/${menuInfo.image}"
											alt="88 서울 비-프 버거 세트_감자튀김과 콜라 M사이즈 포함">
									</div>
									<br> <br>
									<div class="desc">
										<h3>${menuInfo.explanation }</h3>
									</div>


									<div class="other">


										<a href="javascript:goDetail(490);" class="arrow next"><span
											class="arr">다음 메뉴</span>
											<div class="img">
												<img src="/upload/product/pcthum/1659511930656.png"
													alt="창녕 갈릭 버거 세트">
											</div> <strong class="tit">창녕 갈릭 버거 세트</strong></a>

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
													<td>${suger }%</td>
													<td>38%</td>
													<td>46%</td>
													<td>61%</td>
													<td>-</td>
												</tr>
											</tbody>
										</table>

									</div>
								</div>

								<div class="toggle">
									<h4 class="tit">알레르기 정보</h4>
									<button type="button" id="btn2" "aria-selected="false"
										aria-controls="toggle03" aria-expanded="false">알레르기
										정보 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle03" class="toggleCon">
										<div class="allerDesc">
											<p>
												<b>알레르기 유발 가능 식재료</b> (난류,대두,밀,돼지고기,토마토) <br>
												<b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>
											</p>
										</div>
									</div>
								</div>

								<div class="toggle">
									<h4 class="tit">원산지 정보</h4>
									<button type="button" id="btn3" aria-selected="false"
										aria-controls="toggle04" aria-expanded="false">원산지 정보
										보기</button>
									<div id="toggle04" class="toggleCon">
										<ul class="origin_info">
										케네디언베이컨:미국산
										</ul>
									</div>
								
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>