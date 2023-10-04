<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/font-awesome.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/animate.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/style.min.css" rel="stylesheet">
<link href="css/adminstyle.css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<link href="../plugins/codemirror/codemirror.css" rel="stylesheet">
<link href="../plugins/codemirror/ambiance.css" rel="stylesheet">
<title>模板编辑：<?php echo $folder ?></title>
<!--[if lte IE 9]>
<script src="../js/respond.min.js"></script>
<script src="../js/html5.js"></script>
<![endif]-->
</head>
 <?php
	$ext=file_ext($folder);
	$safe_ext=array('xml','html','css','js','txt','zzz');
	if (ifch( $folder) ) $file=toutf($folder);
	$file_path=file_path($folder);    
	$safe_path=array('upload','template','runtime');
	if(arr_search($file_path,$safe_path) && arr_search($ext,$safe_ext)){
		$content=replacestr(load_file(DOC_DIR.$folder),'</textarea>','&lt/textarea>');
	}else{
		die('此文件不允许编辑！');
	}
?>
<body class="gray-bg">
<div class="wrapper wrapper-content">
    <form class="form-horizontal" id="contentform">
        <div class="ibox float-e-margins">
            <div class="row">
                <input type="hidden" name="filepath" value="<?php echo $folder ?>">
                <div class="col-sm-12">
                    <div class="ibox-content">
                        <textarea name="filecontent" id="CodeMirror" class="diff-textarea CodeMirror">{$content}</textarea>
                    </div>
      
        <div class="footer fixed_full">
            <div class="arrow">
                {if ifstrin($folder,[c adminpath])}
                <button class="btn btn-white" onclick="closelayer()" type="reset">关闭</button> 
                {else}
                <button class="btn btn-primary" type="button" onclick="submitform('editfile','<?php echo $folder ?>','contentform')" type="button" id="submit" title="快捷键：ctrl+enter"><i class="fa fa-floppy-o"></i>　保存内容</button>
                <button class="btn btn-white" onclick="closelayer()" type="reset">关闭</button> 
                {/if}
            </div>
        </div>  </div></div>
          </div>
    </form>
</div>
<style type="text/css">
      .CodeMirror {border-top: 1px solid black; border-bottom: 1px solid black;  height: auto;min-height:200px;}
</style>
<script src="../plugins/bootstrap/bootstrap.min.js"></script> 
<script src="../plugins/codemirror/codemirror.js"></script>
<script src="../plugins/codemirror/javascript.js"></script>
<script src="../plugins/codemirror/active-line.js"></script>
<script src="../plugins/codemirror/matchbrackets.js"></script>
<script src="js/content.min.js"></script>
<script src="js/adminjs.js"></script>
</body>
</html>