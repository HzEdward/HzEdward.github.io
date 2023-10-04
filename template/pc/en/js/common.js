var tme={};
tme.init2=$(function(){

    var browser = (function(){
        var ua = window.navigator.userAgent.toLowerCase(), sys = null, s;
        if(s = ua.match(/rv:([\d.]+)\) like gecko/)){sys = {type:'ie',version:s[1]};}
        else if(s = ua.match(/msie ([\d.]+)/)){sys = {type:'ie',version:s[1]};}
        else if(s = ua.match(/firefox\/([\d.]+)/)){sys = {type:'firefox',version:s[1]};}
        else if(s = ua.match(/chrome\/([\d.]+)/)){sys = {type:'chrome',version:s[1]};}
        else if(s = ua.match(/opera.([\d.]+)/)){sys = {type:'opera',version:s[1]};}
        else if(s = ua.match(/version\/([\d.]+).*safari/)){sys = {type:'safari',version:s[1]};}
        else if(s = ua.match(/ucbrowser\/([\d.]+)/)){sys = {type:'uc',version:s[1]};}
        else if(s = ua.match(/micromessenger\/([\d.]+)/)){sys = {type:'wx',version:s[1]};}
        else{sys = {type:'unknown',version:'unknown'};}
        sys.isMobile = !!ua.match(/AppleWebKit.*Mobile.*!/) || !!ua.match(/(iPhone|iPod|Android|ios|iPad)/i);
        return sys;
    })();
    
    /*检测IE*/
    if(browser.type =="ie" && browser.version < 8){
        location.href="http://www.jltech.cn/upgradeBrowser/";
    }

    /*判断谷歌27*/
    if(browser.type == 'chrome' && browser.version <= 27){
        $('.font_scale8, .font_scale10').addClass('font_adjust');
    }

    
     tme.fnnav();
     tme.fnShowCode();

})


$(document).ready( tme.init2 );
tme.fnnav=function(){
    function fnnav(el){
      $(el).css({"opacity":"1","height":"auto"});
    }
    
    var init = $('.nav ul .nLi.on').index();
    $(".nav ul .nLi").hover(function(){
       if(!$(this).hasClass('on')){
          $(this).addClass('cur');
          $('.nav ul .nLi.on').removeClass('on');
        }
        $(this).find(".navSub").stop().slideDown(300,function(){
          fnnav(this);
          })

        },function(){
           $('.nav ul .nLi').eq(init).addClass('on');
           $(this).removeClass('cur');
           
          $(this).find(".navSub").stop().fadeOut(300,function(){
          fnnav(this); 
        })  
    });
    $(".nav ul .nLi .navSub").hover(function(){
        fnnav(this); 
    })

 
}

tme.fnShowCode=function(){
  $('.header .w1200 .hWx').hover(function(){
    $(this).find('.codeImg').stop().fadeIn(300);
  }, function(){
    $(this).find('.codeImg').stop().fadeOut(300);
  })
}


