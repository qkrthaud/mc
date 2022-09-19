<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://www.mcdonalds.co.kr/kor/js/libs.js"></script>
<script src="https://www.mcdonalds.co.kr/kor/js/common.js?t=2022012502"></script>
<script src="https://www.mcdonalds.co.kr/kor/js/popup.js"></script>
</head>
<body>
<div class="wrapper ">
		<%@ include file="../../layout/header.jsp" %>
		<div id="container">
			<div class="content">
				
				<div class="visualArea bgStory04" data-title="맥도날드 사람들" data-desc="크루 이야기">
					<div class="inner">
						<h1 class="titDep1">맥도날드 사람들</h1>
						<p class="subCopy">끊임없는 변화와 도전을 통해 성장해온 맥도날드<br>이 변화의 중심에는 맥도날드와 함께 변화하며 성장하는 &lsquo;맥도날드 사람들&rsquo;이 있습니다.</p>
						<ul class="navPath">
							<li><a href="<%=request.getContextPath() %>/main">Home</a></li>
							<li><a href="<%=request.getContextPath() %>/story/main">Story</a></li>
							<li><a href="#">맥도날드 사람들</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="#" role="button" aria-selected="true">크루이야기</a></li>
							<li><a href="<%=request.getContextPath() %>/story/people/work" role="button">업무소개</a></li>
						    <li><a href="<%=request.getContextPath() %>/story/people/recruit" role="button">인재채용</a></li> 
						</ul>
						<h2 class="hide">크루이야기</h2>
						

						<div class="crewCont02">
							<h3 class="titDep3">크루들이 만들어가는 맥도날드의 변화 이야기</h3><!-- 수정 -->
							<ul class="crewList">
								<li>
									<a href="javascript:commonJs.popup.basic.show($('#crew_1'));" class="crewThumb"><img src="<%=request.getContextPath() %>/resources/images/story/img_crew_thumb01.png" alt="목포 남악 DT점 김지웅 매니저"></a></a>
									<strong class="tit">변화는 나의 자부심</strong>
									<span class="crewInfo">목포 남악 DT점 김지웅 매니저</span>
								</li>
								<li>
									<a href="javascript:commonJs.popup.basic.show($('#crew_2'));" class="crewThumb"><img src="<%=request.getContextPath() %>/resources/images/story/img_crew_thumb02.png"alt="경희대점 권영미 크루"></a></a>
									<strong class="tit">매일 열정적일 수 있는<br>나만의 비결</strong>
									<span class="crewInfo">경희대점 권영미 크루</span>
								</li>
								<li>
									<a href="javascript:commonJs.popup.basic.show($('#crew_3'));" class="crewThumb"><img src="<%=request.getContextPath() %>/resources/images/story/img_crew_thumb03.png"alt="미아역점 이지혁 라이더"></a></a>
									<strong class="tit">행복을 배달하는 사람으로</strong>
									<span class="crewInfo">미아역점 이지혁 라이더</span>
								</li>
								<li>
									<a href="javascript:commonJs.popup.basic.show($('#crew_4'));" class="crewThumb"><img src="<%=request.getContextPath() %>/resources/images/story/img_crew_thumb04.png"alt="석촌역점 이나라 크루"></a></a>
									<strong class="tit">맥도날드를 넘어,<br>나 자신의 변화까지</strong>
									<span class="crewInfo">석촌역점 이나라 크루</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- //contArea -->
<%@ include file="../../layout/aside.jsp" %>
</div>
<%@ include file="../../layout/footer.jsp" %>
</div>
</div>
<div class="dimmed"></div>
	<div id="materialPop" class="popLayer layerS">
		<div class="layCont" id="materialPopCon">
			
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>
	<script id="materialPopText" type="text/templet">
	<div class="scroll ingrInfo">
	<div class="ingrTop">
		<div class="img"><img src="{pc_image_url}" alt="{pc_kor_alt}"></div>
		<h2 class="tit">{pc_kor_desc}</h2>
	</div>
	<div class="ingrCon">
		{pc_kor_desc}
	</div>
	</div>
	</script>
	
	
	
