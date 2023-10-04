<!doctype html public "-//w3c//dtd html 4.01 transitional//en" "http://www.w3c.org/tr/1999/rec-html401-19991224/loose.dtd">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{ways}会员</title>
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
      <input type="hidden" name="type" value="user">
      <div class="col-sm-12">
        <div class="ibox float-e-margins">
          <div class="ibox-content">
            <div class="form-group">
              <label class="col-sm-1 control-label2 text-danger">会员<br/>分组</label>
              <div class="col-sm-5">
                <select name='u_gid' id='u_gid' class="form-control" >{$select_group [r u_gid],0}</select>
              </div>
              <label class="col-sm-1 control-label2">会员<br/>头像</label>
              <div class="col-sm-3"> 
              <div class="input-group">
                <input name="face"  id='face' class="form-control" value="[r:face]">
                <span class="input-group-btn">
                <button type="button" class="btn btn-primary btn-upload" onclick="open_upload('image','1','user','face')"><i class="fa fa-upload"></i> 上传</button>
                 </span>
              </div> </div>
               <div class="col-sm-1"><img src="[r:face]" height="30" id="img_face"></div>
            </div>
            <div class="form-group">
              <label class="col-sm-1 control-label2 text-danger">登陆<br/>账号</label>
              <div class="col-sm-5">
                <input type="text" name="username" data-required="*" id="username" value="[r:username]" class="form-control" placeholder="zhangsan">
              </div>
              <label class="col-sm-1 control-label2 text-danger">用户<br/>手机</label>
              <div class="col-sm-5">
                <input type="text" value="[r:mobile]" name="mobile" id="mobile" class="form-control">
              </div>
            </div> 
            <div class="form-group">
            <label class="col-sm-1 control-label2">修改<br/>密码</label>
              <div class="col-sm-5">
                <input type="text" value="" name="password" id="password" class="form-control" placeholder="不修改密码请留空"  >
              </div>
               <label class="col-sm-1 control-label2">确认<br/>密码</label>
              <div class="col-sm-5">
                <input type="text" value="" name="repassword" id="repassword" class="form-control" placeholder="不修改密码请留空"  >
              </div>
             </div>    

              <div class="form-group">
              <label class="col-sm-1 control-label2 text-danger">真实<br/>姓名</label>
              <div class="col-sm-5">
                <input type="text" value="[r:truename]" name="truename" id="truename" class="form-control" placeholder="张三">
              </div>
              <label class="col-sm-1 control-label">性别</label>
              <div class="col-sm-5">
                <input type="text" value="[r:sex]" name="sex" id="question" class="form-control">
              </div>
              </div>
              <div class="form-group">
              <label class="col-sm-1 control-label2">密码<br/>问题</label>
              <div class="col-sm-5">
                <input type="text" value="[r:question]" name="question" id="question" class="form-control">
              </div>
              <label class="col-sm-1 control-label2">密码<br/>答案</label>
              <div class="col-sm-5">
                <input type="text" value="[r:answer]" name="answer" id="answer" class="form-control">
              </div>
            </div>        
            <div class="form-group">
            
              <label class="col-sm-1 control-label2">密码<br/>答案</label>
              <div class="col-sm-5">
                <input type="text" value="[r:answer]" name="answer" id="answer" class="form-control">
              </div>
            </div>              
            <div class="form-group">
              <label class="col-sm-1 control-label">区号</label>
              <div class="col-sm-5">
                <input type="text" value="{$arr_split [r tel],'-',0}" name="telcode" id="telcode" class="form-control">
              </div>
               <label class="col-sm-1 control-label">电话号</label>
              <div class="col-sm-5">
                <input type="text" value="{$arr_split [r tel],'-',1}" name="tel" id="tel" class="form-control">
              </div>
              </div>
            <div class="form-group">
              <label class="col-sm-1 control-label">邮箱</label>
              <div class="col-sm-5">
                <input type="text" value="[r:email]" name="email" id="email" class="form-control">
              </div>
              <label class="col-sm-1 control-label">qq</label>
              <div class="col-sm-5">
                <input type="text" value="[r:qq]" name="qq" id="qq" class="form-control">
              </div>
            </div>
             <div class="form-group">
              <label class="col-sm-1 control-label">省市区</label>
              <div class="col-sm-5">
   				 <select name='province' id='Province' class="form-control" onChange="get_province()">{$select_region 'p',[r province]}</select>
              </div>
              <div class="col-sm-3">
               <select name='city' id='City' class="form-control" onChange="get_city()">{$select_region 'c,'.[r province],[r city]}</select>
              </div>
              <div class="col-sm-3">
                <select name='district' id='District' class="form-control" >{$select_region 'd,'.[r city],[r district]}</select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-1 control-label">地址</label>
              <div class="col-sm-5">
                <input type="text" value="[r:address]" name="address" id="address" class="form-control">
              </div>
              <label class="col-sm-1 control-label">邮编</label>
              <div class="col-sm-5">
                <input type="text" value="[r:post]" name="post" id="zipcode" class="form-control">
              </div>
            </div>
            {$get_custom 'user',[r uid]}
             <div class="form-group">
              <label class="col-sm-1 control-label">会员简介
                </label>
              <div class="col-sm-10">
                <textarea id="u_desc" name="u_desc" class="form-control">{$br_txt [r u_desc]}</textarea>
              </div>
            </div>
            {if $r['uid']>0}
            <div class="form-group">
              <label class="col-sm-1 control-label2">注册<br/>时间</label>
              <div class="col-sm-5">
                <p class="form-control-static">[r:regtime] </p>
              </div>
              <label class="col-sm-1 control-label2">登录<br/>时间</label>
              <div class="col-sm-5">
                <p class="form-control-static">[r:lastlogintime]</p>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-1 control-label2">最后<br/>登录ip</label>
              <div class="col-sm-5">
                <p class="form-control-static">[r:lastloginip] </p>
              </div>
              <label class="col-sm-1 control-label2">登录<br/>次数</label>
              <div class="col-sm-5">
                <p class="form-control-static">[r:logincount] </p>
              </div>
            </div>           
          </div>
        {/if}
 
        <div class="ibox-content  m-t">
          <div class="form-group">
            <label class="col-sm-1 control-label text-danger">积分</label>
            <div class="col-sm-5">
              <input type="text" value="[r:points]" name="points" id="points" class="form-control" placeholder="">
            </div>
	      <label class="col-sm-1 control-label text-danger">余额</label>
            <div class="col-sm-5">
              <input type="text" value="[r:balance]" name="balance" id="balance" class="form-control" placeholder="">
            </div>
          </div>
        </div>
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