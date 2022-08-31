<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맥도날드</title>
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/favicon.ico">

<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

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
							<!-- /* KV 비디오*/ -->
							<!-- /* 2022.01.27 KV 비디오 추가 */ -->
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
							<!-- /* 2022.01.27 KV 비디오 추가 끝 */ -->
							<!-- /* 2022.01.27 KV 비디오 추가 */ -->
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
							<!-- /* 2022.01.27 KV 비디오 추가 끝 */ -->
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
						<!-- 재생표시 <button type="button" class="play">재생</button> -->
					</div>
				</div>
				<script>
const swiper = new Swiper('.swiper', {
	  // Optional parameters
	  direction: 'vertical',
	  delay: 5000,
	  loop: true,

	  // Navigation arrows
	  navigation: {
	    nextEl: '.swiper-button-next',
	    prevEl: '.swiper-button-prev',
	  },

	});
</script>
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
	}
</script>
				<!-- //mainEvent -->
				<div class="contArea mainCont">
					<div class="inner">
						<h2 class="titMain">McDonald's LIVE</h2>
						<ul class="whatsNew" id="menuList">


							<li><a href="#" onclick="goDetail(this)" data-seq="145"
								data="145,N,/kor/promotion/detail.do?seq=382&amp;utm_medium=pc_corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=2022_GMALSummer">
									<div class="tmb">
										<img src="/upload/main/card/1660204537085.jpg"
											alt="맥도날드 행운의 원더랜드">
									</div>
									<div class="con">
										<strong class="tit">맥도날드 행운의 원더랜드</strong>
									</div>
							</a></li>

							<li><a href="#" onclick="goDetail(this)" data-seq="144"
								data="144,N,/kor/promotion/detail.do?seq=380&amp;utm_medium=pc_corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=2022_Romania">
									<div class="tmb">
										<img src="/upload/main/card/1659512755699.jpg"
											alt="돌아온 한국 마늘의 맛 창녕 갈릭 버거 재출시">
									</div>
									<div class="con">
										<strong class="tit">돌아온 한국 마늘의 맛! <br>창녕 갈릭 버거
											재출시!
										</strong>
									</div>
							</a></li>

							<li><a href="#" onclick="goDetail(this)" data-seq="141"
								data="141,N,/kor/promotion/detail.do?seq=378&amp;utm_medium=pc_corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=2022_ProjectGreen">
									<div class="tmb">
										<img src="/upload/main/card/1656466890614.jpg"
											alt="버거 하나를 위해 보성까지 갔습니다!보성녹돈 버거 출시!">
									</div>
									<div class="con">
										<strong class="tit">버거 하나를 위해 보성까지 갔습니다!<br>보성녹돈
											버거 출시!
										</strong>
									</div>
							</a></li>

							<li><a href="#" onclick="goDetail(this)" data-seq="142"
								data="142,N,/kor/promotion/detail.do?seq=376&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=2022_BAQ3">
									<div class="tmb">
										<img src="/upload/main/card/1656467182899.jpg"
											alt="NEW 해피스낵, 일상 속 확실한 행복을 즐겨요">
									</div>
									<div class="con">
										<strong class="tit">NEW 해피스낵, <br>일상 속 확실한 행복을
											즐겨요
										</strong>
									</div>
							</a></li>

							<li><a href="#" onclick="goDetail(this)" data-seq="137"
								data="137,N,https://www.mcdonalds.co.kr/kor/promotion/detail.do?seq=369&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=2022_McCrispy">
									<div class="tmb">
										<img src="/upload/main/card/1653467599860.png"
											alt="세상 처음 맛보는 치킨버거, 맥크리스피™">
									</div>
									<div class="con">
										<strong class="tit">겉바속촉 100% 통닭다리살!<br> 먹어봐야 아는
											맛! 맥크리스피™ 출시!
										</strong>
									</div>
							</a></li>

							<li><a href="#" onclick="goDetail(this)" data-seq="140"
								data="140,N,https://www.mcdonalds.co.kr/kor/promotion/detail.do?seq=374&amp;utm_medium=Main_cardblock&amp;utm_source=Main_banner&amp;utm_campaign=2022_McCafe">
									<div class="tmb">
										<img src="/upload/main/card/1655282749763.jpg"
											alt="NEW 아이스크림 라떼 출시!">
									</div>
									<div class="con">
										<strong class="tit">달콤한 아이스크림과 진~한 라떼의 만남!<br>
											아이스크림 라떼 출시!
										</strong>
									</div>
							</a></li>
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

				<script type="text/javascript" src="/cert/js/KmcCert.js"></script>
				<script type="text/javascript">
					var init_page = 0;
					var totalPage = 0;
					var isCertificate = false;

					$(document).ready(function() {
						daylock();
						getList(1);
					});
					function getList(page_val) {
						$.post("/kor/mainContent.do", {
							page : page_val
						}, function(data) {
							if (data.is_ok == "ok") {
								totalPage = data.totalPage;
								init_page = data.page;
								for (var i = 0; i < data.list.length; i++) {
									$("#menuList")
											.append(addList(data.list[i]));
								}
								if (page_val > 1) {
									$("[data-seq='" + data.list[0].seq + "']")
											.focus();
								}
								altEscapeTag();
								if (totalPage == page_val) {
									$("#btnMore").hide();
								}
							} else {
								alert("목록가져오기에 실패하였습니다\관리자에게 문의하세요");
							}
						}

						);

					}
					function daylock() {
						$("[data-daylock]")
								.each(
										function(i, ob) {
											$(ob)
													.on(
															"click",
															function(e) {
																if ($(this)
																		.prop(
																				"checked")) {
																	var name = $(
																			this)
																			.data(
																					"daylock");
																	var day = $(
																			this)
																			.data(
																					"daylock-day");
																	if (day == undefined
																			|| day == null
																			|| day == null
																			|| isNaN(day) == true) {
																		setCookie(
																				name,
																				"lock",
																				7);
																	} else {
																		setCookie(
																				name,
																				"lock",
																				day);
																	}
																	commonJs.popup.image
																			.hide($("#popNoti"));
																}
															});

										});
					}
					function addList(data) {
						if (data.content_type == "I")
							return makeHtml("card1", data);
						else
							return makeHtml("card2", data);
					}
					function goEventLink(evient_seq) {
						$("#seq").val(evient_seq);
						$("#searchForm").attr("action",
								"/kor/promotion/detail.do");
						$("#searchForm").submit();
					}

					function more() {
						getList(init_page + 1);
					}

					function removeVideo() {
						var now = new Date();
						var hours = now.getHours();
						var minutes = now.getMinutes();

						var start = Date.parse('2020-07-30 04:00:00') / 1000;
						var end = Date.parse('2020-07-30 10:30:00') / 1000;
						var now = Date.parse('2020-07-30 ' + hours + ':'
								+ minutes + ':00') / 1000;

						if ((now >= start) && (now <= end)) {
							$('.video').remove();
						}

					}

					function goDetail(element) {

						var data = $(element).attr("data").split(",");

						var seq = data[0];
						var certification = data[1];
						var linkurl = data[2];

						var form_data = KmcCert.getUrlCode(seq, "json");

						$("#seq").val(seq);
						$("#linkurl").val(linkurl);
						$("#urlCode").val(form_data["urlCode"]);

						if (certification !== "N" && isCertificate) {
							certification = 'N';
						}

						if (certification !== "N") {
							var certPopup = window
									.open('about:blank', 'certviewer',
											'width=846,height=700,scrollbars=no,resize=no');
							certPopup.resizeTo(846, 700);
							$("#searchForm").attr("action", "/cert/popup.do");
							$("#searchForm").attr("target", "certviewer");
							$("#searchForm").submit();
						} else {
							self.location.href = linkurl;
						}

					}

					function certificate() {
						isCertificate = true;
						self.location.href = $("#linkurl").val();
					}
				</script>
				<script id="card1" type="text/templet">
<li><a href="#" onclick="goDetail(this)" data-seq="{seq}" data="{seq},{certification},{pc_kor_link}">
								<div class="tmb"><img src="{pc_kor_image_url}" alt="{pc_kor_alt}"></div>
								<div class="con">
									<strong class="tit">{pc_kor_content}</strong>
								</div>
							</a></li>
</script>
				<script id="card2" type="text/templet">
<li class="official"><a href="#" onclick="goDetail(this)"  data-seq="{seq}" data="{seq},{certification},{pc_kor_link}">
								<strong class="tit">{pc_kor_alt}</strong>
								<span class="txt">{pc_kor_content}</span>
							</a></li>
</script>
			</div>
			<%@ include file="./layout/aside.jsp"%>
		</div>
		<%@ include file="./layout/footer.jsp"%>
	</div>
</body>
</html>