<div class="popLayer layerS layerType03" id="crew_1">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="<%=request.getContextPath() %>/resources/images/story/img_crew_pop01.jpg" alt="목포 남악 DT점 김지웅 매니저"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">변화는 나의 자부심</h2>
					<p class="txt">처음엔 ‘그냥 아르바이트 하는 곳’이라는 생각으로 시작 하였던 것이 어느 것 16년을 함께 하고 있습니다. 맥도날드의 다양한 경험을 통해 항상 새로운 시도와 변화를 먼저 이끌어 나가는 기업이라는 것을 자연스럽게 느낄 수 있었습니다.</p>
					<p class="txt">맥드라이브, 맥딜리버리, 최근의 미래형 매장까지&middot;&middot;&middot;<br>멈추지 않는 다양한 시도들은 저에게 변화를 함께 만들어 가면서 최초라는 자부심을 갖고 일할 수 있게 해주었습니다.</p>
					<p class="txt">맥도날드의 변화는 곧 저의 즐거움이자 자부심이며,<br>이러한 새로운 변화를 계속해서 이끌어갈 것입니다.</p>
					<p class="crewInfo">목포 남악 DT점 김지웅 매니저</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_2">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="<%=request.getContextPath() %>/resources/images/story/img_crew_pop02.jpg" alt="경희대점 권영미 크루"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">매일 열정적일 수 있는 나만의 비결</h2>
					<p class="txt">야간 근무를 하면서 밤낮이 바뀐 생활이 쉽진 않았습니다.<br>하지만 한 집안의 &lsquo;엄마&rsquo;와 &lsquo;아내&rsquo;로서, 그리고 맥도날드에<br>찾아오는 모든 고객 분들의 &lsquo;이웃&rsquo;과 &lsquo;친구&rsquo;로서 균형을<br>잃지 않기 위해 더 열심히 일했습니다.</p>
					<p class="txt">누구보다 더 변화하는 시스템을 긍정적이고 빠르게 받아들이려<br>노력하여, 어느새 저는 매장의 맏언니로 자리할 수 있었습니다.<br>함께 일하는 크루들도 언제나 열정적인 저의 모습을 통해<br>힘을 얻고 함께 변화하며 성장하고 있습니다.</p>
					<p class="txt">오늘 밤에도 나, 그리고 맥도날드를 찾아 주시는<br>고객 분들을 위해 더 열정적으로 일하려 합니다.</p>
					<p class="crewInfo">경희대점 권영미 크루</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_3">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="<%=request.getContextPath() %>/resources/images/story/img_crew_pop03.jpg" alt="미아역점 이지혁 라이더"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">행복을 배달하는 사람으로.</h2>
					<p class="txt">제가 어떤 마음으로 일하느냐에 따라 고객 분들이 느끼는 게<br>다를거라 생각했습니다. 돈을 벌기 위해서, 어쩔 수 없이 해야하니까 하는 것 보단 스스로 가치 있고 &ldquo;행복을 전달하는 일이다.&rdquo;라고 생각하는 태도를 갖기로 마음 먹었습니다.</p>
					<p class="txt">그러자 전보다 감사한 마음으로 일할 수 있었고, <br>그 마음이 어느 정도 고객 분들에게 전달 되어지고 있다고 생각합니다.</p>
					<p class="txt">그렇게 감사하며 유쾌하게 일을 하고 있고,<br>더 많은 행복을 전달할 수 있도록 노력할 것 입니다</p>
					<p class="crewInfo">미아역점 이지혁 라이더</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_4">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="<%=request.getContextPath() %>/resources/images/story/img_crew_pop04.jpg" alt="석촌역점 이나라 크루"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">맥도날드를 넘어, 나 자신의 변화까지</h2>
					<p class="txt">올 해, 고객 분들과 직접 접할 일이 더욱 많은 &lsquo;서비스 리더&rsquo;라는 직책을 맡게 되면서 저에게 고객과의 소통은 중요한 일이 되었습니다. 처음엔 낯설고 힘들었습니다.<br>하지만 고객 분들에게 저희 매장의 직원들이 친절하다는 칭찬을 듣고 싶은 욕심이 점점 생겼습니다.</p>
					<p class="txt">그렇게 마음 먹은 뒤로부터 웃는 얼굴로 일하여 노력하기 시작했고, 그러자 일이 즐겁게 느껴졌습니다. <br> 그런 것을 고객 분들도 알아주시고, 함께 웃는 얼굴로 마주해주시니 제 삶까지 행복해졌습니다.</p>
					<p class="txt">처음에는 작은 욕심으로 시작한 일이<br>맥도날드의 변화를 넘어, 나 자신의 변화까지 가져왔습니다.</p>
					<p class="crewInfo">석촌역점 이나라 크루</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>
</body>
</html>