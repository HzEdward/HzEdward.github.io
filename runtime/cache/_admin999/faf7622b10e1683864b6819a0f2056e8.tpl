<!doctype html public "-//w3c//dtd html 4.01 transitional//en" "http://www.w3c.org/tr/1999/rec-html401-19991224/loose.dtd">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>系统设置</title>

<link href="../plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/font-awesome.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/animate.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/style.min.css" rel="stylesheet">
<link href="css/adminstyle.css" rel="stylesheet">
<link href="../plugins/icheck/icheck.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../plugins/webuploader/css/webuploader.css" />
<link rel="stylesheet" type="text/css" href="../plugins/webuploader/css/style.css" />
<link href="../plugins/chosen/chosen.css" rel="stylesheet" >
<script src="../js/jquery.min.js"></script>
<!--[if lte ie 9]>
<script src="../js/respond.min.js"></script>
<script src="../js/html5.js"></script>
<![endif]-->
<script src="../plugins/webuploader/js/webconfig.php"></script>
<script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="../plugins/jedate/jedate.js"></script>
<link type="text/css" rel="stylesheet" href="../plugins/jedate/jedate.css">
<script src="../plugins/ueditor/ueditor.config.js"></script>
<script src="../plugins/ueditor/ueditor.all.min.js"></script>
</head>
<body class="gray-bg">

