<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>网站管理CMS</title>
<meta http-equiv="cache-control" content="no-siteapp" />
<meta http-equiv="x-ua-compatible" content="ie=edge,chrome=1"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=0.9, user-scalable=no" />
<meta content=always name=referrer>
<link href="../plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/font-awesome.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/animate.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/style.min.css" rel="stylesheet">
<link href="css/adminstyle.css" rel="stylesheet">
<!--[if lte ie 9]>
<script src="../js/respond.min.js"></script>
<script src="../js/html5.js"></script>
<![endif]-->
<style type="text/css">
@media screen and (max-width: 768px) {
  .dropdown .dropdown-toggle{}
  .nav .dropdown{min-width: 70px;}
  .navbar-nav{min-width: 500px; }
}

</style>
<script src="../js/jquery.min.js"></script>
<script src="../plugins/layer/layer.min.js"></script>
</head>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper"> 
  <!--左侧导航开始-->
  <nav class="navbar-default navbar-static-side" role="navigation">
    <div class="nav-close"><i class="fa fa-times-circle"></i> </div>
    <div class="sidebar-collapse">
      <ul class="nav" id="side-menu">
        <li class="nav-header">
          <div class="dropdown profile-element"> <span><a href=""><img alt="image" src="images/logo.png" /></a></span> <span class="face"><img alt="image" class="img-circle" id="adminface" src="{php echo get_cookie("adminface")}" /></span> <span class="clear"> <span class="block m-t-xs"><strong class="font-bold">{php echo get_cookie("adminname")}</strong></span> <span class="text-muted text-xs block">{php echo (get_session("admingroup"))}</span> </span> 
            <ul class="dropdown-menu animated fadeIn m-t-xs">
              <li><a class="J_menuItem" onclick="opennew('?act=admin&uid={php echo get_session("adminid")}')">修改资料</a> </li>
              <li class="divider"></li>
              <li><a href="?act=loginesc">离开一会</a> </li>
              <li><a href="?act=loginout">安全退出</a> </li>
            </ul>
          </div>
          <div class="logo-element"><img src='../images/3z32.png'></div>
        </li>
        {php leftmenu()}
      </ul>
    </div>
  </nav>
  <!--左侧导航结束--> 
  <!--右侧部分开始-->
  <style>
/* 侧边栏开关 */
.lyear-aside-toggler {
    margin-right: .25rem;
    padding: .25rem .95rem .25rem .25rem;
    line-height: 1.5;
    cursor: pointer;
}
.lyear-aside-toggler .lyear-toggler-bar {
    display: block;
    height: 2px;
    width: 20px;
  background-color: #cee7fa;
    margin: 4px 0px;
    -webkit-transition: 0.3s;
    transition: 0.3s;
}
.lyear-aside-toggler .lyear-toggler-bar:nth-child(2) {
    width: 15px;
}
.lyear-aside-toggler:hover .lyear-toggler-bar:nth-child(2) {
    width: 20px;
}
.lyear-layout-sidebar-close .lyear-aside-toggler .lyear-toggler-bar {
    width: 20px;
}
</style>
  <div id="page-wrapper" class="gray-bg dashbard-1"> 
    <div class="row border-bottom" id="navbar" {if get_session('admingid') > 2 } style="display: none;"{end if}>     
      <nav class="navbar-static-top" role="navigation">  
       <a class="navbar-minimalize minimalize-styl-2" href="#">
          <div class="lyear-aside-toggler" style="padding-top:12px;">
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
            </div>
       </a>
      
         <div class="navbar-collapse" id="navigation">
        <ul class="nav navbar-nav">          
         {php topmenu()}
        </ul>
        <ul class="nav navbar-top-links navbar-right">
                
          <li class="hidden-xs"><a onclick="delcache()" title="清理缓存" id="hourglass"><i class="fa fa-hourglass"></i>  </a>   </li>
	         
           <li class="hidden-xs"> <a href="../" target="_blank" title="预览首页" data-index="0"><i class="fa fa-institution"></i> </a> </li>

          </li>
        </ul> </div>
      </nav>
    </div>
    <div class="row content-tabs">
      <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i> </button>
      <nav class="page-tabs J_menuTabs">
        <div class="page-tabs-content"> <a href="javascript:;" class="active J_menuTab" data-id="?act=right">后台首页</a> </div>
      </nav>
      <button class="roll-nav roll-right J_tabRight "><i class="fa fa-forward"></i> </button>
      <div class="btn-group roll-nav roll-right">
        <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span> </button>
        <ul role="menu" class="dropdown-menu dropdown-menu-right">
          <li class="J_tabShowActive"><a>定位当前选项卡</a> </li>
          <li class="divider"></li>
          <li class="J_tabClosethis"><a>关闭当前选项卡</a> </li>
          <li class="J_tabCloseAll"><a>关闭全部选项卡</a> </li>
          <li class="J_tabCloseOther"><a>关闭其他选项卡</a> </li>
        </ul>
      </div>     
  	  <!-- <a href="?act=loginesc" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>     -->
    </div>
    <div class="J_mainContent row" id="content-main">
      <iframe class="J_iframe" name="iframe0"  id="main" width="100%" height="100%" style="min-height:600px;"  frameborder="0" src="{$ADMIN_PATH}?act=right"  data-id="?act=right"  seamless></iframe>
    </div>
  </div>
  <!--右侧部分结束--> 
  <!--右侧边栏开始-->
</div>
<script src="../plugins/bootstrap/bootstrap.min.js"></script> 
<script src="../plugins/metismenu/jquery.metismenu.js"></script> 
<script src="../plugins/slimscroll/jquery.slimscroll.min.js"></script> 
<script src="../plugins/bootstrap/hplus.min.js"></script> 
<script src="../plugins/bootstrap/contabs.min.js"></script> 
<script src="../plugins/pace/pace.min.js"></script> 
<script src="../js/zzzcms.js"></script>
<script src="js/content.min.js"></script>
<script src="js/adminjs.js"></script>

<script type="text/javascript">
$(function(){     
  $("#title").focus(); 
})
</script>
</body>
</html>