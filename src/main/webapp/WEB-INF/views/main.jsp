<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맥도날드</title>
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/favicon.ico">
<!-- <script src="https://www.mcdonalds.co.kr/kor/js/libs.js"></script> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.2.2/js/swiper.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
	integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
		<%@ include file="./layout/header.jsp"%>
		<div id="container">
			<div class="content">
				<h1 class="hide" data-desc="메인">Main</h1>

				<div class="mainEvent basicSwiper"">
					<div class="swiper">
						<ul>
							<li><a
								href="/kor/promotion/detail.do?seq=382&utm_medium=pc_corp_site&utm_source=Main_banner&utm_campaign=2022_GMALSummer"><img
									src="resources/images/1660204312850.jpg" alt="맥도날드 행운의 원더랜드"></a></li>
							<li><a
								href="/kor/promotion/detail.do?seq=380&utm_medium=pc_corp_site&utm_source=Main_banner&utm_campaign=2022_Romania"><img
									src="resources/images/1659512336802.jpg" alt="창녕 갈릭 버거 재출시"></a></li>
							<li class="video"><span>
									<div class="video-box">
										<video muted playsinline autoplay data-time="30000">
											<source
												src="resources/images/0404_McD_BB_BigMac_30_1920x540.mp4"
												type="video/mp4">
										</video>
										<button type="button" class="sound off">Sound on</button>
									</div>
							</span></li>
							<li class="video"><span>
									<div class="video-box">
										<video muted playsinline autoplay data-time="6000">
											<source
												src="resources/images/0422_McCafe_banner_pc_1920x540.mp4"
												type="video/mp4">
										</video>
										<button type="button" class="sound off">Sound on</button>
									</div>
							</span></li>
							<li><a
								href="/kor/promotion/detail.do?seq=378&utm_medium=pc_corp_site&utm_source=Main_banner&utm_campaign=2022_ProjectGreen"><img
									src="resources/images/1656466054189.jpg"
									alt="맥도날드가 찾은 한국의 맛 보성녹돈 버거 출시!"></a></li>
							<li><a
								href="/kor/promotion/detail.do?seq=376&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=2022_BAQ3"><img
									src="resources/images/1656466162538.jpg"
									alt="레몬과 탄산의 두번 톡 쏘는 해피스낵으로 일상 속 확실한 행복을 즐겨요"></a></li>
							<li><a
								href="https://www.mcdonalds.co.kr/kor/promotion/detail.do?seq=369&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=2022_McCrispy"><img
									src="resources/images/1653467570689.png"
									alt="100% 통닭다리살 먹어봐야 아는 맛!"></a></li>
							<li><a
								href="https://www.mcdonalds.co.kr/kor/promotion/detail.do?seq=374&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=2022_McCafe"><img
									src="resources/images/1655282479287.jpg"
									alt="달콤한 아이스크림과 진~한 라떼의 만남!"></a></li>
							<li><a
								href="/kor/promotion/detail.do?seq=371&utm_medium=pc_corp_site&utm_source=Main_banner&utm_campaign=2022_McWing"><img
									src="resources/images/1653977979670.png"
									alt="겉은 바삭 속은 쫄깃! 2022년 맥윙™ 출시!"></a></li>
							<li><a href="https://www.mcalba.co.kr"><img
									src="resources/images/1657076214300.png"
									alt="맥도날드와 함께할 크루와 매니저를 찾습니다"></a></li>
							<li><a
								href="/kor/promotion/detail.do?page=1&seq=356&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=0310_MyMcD"><img
									src="resources/images/1646731135357.png"
									alt="구매 금액 100원 당 5포인트 적립되는 마이 맥도날드 리워드 출시! 첫 적립 시 맥너겟 무료 (맥너겟으로 교환 가능한 1,500 포인트로 증정드립니다.)"></a></li>
							<li><a
								href="https://www.mcdonalds.co.kr/kor/promotion/detail.do?seq=368&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=2022_Chiller"><img
									src="resources/images/1652253813878.jpg"
									alt="상큼함이 하늘을 칠러!   NEW 한라봉&애플망고 칠러"></a></li>
							<li><img src="resources/images/1633532684256.png"
								alt="점심을 제대로 굿런치 맥런치_맥치킨 모짜렐라, 베이컨 토마토 디럭스, 더블 불고기 버거, 빅맥, 맥스파이시 상하이 버거, 1955 버거, 더블 필레 오 피쉬, 쿼터파운더 치즈"></li>
							<li><a
								href="/kor/promotion/detail.do?page=1&seq=320&utm_medium=Corp_site&utm_source=Main_banner&utm_campaign=0408_Strawberry"><img
									src="resources/images/1641377444960.png"
									alt="신선한 우유와 딸기의 진한 만남_1등급 원유 사용 베리 스트로베리 맥플러리, 스트로베리콘"></a></li>
						</ul>

					</div>
					<button type="button" class="ctrl prev">이전</button>
					<button type="button" class="ctrl next">다음</button>
					<div class="indicator">
						<span role="text" class="timer"><span class="bar"
							style="width: 25%"></span></span>
						<button type="button" class="play pause">정지</button>
					</div>

					<script>
					var slider = {
							setup : function( target )
							{
								var sTarget = target.find('.swiper');
								sTarget.addClass('swiper-container');
								sTarget.find('>ul , >ol').addClass('swiper-wrapper');
								sTarget.find('>ul>li , >ol>li').addClass('swiper-slide');

								if( target.find('.swiper').data('swipe') )
								{
									target.find('.swiper').data('swipe').destroy();
									target.find('.indicator .bar').stop().css('width','0');
									// target.find('.slide-invisible-blank').remove();
								}

								var opt = {};
								if( target.hasClass('basicSwiper') )
								{
									// console.log('-- basic -')
									var transitionVisible = function()
									{
										bar.stop().css('width','0');
										target.find('.swiper-slide').css('visibility','visible');
									}
									var transitionHidden = function()
									{
										target.find('.swiper-slide').css('visibility','hidden');
										if( target.hasClass('swiperType02') ){
											target.find('.swiper-slide-next').css('visibility','visible');
										}
										target.find('.swiper-slide-active').css('visibility','visible');
									}
									opt = {
										delay : 5000 , 
										loop: true,
										navigation : {
											nextEl: target.find('.next'),
											prevEl: target.find('.prev'),
										},
										on : {
											transitionEnd : function(  )
											{
												if( target.find('.indicator button').hasClass('pause') ){
													nextH();
												}
												transitionHidden();
											},
											sliderMove 	:	transitionVisible,
											// slideChange 	:	transitionVisible,
											transitionStart	:	transitionVisible,
											// touchStart		:	transitionVisible
										}
									}
									// 다른 타입
									if( target.hasClass('swiperType02') ){
										opt.slidesPerView = 2;
										opt.slidesPerGroup =  2;
										opt.spaceBetween = 50;
									}

									var bar			= target.find('.indicator .bar');
									var inButton	= target.find('.indicator button');
									inButton.off().addClass('pause')

									inButton.on('click' , function(evt)
									{
										evt.preventDefault();
										if( $(this).hasClass('pause')  ){
											bar.stop().css('width','0');
											$(this).removeClass('pause');
											$(this).text('재생');
										}else{
											$(this).addClass('pause');
											$(this).text('정지');
											nextH();
										}
									});

									inButton.on('keydown',function( evt )
									{
										if( !evt.shiftKey ){
											nextH();
										}
										
									});
									inButton.on('keyup',function( evt )
									{
										if( evt.shiftKey ){
											transitionVisible();
											transitionHidden();
										}
									});

									target.find('.prev').off().on('keyup',function( evt ){
										if( evt.shiftKey ){
											nextH();
										}else{
											transitionVisible();
											transitionHidden();
										}
									})
								}

								function nextH()
								{
									if( !bar.length ){
										return
									}
									
									/* 2020.6.4 KV 비디오 추가 */
									var $active = $('.swiper-slide-active');
									if( $active.hasClass('video')){
										var video = $active.find('video');
										let time = Number(video.data('time')) + 1000;
										
										// 영상 시간에 맞춰 조절 필요
										var duration = time;

										bar.stop().css('width','0')
										bar.animate({
											'width':'100%'
										}, duration , function(){
											sw.slideNext();
										})

										video.get(0).load();
										setTimeout(function(){
											video.get(0).play();
										}, 100);

										var $btn = $active.find('.sound');
										$btn.off().on('click', function(e){
											e.stopPropagation();
											if( ! $btn.hasClass("off")){
												video.prop('muted', true);
												$btn.addClass("off").text('Sound on');
											}else {
												video.prop('muted', false);
												$btn.removeClass("off").text('Sound off');
											}
										});

									}else{
										bar.stop().css('width','0')
										bar.animate({
											'width':'100%'
										},opt.delay , function(){
											sw.slideNext();
										})
										if ( $('.swiper li').hasClass('video') ){
											var video = $('.swiper video');
											video.get(0).load();
											video.get(0).pause();
											video.each(function(){
												$(this).get(0).pause();
											});
										}
									}
									/* 2020.6.4 KV 비디오 추가 끝 */
								}

								var sw =  new Swiper(sTarget , opt );
								target.find('.swiper').data('swipe',sw);
								nextH();
							},

							bind : function(){
								
							}
						}
					$(function()
							{
								doc = $(document);
								win = $(window);
								header = $('.header');

								$('.basicSwiper').each(function()
								{
									slider.setup( $(this) );
								});
							});
					</script>
				</div>


				<!-- //mainEvent -->
				<div class="contArea mainCont">
					<div class="inner">
						<h2 class="titMain">McDonald's Promotion</h2>
						<ul class="whatsNew" id="menuList">
							<c:forEach var="dto" items="${main_b}">
								<li><a
									href="${path }/whatsnew/promotion?writeNo=${dto.writeNo }"
									class="ing on">
										<div class="tmb">
											<img src="${path }/resources/images/whatsnew/${dto.mainImg }">
										</div>
										<div class="con">
											<strong class="tit">${dto.title }</strong>
										</div>
								</a></li>
							</c:forEach>
						</ul>
						<div class="btnMore" id="btnMore">
							<a href="javascript:more();" class="more" title="더보기">더보기</a>
						</div>
					</div>
				</div>
				<form id="searchForm" name="searchForm" method="get">
					<input type="hidden" name="seq" id="seq"> <input
						type="hidden" name="urlCode" id="urlCode"> <input
						type="hidden" name="linkurl" id="linkurl">
				</form>
			</div>
			<%@ include file="./layout/aside.jsp"%>
		</div>
		<%@ include file="./layout/footer.jsp"%>
	</div>
</body>
</html>