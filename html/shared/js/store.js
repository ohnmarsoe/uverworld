$.easing.quart = function (x, t, b, c, d) { return -c * ((t=t/d-1)*t*t*t - 1) + b; };


var ecMenuOpenFlg = false;
var ecContentOver = false;
var contentH;

/* ストアメニュー
-----------------------------------------------*/
jQuery("#label-cart .ec-menu a").click(function($){
	
	//if($(window).width() < 568) {
		$('html,body').stop().animate({scrollTop:0}, 500, 'quart');
		$("#ec-nav").scrollTop(0);
	//}
	
	$("body").removeAttr("style");
	$("#bst-wrap").removeAttr("style");
	$("#ec").removeAttr("style");
	
			if (ecMenuOpenFlg) {
				
				contentHeight();
				
				/*close*/
				ecMenuOpenFlg = false;
				
				$("#ec-nav").removeClass("open");
				$("#ec-nav").stop().animate({ right: -270 +"px"},'fast',function(){
					$(this).removeAttr("style");
				});
				
			} else {
				
				if (ua.indexOf('iphone') > 0 || ua.indexOf('ipad') > 0 || ua.indexOf('ipod') > 0 || ua.indexOf("android") > 0) {
					
					$("#bst-wrap").css({'height': $(window).height()});
					$("#ec-nav").css({'overflowY': 'scroll'});
					
					contentHeight();
					
					if (!ecContentOver) $("#ec").css({'height': $(window).height() -($("#label-bg").height() + parseInt($("#ec-wrap").css("marginTop")))});
				
				} else {
				
					contentH = $("#content-wrap").height();
					var ecSmpMenuH = $("#ec-nav .line-inner").outerHeight();
					if (contentH < ecSmpMenuH) $("#ec-inner").css({'height': ecSmpMenuH});
				}
				
				/*open*/
				ecMenuOpenFlg = true;
				
				$("#ec-nav").addClass("open");
				$("#ec-nav").stop().animate({ right: 0},'fast');
			}

});

$("#ec-inner").bind('touchstart click', function(){
	if (ecMenuOpenFlg) {
		$('html,body').stop().animate({scrollTop:0}, 500, 'quart');
		$("#ec-nav").scrollTop(0);
		
		$("body").removeAttr("style");
		$("#bst-wrap").removeAttr("style");
		$("#ec").removeAttr("style");
		
		contentHeight();
		
		ecMenuOpenFlg = false;
				
		$("#ec-nav").removeClass("open");
		$("#ec-nav").stop().animate({ right: -270 +"px"},'fast',function(){
			$(this).removeAttr("style");
		});		
	}
	
});

$(window).bind({resize: function() {
			if($(window).width() > 1024) {
				
				if (ecMenuOpenFlg) {
					ecMenuOpenFlg = false;
					
					$("#ec-nav").removeClass("open");
					$("#ec-nav").stop().animate({ right: -270 +"px"},0);
					
					$("#bst-wrap").removeAttr("style");
				}
				
			}
			
		} 
	});


$(".btnlist-slidebox h2 a").click(function () {
	$(this).closest("div").toggleClass("close");
	$(this).closest("div").find(".btnlist").slideToggle('fast');
	
});




/* パンクズラベルのとこ
-----------------------------------------------*/
function pkzWidth() {
	var pkw = 0;
	$("#pankuzu").each(function(index){
		for(var i = 0; i < $(this).find("li").length-1; i++ ) {
			pkw += $(this).find("li").eq(i).width();
		}
	});
	return pkw;
}

$(window).bind('load resize', function() {
	if ($("#pankuzu").find("li").length > 1) {
		var cartWidth = $('#label-cart').outerWidth();
		var pkzLastW = $('#label-pkz').outerWidth()-pkzWidth();
		
		var woW = window.innerWidth ? window.innerWidth: $(window).width();
		if (navigator.userAgent.indexOf('Safari') != -1 && navigator.userAgent.indexOf('Chrome') == -1) woW = $(window).width();
	
		if (woW <= 1024) pkzLastW -= cartWidth;
		if(pkzLastW > 80) {
			$("#ec-wrap #pankuzu li:last-child").css({ width: pkzLastW, visibility: 'visible' });
		} else {
			$("#ec-wrap #pankuzu li:last-child").css({ visibility: 'hidden' });
		}
	}
});

/* コンテンツが短い時
----------------------------------------------*/
$(window).on({
		load: function() {
			//if($("#hubsynchUserPage").length == 0) contentHeight();
			contentHeight();
		},
		resize: function() {
			//if($("#hubsynchUserPage").length == 0) contentHeight();
			if(!ecMenuOpenFlg) contentHeight();
		}
	});

function contentHeight() {
	
	$("body").removeAttr("style");
	$("#ec-inner").removeAttr("style");
	
	if ($(window).height() < $("#bst-wrap").height()) {
		ecContentOver = true;
		$("body").css({'overflow': 'auto'});
		
		$("#ec-inner").css({'minHeight': 'auto'});
	} else {
		ecContentOver = false;
		var newH = Math.floor($("#footer").height() + $("#label-bg").height() + parseInt($("#ec-wrap").css("marginTop")));
		
		$("#ec-inner").css({'minHeight': $(window).height() -newH -$("#main_image").height()});
		//$("body").css({'overflow': 'hidden'});
		
	}
	
	/* slider none */
	var woW = window.innerWidth ? window.innerWidth: $(window).width();
	if (navigator.userAgent.indexOf('Safari') != -1 && navigator.userAgent.indexOf('Chrome') == -1) woW = $(window).width();
	if (woW < 568) {
		$("#slider").css({'display': 'none'});
	} else {
		$("#slider").css({'display': 'block'});
	}

};


/* ご利用ガイド
--------------------------------------------*/
$('#ec-kiyaku-wrap .guide-menu li a').click(function() {
	var href= $(this).attr("href");
	var target = $(href == "#" || href == "" ? 'html' : href);
	var scrTop = $("#header-bg").height();
	var position = (href == "#top") ? parseInt($("#ec-wrap").css("marginTop")) : target.offset().top -60;
	var scrSpeed = 1200;
	
	$('html,body').stop().animate({ scrollTop:position - scrTop }, scrSpeed, 'quart');
	
	return false;
});



/* 商品の AutoHeight
--------------------------------------------*/
function goodsFunc() {
	var ah = $("#ec-top-recommend, #ec-item-list").find(".img-box");
	
	ah.css({'min-height':0});
	ah.autoHeight({column:3, outer:true});
	
	ah.each(function() {
		var diff = $(this).find("span img").height() - $(this).height();
		if(diff < 0) $(this).find("span img").css({marginTop: Math.floor(Math.abs(diff/2)) + "px"});
	});
};

$(window).bind('load resize', function() {
	goodsFunc();
});