<div class="wrapper wrapper-content">
  <div class="row">
    <form method="post" action="save.php?act=savesystem" class="form-horizontal">
      <div class="col-sm-12">
        <div class="tabs-container">
          <ul class="nav nav-tabs">
            <li class="tab1 active"><a data-toggle="tab" href="#tab-1" ><i class="fa fa-laptop"></i> 系统设置</a> </li>
            <!-- <li class="tab2"><a data-toggle="tab" href="#tab-2"><i class="fa fa-user"></i> 会员设置</a> </li>
            <li class="tab8"><a data-toggle="tab" href="#tab-8"><i class="fa fa-commenting"></i> 留言设置</a> </li>
            <li class="tab3"><a data-toggle="tab" href="#tab-3"><i class="fa fa-mobile"></i> 手机设置</a> </li>
            <li class="tab5"><a data-toggle="tab" href="#tab-5"><i class="fa fa-envelope"></i> 邮件设置</a> </li> -->
            <li class="tab7"><a data-toggle="tab" href="#tab-7"><i class="fa fa-comments"></i> 短信设置</a> </li>
            <li class="tab6"><a data-toggle="tab" href="#tab-6"><i class="fa fa-database"></i> 数据库设置</a> </li>
            <li class="tab6"><a data-toggle="tab" href="#tab-9"><i class="fa fa-key"></i> 安全设置</a> </li>
          </ul>
          <div class="tab-content">
            <div id="tab-1" class="tab-pane active">
              <div class="panel-body">
                <div class="form-group">
                  <div class="alert alert-info col-sm-10 col-md-offset-1"> 系统关闭后显示提示文字。 </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">系统状态</label>
                  <div class="col-sm-2" id="webmode">
                    <input type="checkbox"  name="webmode"  value="1" class="js-switch" <?php echo check_onoff(conf('webmode'),'checked');?>>
                    <span class="help-block m-b-none"><?php echo check_onoff(conf('webmode'),'ch');?></span> </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 可以直接关闭</span> </div>
                <div class="form-group hide-<?php echo conf('webmode');?>" id="showcloseinfo">
                  <label class="col-sm-2 control-label">关闭后说明</label>
                  <div class="col-sm-4">
                    <input type="text" value="<?php echo conf('closeinfo');?>" name="closeinfo" id="closeinfo" class="form-control">
                  </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 关闭后提示文字</span> </div>
                

                <div class="form-group">
                  <label class="col-sm-2 control-label">直接删除</label>
                  <div class="col-sm-2">
                    <input type="checkbox"  name="isdel"  value="1" class="js-switch" <?php echo check_onoff(conf('isdel'),'checked');?>>
                    <span class="help-block m-b-none"><?php echo check_onoff(conf('isdel'),'ch');?></span> </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 数据是否直接删除不进入回收站</span> </div>
                 <div class="form-group">
                  <label class="col-sm-2 control-label">调试模式</label>
                  <div class="col-sm-2">
                    <input type="checkbox"  name="bugmark"  value="1" class="js-switch" <?php echo check_onoff(conf('bugmark'),'checked');?>>
                    <span class="help-block m-b-none"><?php echo check_onoff(conf('bugmark'),'ch');?></span> </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 开启后将显示系统报错，建议上线后关闭</span> </div> 
                  <div class="form-group">
                  <label class="col-sm-2 control-label">执行时间</label>
                  <div class="col-sm-2">
                    <input type="checkbox"  name="showtime"  value="1" class="js-switch" <?php echo check_onoff(conf('showtime'),'checked');?>>
                    <span class="help-block m-b-none"><?php echo check_onoff(conf('showtime'),'ch');?></span> </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 开启后将显示页面执行时间，直接显示再页面最下面</span> </div> 
            
              <div class="form-group">
                  <label class="col-sm-2 control-label">后台验证码</label>
                  <div class="col-sm-2">
                    <input type="checkbox"  name="iscode"  value="1" class="js-switch" <?php echo check_onoff(conf('iscode'),'checked');?>>
                    <span class="help-block m-b-none"><?php echo check_onoff(conf('iscode'),'ch');?></span> </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 后台登陆是否开启验证码</span> </div>
                  </div>
            </div>

            <div id="tab-8" class="tab-pane">
              <div class="panel-body">
                <div class="form-group">
                  <div class="alert alert-info col-sm-10 col-md-offset-1"> 留言功能除基础参数外，还支持自定义参数</div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">留言开关</label>
                  <div class="col-sm-2" id="gbookmark" >
                    <input type="checkbox"  name="gbookmark" value="1" class="js-switch" <?php echo check_onoff($conf['gbookmark'],"checked");?>>
                    <span class="help-block m-b-none"><?php echo check_onoff($conf['gbookmark'],'ch');?></span> </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 关闭后，将不能留言</span> </div>
                <div class="show-<?php echo conf('gbookmark');?>" id="showgbook">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">审核开关</label>
                    <div class="col-sm-2">
                      <input type="checkbox"  name="gbookonoff" id="gbookonoff" value="1" class="js-switch" <?php echo check_onoff($conf['gbookonoff'],"checked");?>>
                      <span class="help-block m-b-none"><?php echo check_onoff($conf['gbookonoff'],'ch');?></span> </div>
                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 关闭后，留言将需要审核</span> </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">开启验证码</label>
                    <div class="col-sm-2">
                      <input type="checkbox"  name="gbookcode" id="gbookcode" value="1" class="js-switch" <?php echo check_onoff($conf['gbookcode'],"checked");?>>
                      <span class="help-block m-b-none"><?php echo check_onoff($conf['gbookcode'],'ch');?></span> </div>
                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 关闭后，留言不验证验证码</span> </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">是否会员留言</label>
                    <div class="col-sm-2">
                      <input type="checkbox"  name="gbookuser" id="gbookuser" value="1" class="js-switch" <?php echo check_onoff($conf['gbookuser'],"checked");?>>
                      <span class="help-block m-b-none"><?php echo check_onoff($conf['gbookuser'],'ch');?></span> </div>
                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 开启后必须会员登录方可留言</span></div>
                  <?php
                    $gbook=array('姓名'=>'name','标题'=>'title','电话'=>'tel','邮箱'=>'mail','内容'=>'content');
                    foreach ($gbook as $key=>$value){
                    echo '
                    <div class="form-group">
                      <label class="col-sm-2 control-label">'.$key.'</label>
                      <div class="col-sm-2">
                        <input name="gbook'.$value.'" type="text"  class="form-control" value="'.conf('gbook'.$value).'">
                      </div>
                      <label class="col-sm-1 control-label">开关</label>
                      <div class="col-sm-1">
                       <input type="checkbox"  name="gbook'.$value.'_onoff" value="1" class="js-switch" '.check_onoff(conf('gbook'.$value.'_onoff'),"checked").'>
                      </div>
                      <label class="col-sm-1 control-label">验证</label>
                      <div class="col-sm-1">
                     <select name="gbook'.$value.'_test" class="form-control">'.select_test(conf('gbook'.$value.'_test')).'</select>
                      </div> 
                    </div>
                     ';
                     }
                     ?>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">匿名留言次数</label>
                    <div class="col-sm-2">
                      <input name="gbookanonymousnum" type="number"  class="form-control" max="9" min="1" value="<?php echo conf('gbookanonymousnum');?>">
                    </div>
                    <label class="col-sm-2 control-label">会员留言次数</label>
                    <div class="col-sm-2">
                      <input type="number" value="<?php echo conf('gbookusernum');?>"  name="gbookusernum" max="9" min="1" class="form-control">
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div id="tab-5" class="tab-pane">
              <div class="panel-body">
                <div class="form-group">
                  <div class="alert alert-info col-sm-10 col-md-offset-1"> 邮件提醒功能，需要使用您的邮箱作为发件方。 注意：大多数服务器都禁用了25端口，发送失败请尝试ssl协议并使用465端口。 </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">邮件开关</label>
                  <div class="col-sm-2" id="mailmark" >
                    <input type="checkbox"  name="mailmark" value="1" class="js-switch" <?php echo check_onoff($conf['mailmark'],"checked");?>>
                    <span class="help-block m-b-none"> <?php echo check_onoff($conf['mailmark'],'ch');?></span> </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 关闭后将不能发送提醒邮件。 </span> </div>
                <div class="show-<?php echo conf('mailmark');?>" id="showmail">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">发件服务器</label>
                    <div class="col-sm-4">
                      <input type="text" value="<?php echo conf('smtp_server');?>" name="smtp_server" id="smtp_server" class="form-control">
                      <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 参照：smtp.qiye.163.com，建议使用企业邮箱</span> </div>
                    <label class="col-sm-1 control-label">协议</label>
                    <div class="col-sm-1" id="mailmark" >
                      <select   name="smtp_ssl" id="smtp_ssl"  class="form-control">
                        <option value="">标准</option>
                        <option value="ssl" <?php echo check_on($conf['smtp_ssl'],'ssl','selected');?>>SSL</option>
                      </select>
                    </div>
                    <label class="col-sm-1 control-label">端口</label>
                    <div class="col-sm-2" id="mailmark" >
                      <input type="text"  name="smtp_port" id="smtp_port" value="<?php echo conf('smtp_port');?>" class="form-control">
                      <span class="help-block m-b-none"> 标准：25，SSL：465</span> </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">发件人地址</label>
                    <div class="col-sm-4">
                      <input type="text" value="<?php echo conf('smtp_mail');?>" name="smtp_mail" id="smtp_mail" class="form-control">
                      <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 参照：kefu@zzzcms.com</span> </div>
                    <label class="col-sm-1 control-label">昵称</label>
                    <div class="col-sm-4">
                      <input type="text" value="<?php echo conf('smtp_name');?>" name="smtp_name" id="smtp_name" class="form-control">
                      <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 参照：kefu@zzzcms.com</span> </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">账号</label>
                    <div class="col-sm-4">
                      <input type="text" value="<?php echo conf('smtp_user');?>" name="smtp_user" id="smtp_user" class="form-control">
                      <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 参照：kefu@zzzcms.com，企业邮箱写全账号</span> </div>
                    <label class="col-sm-1 control-label">密码</label>
                    <div class="col-sm-4">
                      <input type="text" value="<?php echo conf('smtp_pass');?>" name="smtp_pass" id="smtp_pass" class="form-control">
                      <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 参照：123456</span> </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">收件邮箱地址</label>
                    <div class="col-sm-9">
                      <input type="text" value="<?php echo conf('receive_email');?>" name="receive_email" id="receive_email" class="form-control">
                      <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 参照：kefu@zzzcms.com,365661@qq.com，支持多个邮箱逗号分隔</span> </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">留言提醒</label>
                    <div class="col-sm-1" >
                      <input type="checkbox"  name="gbooksendmail" value="1" class="js-switch" <?php echo check_onoff($conf['gbooksendmail'],"checked");?>>
                      <span class="help-block m-b-none"><?php echo check_onoff($conf['gbooksendmail'],'ch');?></span> </div>
                    <label class="col-sm-1 control-label">注入提醒</label>
                    <div class="col-sm-1" >
                      <input type="checkbox"  name="evalsendmail" value="1" class="js-switch" <?php echo check_onoff($conf['evalsendmail'],"checked");?>>
                      <span class="help-block m-b-none"> <?php echo check_onoff($conf['evalsendmail'],'ch');?></span> </div>
                    <label class="col-sm-1 control-label">注册提醒</label>
                    <div class="col-sm-1" >
                      <input type="checkbox"  name="regsendmail" value="1" class="js-switch" <?php echo check_onoff($conf['regsendmail'],"checked");?>>
                      <span class="help-block m-b-none"> <?php echo check_onoff($conf['regsendmail'],'ch');?></span> </div>
                    <label class="col-sm-1 control-label">登陆提醒</label>
                    <div class="col-sm-1" >
                      <input type="checkbox"  name="loginsendmail" value="1" class="js-switch" <?php echo check_onoff($conf['loginsendmail'],"checked");?>>
                      <span class="help-block m-b-none"> <?php echo check_onoff($conf['loginsendmail'],'ch');?></span> </div>
                    <label class="col-sm-1 control-label">忘记密码</label>
                    <div class="col-sm-1" >
                      <input type="checkbox"  name="forgetsendmail" value="1" class="js-switch" <?php echo check_onoff($conf['forgetsendmail'],"checked");?>>
                      <span class="help-block m-b-none"> <?php echo check_onoff($conf['forgetsendmail'],'ch');?></span> </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">测试邮箱配置</label>
                  <div class="col-sm-2" >
                    <button type="button" class="btn btn-info" onclick="tryemail()"><i class="fa fa-envelope"></i>　发送测试邮件</button>                  
                  </div>
                </div>
              </div>
            </div>
            <div id="tab-7" class="tab-pane">
              <div class="panel-body">
                <div class="form-group">
                  <label class="col-sm-2 control-label">短信开关</label>
                  <div class="col-sm-1" id="smsmark" >
                    <input type="checkbox"  name="smsmark" value="1" class="js-switch" <?php echo check_onoff($conf['smsmark'],"checked");?>>
                    <span class="help-block m-b-none"> <?php echo check_onoff($conf['smsmark'],'ch');?></span> </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 开启后，内网通知、部门审核等采用短信提醒</span> </div>
                <div class="show-<?php echo conf('smsmark');?>" id="showsms">
                 <div class="form-group">
                    <label class="col-sm-2 control-label">短信接口</label>
                    <div class="col-sm-4">
                      <select  class="form-control" name="smsserver">
                        <option value="1"  <?php echo check_onoff($conf['smsserver'],"selected",'',1);?>>校内短信通</option>
                      </select>
                    </div>
                    </div>

                  <div class="form-group">
                    <label class="col-sm-2 control-label">AccessKey ID</label>
                    <div class="col-sm-4">
                      <input type="text" value="<?php echo conf('smsid');?>" name="smsid" id="smsid" class="form-control">
                    </div>
                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 秘钥ID</span> </div>

                  <div class="form-group">
                    <label class="col-sm-2 control-label">AccessKey Secret</label>
                    <div class="col-sm-4">
                      <input type="password" value="<?php echo conf('smspw');?>" name="smspw" id="smspw" class="form-control">
                    </div>
                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 秘钥</span> </div>


                  <div class="form-group">
                    <label class="col-sm-2 control-label">测试短信配置</label>
                    <div class="col-sm-2" >
                      <input type="text" id="testphone" name="testphone" placeholder="手机号"  class="form-control">
                    </div>
                    <div class="col-sm-4">
                      <button type="button" class="btn btn-info" id="trysms"><i class="fa fa-commenting"></i>　发送测试短信</button>
                    </div>
                  </div>

                </div>
              </div>
              <script>
					 $("#trysms").click(function(){
						 var mobile=$("#testphone").val();	
						 var myreg = /^(((1[3-8]{1}[0-9]{1}))+\d{8})$/; 
 						 if(myreg.test(mobile)){ 	 
						  $.post('../plugins/sms/sms.php?act=trysms',{'mobile':mobile},function(data) 
						 	 {
								 var act = data.substring(0, 1);
   								 var info = data.substring(1);
								  if (act == 1) {layer.msg("测试发送成功,请查看手机是否收到",{icon: 1,time: 2000})} 
								  else{layer.msg(info,{icon: 0,time: 2000})} 
						  });
 						 }else{
      					  alert('请输入有效的手机号码！'); 
						  $("#testphone").focus();   
						 }
    				  })
					 
					 </script> 
            </div>

            <div id="tab-6" class="tab-pane">
              <div class="panel-body">
                <div class="form-group">
                  <!-- <div class="alert alert-info col-sm-10 col-md-offset-1"> 系统默认支持Mysql/sqlite数据库</div> -->
                </div>
				  <div class="form-group">
                  <label class="col-sm-2 control-label">数据调试模式</label>
                  <div class="col-sm-1" id="showsql" >
                    <input type="checkbox"  name="showsql" value="1" class="js-switch" <?php echo check_onoff($conf['db']['showsql'],"checked");?>>
                    <span class="help-block m-b-none"> <?php echo check_onoff($conf['db']['showsql'],'已开启');?></span> </div>
                  <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 开启后，显示sql语句并显示步进时间</span> </div>
				  
				  
				  
                <div class="form-group">
                  <label class="col-sm-2 control-label">数据库类型</label>
                  <div class="col-sm-2" id="db" >
                    <select  name="type" class="form-control">
                      <option value="<?php echo $conf['db']['type']?>"><?php echo $conf['db']['type']?></option>
                      <option value="mysql">mysql</option>
                      <option value="sqlite">sqlite</option>
                    
                    </select>
                  </div>
                </div>
              
                <div id="showsqlite"  class="dbinfo"  style="<?php echo $conf['db']['type']=='sqlite' ? '' : 'display: none;' ?>">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">数据库路径</label>
                    <div class="col-sm-2">
                      <input type="text" value="<?php echo $conf['db']['sqlitepath'] ?>" name="sqlitepath" id="sqlitepath" class="form-control">
                    </div>
                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i><code>请确保路径正确</code>,默认“data/”，务必以 / 结尾</span> </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">数据库名称</label>
                    <div class="col-sm-2">
                      <input type="text" value="<?php echo $conf['db']['sqlitename'] ?>" name="sqlitename" id="sqlitename" class="form-control">
                    </div>
                  </div>
                </div>
                <div id="showmysql" class="dbinfo"  style="<?php echo $conf['db']['type']=='mysql' ? '' : 'display: none;' ?>">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Mysql服务器</label>
                    <div class="col-sm-2">
                      <input type="text" value="<?php echo $conf['db']['host'] ?>" name="host" id="host" class="form-control" autocomplete="off">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Mysql端口</label>
                    <div class="col-sm-2">
                      <input type="text" value="<?php echo $conf['db']['port'] ?>" name="port" id="port" class="form-control" autocomplete="off">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">数据库名称</label>
                    <div class="col-sm-2">
                      <input type="text" value="<?php echo $conf['db']['name'] ?>" name="name" id="name" class="form-control" autocomplete="off">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Root账号</label>
                    <div class="col-sm-2">
                      <input type="text" value="<?php echo $conf['db']['user'] ?>" name="user" id="user" class="form-control" readonly onFocus="this.removeAttribute('readonly');">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Root密码</label>
                    <div class="col-sm-4">                      
                      <label>为了保证数据库安全，数据库信息请管理员手动修改config文件</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>

 <div id="tab-9" class="tab-pane">
              <div class="panel-body">
                <div class="form-group">
                  <div class="alert alert-info col-sm-10 col-md-offset-1"> 白名单：只有在白名单内的客户可以访问前台，黑名单：在黑名单的ip不能访问前台</div>
                </div>
							  
                <div class="form-group">
                  <label class="col-sm-2 control-label">白名单模式</label>
                  <div class="col-sm-2">
                    <select  name="safe_type" class="form-control">                    
                      <option value="1"  <?php echo check_onoff($conf['safe_type'],"selected",'',1);?>>白名单</option>
                      <option value="2"  <?php echo check_onoff($conf['safe_type'],"selected",'',2);?>>黑名单</option>
                      <option value="0"  <?php echo check_onoff($conf['safe_type'],"selected",'',0);?>>关闭</option>
                    </select>
                  </div>
                </div>
                <div class="dbinfo">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">IP地址</label>
                    <div class="col-sm-2">
                      <textarea name="safe_ip" id="safe_ip" class="form-control"><?php echo str_replace('<br/>',PHP_EOL,$conf['safe_ip']) ?></textarea>
                    </div>
                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i><code>请确保IP设置正确</code>,多个IP用回车分割，支持*号通配符</span> </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">安全规则</label>
                    <div class="col-sm-2">
                      <textarea name="safe_key" id="safe_key" class="form-control">system|exec|eval|escapeshell|cmd|passthru|base64_decode|gzuncompress</textarea>
                    </div>
                     <div class="col-sm-1">
                         <button type="button" class="btn btn-info"  onclick="warning()"><i class="fa fa-warning"></i> 检查病毒</button>
                          </div>
                          <span class="help-block m-b-none"><i class="fa fa-info-circle"></i><code>检查根目录文件，upload，inc,模板中是否触发安全规则,此字段不存储</code></span> </div>
                 <div class="form-group">
                  <label class="col-sm-2 control-label">清理BOM</label>
                  <div class="col-sm-2">
                    <button type="button" class="btn btn-info" onclick="opennew('bom.php?act=bom')"><i class="fa fa-warning"></i> 清理模板BOM</button>
                    </div>
                   <span class="help-block m-b-none"><i class="fa fa-info-circle"></i><code>清理前台模板上附加BOM头</code></span> </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
      <div class="col-sm-12  m-t">
        <div class=" col-sm-10 col-md-offset-1">
          <button class="btn btn-primary" type="submit" id="submit" title="快捷键：ctrl+enter"><i class="fa fa-floppy-o"></i>　保存内容</button>
          <button onClick="location.reload()" class="btn" type="button"><i class="fa fa-refresh"></i> 刷新</button>
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
<script src="../plugins/icheck/icheck.min.js"></script> 
<script src="js/content.min.js"></script>
<script src="js/adminjs.js"></script> 
<script>
function warning(){
  safe_key=$("#safe_key").val();
  opennew('bom.php?act=warning&key='+safe_key);
}
function newadmin() {
    layer.prompt({
        title: '请输入新目录名称，如newadmin'
    }, function(path, index) {
        $.post('save.php?act=upadmin', {
            'type': 'admin',
            'path': path
        }, function(data) {
            if (data == true) {
                parent.location = '../' + path
            } else {
                parent.layer.alert(data)
            }
        })
    });
}

