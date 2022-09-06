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
		},

		bind : function(){
			
		}
	}