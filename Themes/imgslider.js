
(function($) {

	var wdwidth = 0, wdheight = 0, busy = false,selectedArray = [], selectedIndex = 0, titletxt='', crrpos=0, selectedOpts = {}, liwidth = 0;

	resetthumb = function(){
		crrthumb=0;
		$('.at-thumb ul').html('')
	}

	buildthumb = function(){
		selectedArray.each(function(i,e){
			var thumburl ='', titlethumb='';
			if ($(this).children('img').length) {
				thumburl = $(this).children('img').attr('src');
			}else{
				thumburl = $(this).attr('href');
			}
			titlethumb = $(this).attr('title');

			var htmlli = '<li style="padding-right: '+ selectedOpts.spacethumb +'px"><a data-pos="' + i + '"><img src="' + thumburl +'" height="'+ selectedOpts.thumbheight +'" width="'+ selectedOpts.thumbwidth +'" alt="'+ titlethumb +'"></a></li>';
			$('.at-thumb ul').append(htmlli);
		})
		liwidth = selectedOpts.thumbwidth+2+selectedOpts.spacethumb;

		$('.at-thumb,.thumnav,.at-mask').width(selectedOpts.visthumb * liwidth - selectedOpts.spacethumb);
		$('.at-thumb-next,.at-thumb-prev').css('top',selectedOpts.thumbheight*0.5-17)
		$('.at-thumb li:first-child a').addClass('active');
		$('.at-thumb li a').click(function(){
			crrpos = $(this).data('pos');
			showitem(crrpos);
		})
	}

	resizemain = function(){
		wdwidth = $(window).width() - selectedOpts.margin*2;
		wdheight = $(window).height() - selectedOpts.margin*2 - selectedOpts.thumbheight ;

		var ratio = $('.at-mainimg img').width()/$('.at-mainimg img').height();
		var imgwidth = wdheight * ratio;
		$('.at-main-wrap').width(imgwidth + selectedOpts.padding*2);
		$('.at-mainimg').height(wdheight).width(imgwidth);
	}

	showitem = function(id){
		crrpos = id;
		//$('.at-loading').css('display','block');
		var nsrc = selectedArray[id];
		var preloadImg = new Image();
		
		$('.at-thumb li a').removeClass('active');
		$('.at-thumb li').eq(id).children().addClass('active');
		
		preloadImg.onload = function(){
			var ratio = preloadImg.width/preloadImg.height;
			var imgwidth = wdheight * ratio;
			$('.at-mainimg img').fadeOut(300,function(){

				$('.at-main-wrap').animate({'width':(imgwidth + selectedOpts.padding*2)},300)
				$('.at-mainimg').animate({'height':wdheight,'width':imgwidth},300,function(){
					$('.at-mainimg img').attr('src',nsrc).fadeIn(400)
					//$('.at-imgsl').height(wdheight).width(imgwidth);
					//$('.at-imgsl img').attr('src',nsrc).parent().fadeIn(400,function(){ $(this).css('display','none')})
				})
			})
			//$('.at-loading').css('display','none');
			
		}
		preloadImg.src = nsrc;
		//console.log(crrpos)
		
	}

	preslider = function(){
		var obj = selectedArray[0];
		selectedOpts = $.extend({}, $.fn.atimgsl.defaults, (typeof $(obj).data('atimgsl') == 'undefined' ? selectedOpts : $(obj).data('atimgsl')));
		resizemain();
		resetthumb();
		buildthumb();
		titletxt = $(this).attr('title');
		// $('.at-loading').css('display','block');
		$('.at-main-wrap').css({'margin': selectedOpts.margin + 'px auto'})
		// $('.at-mainimg').css({'padding': selectedOpts.padding})
		$('.atphoto-wrap').fadeIn(selectedOpts.speedIn,function(){
			showitem(0)
		})
		
	}
	
	/**
	 *  public
	 */

	$.fn.atimgsl = function(options){
		if (!$(this).length) {
			return this;
		}

		$(this).data('atimgsl', $.extend({}, options, ($.metadata ? $(this).metadata() : {})))
		.unbind('click.fb')
		.bind('click.fb', function(e) {
				e.preventDefault();

				if (busy) {
					return;
				}

				busy = true;

				//$(this).blur();

				selectedArray = [];
				selectedIndex = 0;

				var rel = $(this).attr('rel') || '';

				if (!rel || rel == '' || rel === 'nofollow') {
					selectedArray.push(this);
				} else {
					selectedArray = $("a[rel=" + rel + "], area[rel=" + rel + "]");
					selectedIndex = selectedArray.index( this);
				}

				preslider();

				return;
			});

	}


	$.atimgsl = function(obj) {
		var opts;

		if (busy) {
			return;
		}

		busy = true;
		opts = typeof arguments[1] !== 'undefined' ? arguments[1] : {};

		selectedArray = [];
		selectedIndex = parseInt(opts.index, 10) || 0;

		if ($.isArray(obj)) {
			for (var i = 0, j = obj.length; i < j; i++) {
				if (typeof obj[i] == 'object') {
					$(obj[i]).data('atimgsl', $.extend({}, opts, obj[i]));
				} else {
					obj[i] = $({}).data('atimgsl', $.extend({content : obj[i]}, opts));
				}
			}

			selectedArray = jQuery.merge(selectedArray, obj);

		} else {
			if (typeof obj == 'object') {
				$(obj).data('atimgsl', $.extend({}, opts, obj));
			} else {
				obj = $({}).data('atimgsl', $.extend({content : obj}, opts));
			}

			selectedArray.push(obj);
		}

		if (selectedIndex > selectedArray.length || selectedIndex < 0) {
			selectedIndex = 0;
		}

		preslider();
	};


	/**
	 * [init ]
	 * @return {[type]} [add wrap for body]
	 */
	
	$.atimgsl.init = function(){
		$('body').append('<div class="atphoto-wrap"> <div class="at-main-wrap"> <div class="at-closebtn"></div> <div class="at-nextimg"></div> <div class="at-previmg"></div> <div class="at-mainimg"> <img class="atimg" src="" alt=""/><div class="at-loading"></div> </div><div class="at-imgsl"> <img class="atimg" src="" alt=""/></div> </div> <div class="at-thumb-wrap"><div class="thumnav"> <div class="at-thumb-next"></div> <div class="at-thumb-prev"></div></div> <div class="at-thumb"> <ul class="nav"></ul> </div> </div> <div class="at-mask-wrap"><div class="at-mask"></div></div> </div>');
		$('.at-nextimg').click(function(){
			if(crrpos < selectedArray.length -1 ){
				crrpos ++;
				showitem(crrpos);
			}
			
		});
		$('.at-previmg').click(function(){
			if(crrpos>0){
				crrpos --;
				showitem(crrpos);
			}
		})

		$('.at-thumb-next').click(function(){
			var crrulLeft = parseInt($('.at-thumb ul').css('margin-left').replace('px',''))
			var newulLeft = 0;
			if(crrulLeft > selectedOpts.visthumb * liwidth * selectedArray.length *-1){
				var newulLeft = crrulLeft - liwidth*selectedOpts.scrthumb;
			}else{
				var newulLeft = selectedOpts.visthumb * liwidth * selectedArray.length *-1;
				
			}
			$('.at-thumb ul').animate({'margin-left':newulLeft},500)
			//console.log(crrulLeft + '   ' + newulLeft)
		})

		$('.at-thumb-prev').click(function(){
			var crrulLeft = parseInt($('.at-thumb ul').css('margin-left').replace('px',''));
			var newulLeft = 0;
			if(crrulLeft < selectedOpts.visthumb * liwidth*-1){
				newulLeft = crrulLeft + selectedOpts.scrthumb * liwidth;
			}else{
				newulLeft = 0;
			}
			$('.at-thumb ul').animate({'margin-left':newulLeft},500);
		})

		$('.at-closebtn').click(function(){
			$('.atphoto-wrap').fadeOut(300,function(){
				$('.at-mainimg img').attr('src','');
				crrthumb=0;
			$('.at-thumb ul').html('')
			});
			
			busy = false;
		})
		$('.at-mask-wrap').click(function(){
			$('.at-closebtn').trigger('click');
			return false;
		})
	};

	$.fn.atimgsl.defaults = {
		padding : 10,
		margin : 25,
		cyclic : true,

		thumbwidth : 100,
		thumbheight : 100,
		visthumb : 8,
		scrthumb : 8,
		spacethumb:3,
		titleShow : false,
		speedIn : 300,
		speedOut : 300,

		changeSpeed : 300,
		changeFade : 'fast',

		easingIn : 'swing',
		easingOut : 'swing'
	};

	$(document).ready(function() {
		$.atimgsl.init();
		resizemain();
	});
	$(window).resize(function(){
		resizemain()
	})
})(jQuery);


$(document).ready(function() {
	$('.fancyphoto').atimgsl({
		visthumb: 7,
		scrthumb:6,
		padding:3
	})
});