function newwap() {
    layer.prompt({
        title: '请输入新目录名称，如m'
    }, function(path, index) {
        $.post('save.php?act=upadmin', {
            'type': 'wap',
            'path': path
        }, function(data) {
            if (data == true) {
                location.reload();
                window.open('../' + path)
            }
        })
    });
}

function tryemail() {
    var smtp_server = $("#smtp_server").val(),
        smtp_mail = $("#smtp_mail").val(),
        smtp_user = $("#smtp_user").val(),
        smtp_pass = $("#smtp_pass").val(),
        receive_email = $("#receive_email").val(),
        smtp_name = $("#smtp_name").val(),
        smtp_ssl = $("#smtp_ssl").val(),
        smtp_port = $("#smtp_port").val();
    $.post('save.php?act=tryemail', {
        'smtp_server': smtp_server,
        'smtp_mail': smtp_mail,
        'smtp_user': smtp_user,
        'smtp_name': smtp_name,
        'smtp_ssl': smtp_ssl,
        'smtp_port': smtp_port,
        'smtp_pass': smtp_pass,
        'receive_email': receive_email
    }, function(data) {
        if (data = true) {
            alert("测试成功，如未收到邮件请确认是否开启smtp协议，是否端口封闭等问题")
        }
    });
}

$(function () {
	$(".i-checks").iCheck()
	var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
		elems.forEach(function(html) {
		var switchery = new Switchery(html);
		html.onchange = function() {
		var help=$(this).parent().find(".help-block")
		if(html.checked==true) {help.text("已开启")}
		else{help.text("已关闭")}
		};
	});
      $("#webmode").click(function () {
		    if ($("#webmode input").is(":checked")) {                
				  $("#showcloseinfo").css("display", "none");					
            }
            else {
              	$("#showcloseinfo").css("display", "block");
            }
        }); 
		$("#usermark").click(function () {
		    if ($("#usermark input").is(":checked")) {
                $("#showuser").css("display", "block");
            }
            else {
                $("#showuser").css("display", "none");
            }
        });   
		$("#gbookmark").click(function () {
		    if ($("#gbookmark input").is(":checked")) {
                $("#showgbook").css("display", "block");
            }
            else {
                $("#showgbook").css("display", "none");
            }
        });  
        
        $("#mailmark").click(function () {
		    if ($("#mailmark input").is(":checked")) {
                $("#showmail").css("display", "block");
            }
            else {
                $("#showmail").css("display", "none");
            }
        });
		
		$("#smsmark").click(function () {
		    if ($("#smsmark input").is(":checked")) {
                $("#showsms").css("display", "block");
            }
            else {
                $("#showsms").css("display", "none");
            }
        });
      
        $("#db select").change(function () {
			var val=$("#db select").val();
		  	$(".dbinfo").hide();
			$("#show"+val).show();
        });
        $("#logsql").click(function () {
		    if ($("#logsql input").is(":checked")) {
                $("#showlogsql").css("display", "block");			
            }
            else {
                $("#showlogsql").css("display", "none");			
            }
        });
    if(location.hash) {
        $('a[href=' + location.hash + ']').tab('show');
    }
    $(document.body).on("click", "a[data-toggle]", function(event) {
        location.hash = this.getAttribute("href");
    });
});
$(window).on('popstate', function() {
    var anchor = location.hash || $("a[data-toggle=tab]").first().attr("href");
    $('a[href=' + anchor + ']').tab('show');
});

$(function(){     
  $("#title").focus(); 
})
</script>
</body>
</html>