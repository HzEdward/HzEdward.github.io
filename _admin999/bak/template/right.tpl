<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/adminstyle.css" rel="stylesheet">
<link href="../plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/font-awesome.min.css" rel="stylesheet">
<link href="../plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/animate.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/style.min.css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<!--[if lte IE 9]>
<script src="../js/respond.min.js"></script>
<script src="../js/html5.js"></script>
<![endif]-->
</head>

<body class="gray-bg">
  <?php
  if(get_cookie('adminpath')=='1'){
     echo '<div class="panel panel-warning">
          <div class="panel-heading"><i class="fa fa-warning"></i> 安全提醒 <button onclick="openonoff(\'save.php?act=cookie&type=path\')" class="close" >×</button></div>
            <div class="panel-body">
              <p>不建议后台管理目录使用admin！</p>
              <a onclick="layer.prompt({title: \'请输入新目录名称，如newadmin\'},function(path, index){$.post(\'save.php?act=upadmin\',{\'path\':path},function(data){if(data==true){parent.location=\'../\'+path}else{parent.layer.alert(data)}})});" class="label label-primary ">立即修改</a>
              </p>
           </div>
         </div>';
    }
 if(get_cookie('adminpass')=='1'){
   echo '<div class="panel panel-danger">
          <div class="panel-heading"><i class="fa fa-warning"></i> 安全提醒 <button onclick="openonoff(\'save.php?act=cookie&type=pass\')"  class="close" >×</button></div>
          <div class="panel-body">
            <p>管理密码过于简单，请及时修改！</p>
            <p> <a onclick="opennew(\'?act=admin&uid='.get_session("adminid").'\')"  class="label label-primary">立即修改</a></p>
          </div>
        </div>';
    }
    if(check_dir('../install/')){
      echo '<div class="panel panel-danger">
      <div class="panel-heading"><i class="fa fa-warning"></i> 安全提醒 </div>
      <div class="panel-body">
        <p>您的安装目录(install目录)没有删除</p>
        <a onclick="layer.confirm(\'确认删除安装目录吗？\',{icon: 3},function(index){$.post(\'save.php?act=delfile\',{type:\'install\'},function(){location.reload()})});" class="label label-primary ">立即删除</a>
      </div>
    </div>';
    }
  ?>
<div class="wrapper">
  <div class="row">
      <div style="background: #fff;padding:50px;margin:0 auto;width:1000px;text-algin:center;border-radius: 5px;box-shadow: 2px 1px 3px #ccc;position: absolute;left:0;right:0;top:35%;">
        <h1>欢迎进入网站管理系统</h1>
        <h3 style="font:18px/45px normal;color:#bbb;padding-top: 10px"><i class="fa fa-comments"></i> 你好，{$get_cookie 'adminname'}，当前登录系统时间为{php echo date("Y/m/d H:i:s")}！</h3>
      </div>
  </div>
</div>
</body>
<script src="../plugins/bootstrap/bootstrap.min.js"></script>
<script src="../plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="../plugins/switchery/switchery.js"></script>
<link href="../plugins/switchery/switcherybig.css" rel="stylesheet">
<script src="../plugins/layer/layer.min.js"></script>
<script src="js/adminjs.js"></script>
</html>