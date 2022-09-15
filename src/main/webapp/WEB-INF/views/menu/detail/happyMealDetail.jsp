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
<style type="text/css">
.arrow{font-size: 30px;}
</style>
<script>
	$(document).ready(function() {
		var val = '${value}';
		var rn ='${menuInfo.rownum}'
		var size = '${menuInfo.menuSize}'
		console.log(val)
		console.log(rn)
		console.log(size)
		pageButton();
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


									<div class="other">
										<a href="javascript:goDetailPaging('${menuInfo.rownum-1 }');" id="prev" class="arrow prev">
										<span class="arr">이전 메뉴</span>
										<strong class="arrow">&lt;</strong></a>

										<a href="javascript:goDetailPaging('${menuInfo.rownum+1 }');" id="next" class="arrow next">
										<span class="arr">다음 메뉴</span>
										<strong class="arrow">&gt;</strong></a>
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
			<%@ include file="../../layout/aside.jsp"%>
		</div>
		<%@ include file="../../layout/footer.jsp"%>
	</div>
	<form id="searchForm" method="post">
		<input type="hidden" name="page" id="page" value="${menuInfo.rownum}"> 
		<input type="hidden" name="sub_category" id="sub_category" value="${value }">
	</form>
<script>
function goDetailPaging(rn){
	$("#page").val(rn);
	$("#searchForm").attr("action","${path}/menu/detailPaging");
	$("#searchForm").submit();
}
function showSize(seq){
	$("#seq").val(seq);
	$("#searchForm").attr("action","${path}/menu/size");
	$("#searchForm").submit();
}
function pageButton(){
	var now ='${menuInfo.rownum}'
	var val ='${value}'
	console.log(now)
	if(val == "해피밀AM"){
		
	if(now == 1){
		$('#prev').hide();
	}else if(now == 7){
		$('#next').hide();
	}
	}else if(val == "해피밀PM"){
		if(now == 1){
			$('#prev').hide();
		}else if(now == 6){
			$('#next').hide();
		}
	}
}
</script>


</body>
</html>