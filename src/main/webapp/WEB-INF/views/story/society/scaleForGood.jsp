<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://www.mcdonalds.co.kr/kor/js/libs.js"></script>
<script src="https://www.mcdonalds.co.kr/kor/js/common.js?t=2022012502"></script>
</head>
<body>
<div class="wrapper ">
		<%@ include file="../../layout/header.jsp" %>
		<div id="container">
			<div class="content">
				 
<div class="visualArea bgStory02" data-title="맥도날드 사회적 책임" data-desc="스케일포굿">
					<div class="inner">
						<h1 class="titDep1">맥도날드 사회적 책임</h1>
						<p class="subCopy">맥도날드는 어떤 곳 보다 햄버거 비즈니스를 진지하게 생각합니다.<br>엄격한 품질 관리 시스템을 통해 고품질의 음식을 제공하며,조리 과정에서 고객이 궁금한 모든 것을 알려드립니다.</p>
						<ul class="navPath">
							<li><a href="<%=request.getContextPath() %>/main">Home</a></li>
							<li><a href="<%=request.getContextPath() %>/story/main">Story</a></li>
							<li><a href="<%=request.getContextPath() %>/story/society/list">맥도날드 사회적 책임</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<div class="scaleforgood">
							<h2 class="titDep2">&lsquo;스케일 포 굿(Scale for Good) 캠페인&rsquo;은 무엇인가요?</h2>
							<div class="img"><img src="<%=request.getContextPath() %>/resources/images/story/img_scalefogood.jpg" alt="스케일 포 굿(Scale for Good) 캠페인"></div>
							<h3 class="titDep4">스케일 포 굿 캠페인은 맥도날드가 책임 있는 글로벌 기업으로<br>전 세계적으로 발생하고 있는 사회, 환경적 문제해결에 기여하고자 시작한 글로벌 캠페인입니다.</h3>
							<p role="text" class="txtInfo">맥도날드는 전 세계 120개 마켓에서 37,000여개 레스토랑을 운영하며 매일 6,900만명의 고객이 찾는<br>책임 있는 글로벌 기업입니다. 맥도날드의 작은 변화는 전 세계에 아주 큰 변화를 만들어 낼 수 있습니다.</p>
						</div>
						<div class="globalMc">
							<h2 class="titDep2">글로벌 맥도날드 5대 과제</h2>
							<ul class="tabType01 tabMn">
								<li><a href="#tab01" role="button" aria-selected="true" class="tabTit">온실가스 감축</a><!-- 클릭시 li class="on"추가,삭제 --></li>
								<li><a href="#tab02" role="button" class="tabTit">지속가능한 공급</a>
								</li>
								<li><a href="#tab03" role="button" class="tabTit">친환경 포장재 사용 및 재활용</a></li>
								<li><a href="#tab04" role="button" class="tabTit">가족 고객을 위한 약속</a></li>
								<li><a href="#tab05" role="button" class="tabTit">사람에 대한 투자</a></li>
							</ul>
							<!-- 온실가스 감축 -->
							<div class="tabCont" id="tab01" style="display:block">
								<h3 class="hide">온실가스 감축</h3>
								<ul class="assignList item01">
									<li><span>전국 레스토랑에<br>친환경 고효율 LED 조명 설치</span>
									</li>
									<li><span>태양광 발전 레스토랑 시범 운영<br>(부산 및 제주 지역 5개 레스토랑)</span>
									</li>
									<li><span>맥딜리버리에 친환경 전기바이크 사용<br>(일부 지역 운영 중)</span>
									</li>
									<li><span>폐식용유를 친환경<br>바이오디젤 원료로 재활용</span>
									</li>
								</ul>
								<p class="pointTxt">전 세계 레스토랑 및 사무실, 원재료 공급 및 유통 과정에서 발생하는 온실가스 배출량을 줄이겠습니다.</p>
							</div>
							<!-- //온실가스 감축 -->
							<!-- 지속가능한 공급 -->
							<div class="tabCont" id="tab02">
								<h3 class="hide">지속가능한 공급</h3>
								<ul class="assignList item02">
									<li><span>&lsquo;세계보건가구(WHO)&rsquo;가 규정한<br>유해 항생제를 사용하지 않은<br>건강한 닭고기만을 사용</span>
									</li>
									<li><span>맥카페 커피 원두는<br>&lsquo;열대우림동맹&rsquo; 인증 받은<br>친환경 원두로 100% 교체</span>
									</li>
									<li><span>2025년까지 공급 받는 계란을<br>&lsquo;동물복지란&rsquo;으로 교체예정</span>
									</li>
								</ul>
								<p class="pointTxt">농장에서 레스토랑에 이르기까지 지속 가능한 원재료 도입을 위해 힘쓰겠습니다.</p>
							</div>
							<!-- //지속가능한 공급 -->
							<!-- 친환경 포장재 사용 및 재활용 -->
							<div class="tabCont" id="tab03">
								<h3 class="hide">친환경 포장재 사용 및 재활용</h3>
								<ul class="assignList item03">
									<li><span>국내 외식업계 최초 &lsquo;산림관리협의회&rsquo; 인증<br>친환경 포장재 사용 (2019년 상반기부터)</span>
									</li>
									<li><span>레스토랑에서 제공하는 종이봉투에<br>친환경 재생용지 사용</span>
									</li>
									<li><span>레스토랑 내 다회용 컵 사용하여<br>1회 용품 감소 노력</span>
									</li>
								</ul>
								<p class="pointTxt">친환경 포장재를 사용하고 더 많이 재활용해 지구를 살기 좋은 곳으로 만들겠습니다.</p>
							</div>
							<!-- //친환경 포장재 사용 및 재활용 -->
							<!-- 가족 고객을 위한 약속 -->
							<div class="tabCont" id="tab04">
								<h3 class="hide">가족 고객을 위한 약속</h3>
								<ul class="assignList item04">
									<li><span>해피밀 등 가족 고객을 위한<br>메뉴에 보다 건강한 옵션 제공<br>(2019년 하반기부터)</span>
									</li>
									<li><span>해피밀에 책을 제공하는<br>&lsquo;해피밀 리더스 프로그램&rsquo; 도입<br>(2019년 하반기부터)</span>
									</li>
									<li><span>부산대학교 어린이 병원에 중증 어린이 환자와<br>가족들이 병원 근처에 머물며 치료를 받을 수 있는<br>&lsquo;로널드 맥도날드 하우스&rsquo; 건립 후원<br>(2018년 하반기 완공 예정)</span>
									</li>
								</ul>
								<p class="pointTxt">어린이를 동반한 가족 고객에게 더욱 건강한 메뉴 옵션과 즐거운 경험을 제공하겠습니다.</p>
							</div>
							<!-- //가족 고객을 위한 약속 -->
							<!-- 사람에 대한 투자 -->
							<div class="tabCont" id="tab05">
								<h3 class="hide">사람에 대한 투자</h3>
								<ul class="assignList item05">
									<li><span>&lsquo;단독기업형&rsquo; 프로그램<br>전 세계 퀵서비스레스토랑 업계 리더로써<br>쌓아온 노하우를 활용해 직원들이<br>외식산업 전문가로 성장할 수 있도록<br>본사교육 및 현장 훈련 진행</span>
									</li>
									<li><span>고용노동부와 함께 &lsquo;일학습병행제&rsquo;<br>시행하여 직원들이 일과 학업을 병행하며<br>전문가로 성장할 수 있도록 지원</span>
									</li>
									<li><span>&lsquo;대학연계형&rsquo; 프로그램<br>일을 하면서 학업을 지속하고자 하는<br>직원들에게 대학교육 및 학사학위<br>취득기회 제공</span>
									</li>
								</ul>
								<p class="pointTxt">매년 100만명 이상의 직원들이 맥도날드에서 일하며 업무 역량을 키우는 동시에 학업을 병행하고 있습니다.</p>
							</div>
							<!-- //사람에 대한 투자 -->
							<div class="btnArea">
								<a href="<%=request.getContextPath() %>/story/society/list" role="button" class="btnList"><span>목록보기</span></a>
							</div>
						</div>
					</div>
				</div>
<%@ include file="../../layout/aside.jsp" %>
</div>
<%@ include file="../../layout/footer.jsp" %>
</div>
</div>
</body>
</html>