<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>模型管理</title>
<link href="../plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/font-awesome.min.css" rel="stylesheet">
<link href="../plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/animate.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/style.min.css" rel="stylesheet">
<link href="css/adminstyle.css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<script>var table='region';</script>
<!--[if lte IE 9]>
<script src="../js/respond.min.js"></script>
<script src="../js/html5.js"></script>
<![endif]-->
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">
  <div class="ibox float-e-margins">
    <div class="row row-lg">
      <div class="col-sm-12">
        <div class="ibox-content">
			<div class="col-sm-5">
             <button onClick="location.reload()" class="btn" type="button"><i class="fa fa-refresh"></i> 刷新</button>
             <button onClick="closetab()" class="btn" type="button"><i class="fa fa-times">　</i>关闭</button>   
             <?php
             if($pid>0){
               echo '<button onclick="window.history.go(-1)" class="btn" type="button"><i class="fa fa-reply">　</i>返回</button>';
             }
             ?>
             </div>  
            <?php
            $pid=getform('pid','get');
            ?>
          <table {zzz:table} data-url="function.php?act=regionlist&pid=<?php echo $pid?>">
            <thead>
              <tr>
                <th class="tableid" data-field="id" data-sortable="true">ID</th>
                <th class="tabletitle" data-field="title">地区名称</th>
                <th class="tabletype" data-field="entitle" data-sortable="true">缩写</th>
                <th class="tablename" data-field="zipcode">邮编</th>
                <th class="tablename" data-field="telcode">电话区号</th>
                <th class="tablename" data-field="zonecode">行政区号</th>
                <th class="tableonoff" data-field="onoff" >状态</th>
                <th class="tableonoff" data-field="order" data-sortable="true">排序</th>
                <th class="tableedit" data-field="edit" >操作</th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Panel Other -->
</div>
<script src="js/adminjs.js"></script> 
<script src="../plugins/bootstrap/bootstrap.min.js"></script> 
<script src="../plugins/bootstrap-table/bootstrap-table.min.js"></script> 
<script src="../plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script> 
<script src="../plugins/layer/layer.min.js"></script>
</body>
</html>
