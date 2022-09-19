<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://www.mcdonalds.co.kr/kor/js/libs.js"></script>
<script src="https://www.mcdonalds.co.kr/kor/js/common.js?t=2022012502"></script>
<style type="text/css">
.sel12 {    
	height: 70px;
    width: 172px;
    margin-top: -35px;
	min-width: 172px;
    padding: 0 38px;
    font-size: 15px;
    line-height: 70px;
    border-radius: 70px;
    display: inline-block;
    color: #292929;
    font-weight: 600;
    background: #ffbc0d;
    border: none;}

</style>
</head>
<body>
<div class="wrapper ">
<%@ include file="../../layout/header.jsp" %>
		<div id="container">
			<div class="content">
				
				<div class="visualArea bgStory03" data-title="맥도날드 경쟁력" data-desc="궁금한 모든 것을 알려드립니다.">
					<div class="inner">
						<h1 class="titDep1">맥도날드 경쟁력</h1>
						<p class="subCopy">맥도날드는 어떤 곳 보다 햄버거 비즈니스를 진지하게 생각합니다.<br>엄격한 품질 관리 시스템을 통해 고품질의 음식을 제공하며,조리 과정에서 고객이 궁금한 모든 것을 알려드립니다.</p>
						<ul class="navPath">
							<li><a href="<%=request.getContextPath() %>/main">Home</a></li>
							<li><a href="<%=request.getContextPath() %>/story/main">Story</a></li>
							<li><a href="<%=request.getContextPath() %>/story/competition/farmToRestaurant">맥도날드 경쟁력</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
								<li><a href="<%=request.getContextPath() %>/story/competition/farmToRestaurant" role="button">농장에서 레스토랑까지</a></li>
							<li><a href="#" role="button" aria-selected="true">궁금한 모든 것을 알려드립니다</a></li>
						
						</ul>
						<h2 class="hide">궁금한 모든 것을 알려드립니다</h2>
						<div class="faqFind">
							<fieldset class="srchBox">
								<legend>질문 검색</legend>
								
								
									
									<div class="form">
								<div class="selectWrap">
										<select title="검색 항목 선택" style="width:250px" id="category">
											<option value="">전체</option>
											<option value="원재료">원재료</option>
											<option value="품질관리">품질관리</option>
											<option value="매장위생">매장위생</option>
										</select>
									</div>
									<input type="text" placeholder="검색어를 입력해주세요." title="검색어 입력" style="width:723px" id="searchWord">
									<button type="button" class="btnMC btnM" onclick="search()">검색하기</button>
									
								</div>
							</fieldset>
						</div>
						<!-- //faqFind -->
						<div class="faqResult">
							<div class="sorting">
								<span class="formWrap labelR">											
									<input type="radio" id="rd01" name="sortRdGroup" checked value="" onclick="radio1Click()">
									<label for="rd01">전체보기</label>
								</span>
								<span class="formWrap labelR">	
								<c:choose>
								<c:when test="${num==2}">
								<input type="radio" id="rd02" name="sortRdGroup" value="원재료" checked onclick="radio2Click()">
								</c:when>
								<c:otherwise>
								<input type="radio" id="rd02" name="sortRdGroup" value="원재료" onclick="radio2Click()">
								</c:otherwise>
								</c:choose>	
								
									<label for="rd02">원재료</label>
								</span>
								<span class="formWrap labelR">	
								<c:choose>
								<c:when test="${num==3}">
								<input type="radio" id="rd03" name="sortRdGroup" value="품질관리" checked onclick="radio3Click()">
								</c:when>
								<c:otherwise>
								<input type="radio" id="rd03" name="sortRdGroup" value="품질관리" onclick="radio3Click()">
								</c:otherwise>
								</c:choose>										
									
									<label for="rd03">품질관리</label>
								</span>
								<span class="formWrap labelR">
								<c:choose>
								<c:when test="${num==4}">
								<input type="radio" id="rd04" name="sortRdGroup" value="매장위생" checked onclick="radio4Click()">
								</c:when>
								<c:otherwise>
								<input type="radio" id="rd04" name="sortRdGroup" value="매장위생" onclick="radio4Click()">
								</c:otherwise>
								</c:choose>												
									
									<label for="rd04">매장위생</label>
								</span>		
													
							</div>
							<ul class="faqToggle" id="faqList">
							<c:forEach var="dto" items="${list }">
								<li class="toggle">
								<h3 class="question"><em class="sortItem item01">
								<span class="hide">구분</span>
								${dto.grade }
								</em>
								<strong>
								<span class="hide">질문</span>
								${dto.title }
								</strong>
								</h3>
								<button type="button" aria-selected="false" aria-controls="toggle01"
								aria-expanded="false">"답변보기"</button>
								<div id="toggle0101" class="toggleCon">
								<em class="hide">답변</em>
								<p>${dto.content }
								</p>
								</div>
								</li>
							</c:forEach>
							</ul>
							
							<div class="btnMore" style="display:none">
								<button type="button" class="more">더보기</button>
							</div>
						</div>
						<!-- //faqResult -->
					</div>
				</div>
				<!-- //contArea -->
				<script>
				function search(){
					
					var str='faq?choice='+$("#category").val()+'&search='+$("#searchWord").val()
					location.href=str;
				}
				function radio1Click(){
					location.href="faq?choice=전체&num=1"
				}
				function radio2Click(){
					location.href="faq?choice=원재료&num=2"
				}
				function radio3Click(){
					location.href="faq?choice=품질관리&num=3"
				}
				function radio4Click(){
					location.href="faq?choice=매장위생&num=4"
				}
				</script>

<%@ include file="../../layout/aside.jsp" %>
</div>
<%@ include file="../../layout/footer.jsp" %>
</div>
</div>
</body>
</html>