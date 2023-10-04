<!doctype html public "-//w3c//dtd html 4.01 transitional//en" "http://www.w3c.org/tr/1999/rec-html401-19991224/loose.dtd">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{ways}用户</title>
<link href="../plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/font-awesome.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/animate.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/style.min.css" rel="stylesheet">
<link href="css/adminstyle.css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="../plugins/imageselect/imageselect.js"></script>
<link  rel="stylesheet" type="text/css" href="../plugins/imageselect/imageselect.css"/>
<!--[if lte ie 9]>
<script src="../js/respond.min.js"></script>
<script src="../js/html5.js"></script>
<![endif]-->
<style>
.form-horizontal .control-label2 {
    padding-top: 0px;
    margin-bottom: 0;
    text-align: right;
}
</style>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">
  <div class="ibox float-e-margins">
    <div class="row">
    <form method="post" class="form-horizontal" id="contentform">
      <input type="hidden" name="uid" value="[r:uid]">
      <input type="hidden" name="u_gid" value="4">
      <input type="hidden" name="face" value="noface.png">
      <input type="hidden" name="type" value="user">
      <div class="col-sm-12">
        <div class="ibox float-e-margins">
          <div class="ibox-content">

            <div class="form-group">
              <label class="col-sm-2 control-label">登陆账号</label>
              <div class="col-sm-4">
                <input type="text" name="username" data-required="*" id="username" value="[r:username]" class="form-control" placeholder="请输入教师工号">
              </div>
              <label class="col-sm-2 control-label">真实姓名</label>
              <div class="col-sm-4">
                <input type="text" value="[r:truename]" name="truename" id="truename" class="form-control" placeholder="请输入教师姓名">
              </div>
            </div> 

            <div class="form-group">
              <label class="col-sm-2 control-label">登陆密码</label>
              <div class="col-sm-4">
                <input type="text" value="" name="password" id="password" class="form-control" placeholder="请输入密码"  >
              </div>
              <label class="col-sm-2 control-label">用户手机</label>
              <div class="col-sm-4">
                <input type="text" value="[r:mobile]" name="mobile" id="mobile" class="form-control" placeholder="请输入手机号" >
              </div>

            
               
             </div>  
          

              
            {if $r['uid']>0}
            <div class="form-group">
              <label class="col-sm-2 control-label2">注册时间</label>
              <div class="col-sm-4">
                <p class="form-control-static">[r:regtime] </p>
              </div>
              <label class="col-sm-2 control-label2">登录时间</label>
              <div class="col-sm-4">
                <p class="form-control-static">[r:lastlogintime]</p>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label2">最后登录ip</label>
              <div class="col-sm-4">
                <p class="form-control-static">[r:lastloginip] </p>
              </div>
              <label class="col-sm-2 control-label2">登录次数</label>
              <div class="col-sm-4">
                <p class="form-control-static">[r:logincount] </p>
              </div>
            </div>           
          </div>
        {/if}
 

      </div>
        <div class="col-sm-12 m-t">
          <div class=" col-sm-10 col-md-offset-1">
          <button class="btn btn-primary" onclick="submitform('user','[r:uid]','contentform')" type="button" id="submit" title="快捷键：ctrl+enter"><i class="fa fa-floppy-o"></i>　保存内容</button>
          <button class="btn btn-white" onClick="closelayer()" type="reset"><i class="fa fa-close"></i> 返回</button>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- end panel other -->
</div>
<script src="../plugins/bootstrap/bootstrap.min.js"></script>
<link href="../plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
<script src="../plugins/switchery/switchery.js"></script>
<link href="../plugins/switchery/switchery.css" rel="stylesheet">
<script src="../plugins/layer/layer.min.js"></script> 
<script src="js/content.min.js"></script> 
<script src="js/adminjs.js"></script>
<script src="../js/zzzcms.js"></script>
<script>
$(function(){
  $('select[name=face]').ImageSelect({dropdownHeight:200, dropdownWidth:100, height:32});
  $("#username").focus();	
});
</script>
</body>
</html>