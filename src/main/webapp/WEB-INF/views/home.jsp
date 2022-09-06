<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<!-- Link Swiper's CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script> -->
<script src="https://www.mcdonalds.co.kr/kor/js/libs.js"></script>



<title>Home</title>
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/favicon.ico">
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	${whatsnew_b.size() }
	<c:forEach var="dto" items="${whatsnew_b}">
		${dto.title }
	</c:forEach>
<!-- 	<div class="swiper-container">
		Additional required wrapper
		<ul class="swiper-wrapper">
			<li class="swiper-slide"><img
				src="resources/images/1660204312850.jpg" alt="맥도날드 행운의 원더랜드">
			</li>
			<li class="swiper-slide"><img
				src="resources/images/1659512336802.jpg" alt="창녕 갈릭 버거 재출시"></li>
			<li class="video"><span>
					<div class="video-box">
						<video muted playsinline autoplay data-time="6000">
							<source src="resources/images/0422_McCafe_banner_pc_1920x540.mp4"
								type="video/mp4">
						</video>
						<button type="button" class="sound off">Sound on</button>
					</div>
			</span></li>
		</ul>
		If we need navigation buttons
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>

	</div> -->
	<div class="swiper">
		<!-- Additional required wrapper -->
		<ul>
			<!-- Slides -->
			<li><img
				src="resources/images/1660204312850.jpg" alt="맥도날드 행운의 원더랜드">
			</li>
			<li><img
				src="resources/images/1659512336802.jpg" alt="창녕 갈릭 버거 재출시"></li>
			<li class="video"><span>
					<div class="video-box">
						<video muted playsinline autoplay data-time="6000">
							<source src="resources/images/0422_McCafe_banner_pc_1920x540.mp4"
								type="video/mp4">
						</video>
						<button type="button" class="sound off">Sound on</button>
					</div>
			</span></li>
		</ul>
		<!-- If we need navigation buttons -->
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>

	</div>
	<!-- 	<script>
		var bar = $(document).find('.indicator .bar');
		var inButton = $(document).find('.indicator button');
		inButton.off().addClass('pause')
		inButton.on('click', function(evt) {
			evt.preventDefault();
			if ($(this).hasClass('pause')) {
				bar.stop().css('width', '0');
				$(this).removeClass('pause');
				$(this).text('재생');
			} else {
				$(this).addClass('pause');
				$(this).text('정지');
				nextH();
			}
		});
		var transitionVisible = function() {
			bar.stop().css('width', '0');
			$(document).find('.swiper-slide').css('visibility', 'visible');
		}
		var transitionHidden = function() {
			$(document).find('.swiper-slide').css('visibility', 'hidden');
			if ($(document).hasClass('swiperType02')) {
				$(document).find('.swiper-slide-next').css('visibility',
						'visible');
			}
			$(document).find('.swiper-slide-active').css('visibility',
					'visible');
		}
		function nextH() {

			/* 2020.6.4 KV 비디오 추가 */
			var $active = $('.swiper-slide-active');
			if ($active.hasClass('video')) {
				var video = $active.find('video');
				let time = Number(video.data('time')) + 1000;

				// 영상 시간에 맞춰 조절 필요
				var duration = time;

				bar.stop().css('width', '0')
				bar.animate({
					'width' : '100%'
				}, duration, function() {
					sw.slideNext();
				})

				video.get(0).load();
				setTimeout(function() {
					video.get(0).play();
				}, 100);

				var $btn = $active.find('.sound');
				$btn.off().on('click', function(e) {
					e.stopPropagation();
					if (!$btn.hasClass("off")) {
						video.prop('muted', true);
						$btn.addClass("off").text('Sound on');
					} else {
						video.prop('muted', false);
						$btn.removeClass("off").text('Sound off');
					}
				});

			} else {
				bar.stop().css('width', '0')
				bar.animate({
					'width' : '100%'
				}, opt.delay, function() {
					swiper.slideNext();
				})
				if ($('.swiper li').hasClass('video')) {
					var video = $('.swiper video');
					video.get(0).load();
					video.get(0).pause();
					video.each(function() {
						$(this).get(0).pause();
					});
				}
			}
			/* 2020.6.4 KV 비디오 추가 끝 */
		}
		var swiper = null;
		if (swiper != null) {
			swiper.destroy();
		}
		swiper = new Swiper('.swiper-container',
				{
					delay : 5000,					
					direction : 'horizontal',
					loop : true,
					navigation : {
						nextEl : '.swiper-button-next',
						prevEl : '.swiper-button-prev',
					},					
					on : {
						transitionEnd : function() {
							if ($(document).find('.indicator button').hasClass(
									'pause')) {
								nextH();
							}
							transitionHidden();
						},
						sliderMove : transitionVisible,
						transitionStart : transitionVisible,
					},
				});
		nextH();
	</script> -->
	<script>
		var target = $(document);
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
				// �ㅻⅨ ����
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
						$(this).text('�ъ깮');
					}else{
						$(this).addClass('pause');
						$(this).text('�뺤�');
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
				
				/* 2020.6.4 KV 鍮꾨뵒�� 異붽� */
				var $active = $('.swiper-slide-active');
				if( $active.hasClass('video')){
					var video = $active.find('video');
					let time = Number(video.data('time')) + 1000;
					
					// �곸긽 �쒓컙�� 留욎떠 議곗젅 �꾩슂
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
 
			}

			var sw =  new Swiper(sTarget , opt );
			target.find('.swiper').data('swipe',sw);
			nextH();
</script>
</body>
</html>

