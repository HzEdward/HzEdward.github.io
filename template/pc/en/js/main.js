$('#ser_btn').click(function(){
            var tt= jQuery("#keyword").val();
            if(tt==''){alert('请输入关键词进行搜索！');return false;}
           })
// nav
$(function(){
  topMenu(".drop-menu-effect");
});
function topMenu(_this){
  $(_this).each(function(){
    var $this = $(this);
    var theMenu = $this.find(".submenu");
    $this.hover(
      function(){
        //$("#head").addClass("white").removeClass("transparent");
        $(".nav_mask").addClass("maskb");
        //$("body").addClass("bodyfixed");
        theMenu.stop().slideDown('fast');
        $this.addClass("hoverNav");
      },
      function(){
      // $("#head").addClass("transparent").removeClass("white");
       $(".nav_mask").removeClass("maskb");
       //$("body").removeClass("bodyfixed");
        theMenu.stop().slideUp('fast');
        $this.removeClass("hoverNav");
      }
    );
  });
}
function AutoScroll(obj){ 
$(obj).find("ul:first").animate({ 
marginTop:"-25px" 
},500,function(){ 
$(this).css({marginTop:"0px"}).find("li:first").appendTo(this); 
}); 
} 
$(document).ready(function(){ 
setInterval('AutoScroll("#scrollDiv")',4000) 
}); 
$("img.lazy").lazyload({placeholder : "loading.gif",effect: "fadeIn"});
// 锚点
$("#mess").click(function(){ $("html,body").animate({scrollTop: $("#messbox").offset().top},500);});
$('body').append("<div class='totop'></div>");
$(window).scroll(function(){
var h=$(this).scrollTop();
if(h>1200){
  $('.totop').fadeIn();
}else{$('.totop').fadeOut();}
});
$(".totop").click(function () {
$('body,html').animate({ scrollTop: 0 }, 300);
return false;
});
$('#pagego').click(function(){
  tid = $('#head').attr('data-tid');
  page = $(this).prev('input').val();
  if (page=="") {
    alert("请输入要跳转的页码！")
  }
  else{
  url = "index.php?c=article&a=type&tid="+tid+"&page="+page;
  window.location.href= url;
  return false;
    }
});

$(function() {
var a1 = document.URL;
var a2 = $('.kindcur a');
for (var i = 0; i < a2.length; i++) {
if (a1.indexOf($(a2[i]).attr('href')) != -1) {
$(a2[i]).addClass('cur');
return;}
}
//$(a2[0]).addClass('cur');
})
