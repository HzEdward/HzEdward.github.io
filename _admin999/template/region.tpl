<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{ways}地区</title>
  <link href="../plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
  <link href="../plugins/bootstrap/font-awesome.min.css" rel="stylesheet">
  <link href="../plugins/bootstrap/animate.min.css" rel="stylesheet">
  <link href="../plugins/bootstrap/style.min.css" rel="stylesheet">
  <link href="../plugins/checkbox/checkbox.css" rel="stylesheet">
  <link href="css/adminstyle.css" rel="stylesheet">
  <script src="../js/jquery.min.js"></script>
  <script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
  <!--[if lte ie 9]>
<script src="../js/respond.min.js"></script>
<script src="../js/html5.js"></script>
<![endif]-->
<?php
$pid=getform('pid','get') ?: $r['pid'];
$ptitle=getform('ptitle','get')  ?: db_select('region','title',['rid'=>$r['pid']]);
$depth=getform('depth','get') ?: $r['depth'];
?>
</head>

<body class="gray-bg">
  <div class="wrapper wrapper-content">
    <div class="ibox float-e-margins">
      <form method="post" action="save.php?act=region" class="form-horizontal" id="contentform">
        <input type="hidden" name="id" value="[r:id]">
        <input type="hidden" name="pid" value="{$pid}">        
        <div class="ibox-content">
        <div class="form-group">
            <label class="col-sm-2 control-label text-danger">上级地区名称</label>
            <div class="col-sm-4">
              <input type="text" name="ptitle" data-required="*" id="ptitle" value="{$ptitle}-{$pid}" class="form-control" disabled>
            </div>
            <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 模型的中文名称，如北京</span>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label text-danger">地区级别</label>
            <div class="col-sm-4">
             <select name="depth" class="form-control">
               <option value="1" {$check_on $depth,1, 'selected'}>省/直辖市</option>
               <option value="2" {$check_on $depth,2, 'selected'}>市</option>
               <option value="3" {$check_on $depth,3, 'selected'}>区/县</option>
               <option value="4" {$check_on $depth,4, 'selected'}>街道/镇</option>
              </select>
            </div>
            <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 模型的中文名称，如北京</span>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label text-danger">地区名称</label>
            <div class="col-sm-4">
              <input type="text" name="title" data-required="*" id="title" value="[r:title]" class="form-control">
            </div>
            <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 模型的中文名称，如北京</span>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label text-danger">英文名称</label>
            <div class="col-sm-4">
              <input type="text" name="entitle" data-required="*" id="entitle" value="[r:entitle]" class="form-control">
            </div>
            <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 模型的英文名称，如BJ</span>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label text-danger">邮编</label>
            <div class="col-sm-4">
              <input type="text" name="zipcode" data-required="*" id="zipcode" value="[r:zipcode]" class="form-control">
            </div>
            <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> </span>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label text-danger">电话区号</label>
            <div class="col-sm-4">
              <input type="text" name="telcode" data-required="*" id="telcode" value="[r:telcode]" class="form-control">
            </div>
            <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> </span>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label text-danger">城市编码</label>
            <div class="col-sm-4">
              <input type="text" name="zonecode" data-required="*" id="zonecode" value="[r:zonecode]" class="form-control">
            </div>
            <span class="help-block m-b-none"><i class="fa fa-info-circle"></i>当前ID：[r:rid] </span>
          </div>


        </div>
    </div>
    <div class="col-sm-12 m-t">
      <div class=" col-sm-10 col-md-offset-1">
        <button class="btn btn-primary" onclick="submitform('region','[r:id]','contentform')" type="button" id="submit" title="快捷键：ctrl+enter"><i class="fa fa-floppy-o"></i>　保存内容</button>
        <button class="btn btn-white" onClick="closelayer()" type="reset"><i class="fa fa-close"></i> 关闭</button>
      </div>
    </div>
    </form>
  </div>
 
  <script src="../plugins/bootstrap/bootstrap.min.js"></script>
  <link href="../plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
  <script src="../plugins/layer/layer.min.js"></script>
  <script src="js/content.min.js"></script>
  <script src="js/adminjs.js"></script>
</body>

</html>