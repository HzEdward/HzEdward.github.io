 <?php 
 	$upfolder=getform('upfolder','get');
	$numtype=getform('numtype','get');
	$index=getform('index','get');
	if(!$index){
		$index='{index}';
	}
	$folder_str='';
	$file_str='';
	$order_str='';
	$rote_str='<div class="rote_item"><div class="rote_title rote_url"><a href="?act=imagelist&numtype='.$numtype.'&index='.$index.'">upload</a></div><div class="rote_separator">></div></div>';
	if($upfolder){
		$upfolder=str_replace('/upload','',$upfolder);
		$folder=str_replace('//','/',UPLOAD_DIR.$upfolder);
		$rote_arr=splits($upfolder,'/');
		$path='';
		foreach ($rote_arr as $key=>$value) {
			if($value){
				$path.=$value.'/';
				if($path==$upfolder || $path==$upfolder.'/'){
                	$rote_str.='<div class="rote_item"><div class="rote_title">'.$value.'</div></div>';
              	}else{
					$rote_str.='<div class="rote_item"><div class="rote_title rote_url"><a href="?act=imagelist&upfolder='.rtrim($path,"/").'&numtype='.$numtype.'&index='.$index.'">'.$value.'</a></div><div class="rote_separator">></div></div>';
				}
			}
		}
	}else{
		$folder=UPLOAD_DIR;
	}	
	$folder_arr=folder_list($folder);
	//echop($folder_arr);die;
	if($folder_arr){
		foreach ($folder_arr as $value) {
			$path=ltrim(str_replace(UPLOAD_DIR,'',$value['dir']),'/');
			$folder_str.='<div class="file_item"  data-type="folder" data-url="'.$path.'"><div class="item_folder rote_url"><a href="?act=imagelist&upfolder='.$path.'&numtype='.$numtype.'&index='.$index.'"></a></div><div class="item_del"><i class="fa fa-close "></i></div><div class="item_title">'.$value['name'].'</div></div>';
		}
	}
	$file_arr=getfiles($folder,'image');
	//echop($file_arr);
	if($file_arr){
		$data=db_load('file',array('f_folder'=>$upfolder),'f_name,f_title');
		$data=arrlist_key_values($data,'f_name','f_title');
		foreach ($file_arr as $value) {
			$title=isset($data[$value['name']]) ? $data[$value['name']] : $value['name'];
			$file_str.='<div class="file_item" data-type="file" data-url="'.$value['url'].'"  data-title="'.$title.'"  data-name="'.$value['name'].'" data-size="'.$value['size'].'"  data-ext="'.$value['ext'].'"  data-time="'.$value['mtime'].'"><div class="item_file"><div class="item_image"><img lazy_src="'.$value['url'].'" draggable="false"></div></div><div class="item_del"><i class="fa fa-close "></i></div><div class="item_edit"></div><div class="item_title">'.$title.'</div></div>';
		}
	}
	if(empty($file_str) && empty($folder_arr)){
		$file_str='<div class="file_empty"><div class="empty_title">此文件夹内，还没有任何文件</div></div>';
	}

	$orderarr=array(''=>'默认排序','name1'=>'时间降序','name2'=>'时间升序','title1'=>'名称降序','title2'=>'名称升序');
	foreach ($orderarr as $key=>$value) {
		$order_str.= '<option value="'.$key.'">'.$value.'</option>';
	}	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图片管理</title>
	<script src="../js/jquery.min.js"></script>
	<script src="js/adminjs.js"></script>
    <script src="../plugins/layer/layer.min.js"></script>
	<script src="../plugins/webuploader/js/webconfig.php"></script>
    <script src="../plugins/webuploader/js/webuploader.js"></script>
    <link href="../plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="../plugins/bootstrap/font-awesome.min.css" rel="stylesheet">
    <link href="../plugins/bootstrap/animate.min.css" rel="stylesheet">
    <link href="../plugins/bootstrap/style.min.css" rel="stylesheet">
    <link href="css/adminstyle.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../plugins/webuploader/css/webuploader.css" />
<style>
	.body_file{width100%;height:auto;padding:25px;}
	.file_head{-webkit-box-flex:0;-ms-flex:none;flex:none;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-ms-flex-wrap:nowrap;flex-wrap:nowrap;margin-bottom:14px;padding:15px 0;border-bottom:1px solid #efefef;}
	.order_body{height:32px;line-height:32px;padding:5px 10px;margin:0;border:1px #ccc solid;border-radius:3px;margin-top:-4px;}
	.head_btn{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-wrap:nowrap;flex-wrap:nowrap;-webkit-box-align:center;-ms-flex-align:center;align-items:center;}
	.file_foot{position:fixed;height:80px;border-top:1px #ccc solid;bottom:0px;width:900px;text-align:left;}
	.file_foot .btn{width:100px;height:34px;margin:15px;}
	.foot_body{width:650px;overflow-x:auto;overflow-y:hidden;height:85px;}
	.foot_body ul{margin:0;padding:0;display:-webkit-inline-box;}
	.foot_btn{position:absolute;right:0px;top:6px;}
	.foot_item{position:relative;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;height:64px;width:64px;background:#f3f3f3;overflow:hidden;margin:5px;float:left;}
	.foot_item:hover .item_del{display:block;}
	.foot_img{box-sizing:border-box;width:100%;border:1px solid #e7e7eb;text-align:center;font-size:0;line-height:0;}
	.foot_img img{display:inline-block;width:auto;height:auto;max-width:100%;max-height:100%;vertical-align:middle;}
	.webuploader-container{width:100px;height:36px;}
</style>
</head>
<body>
<div class="body_file">
	<div class="file_head">
		<div class="head_btn">
			<div class="btn_div">
				<div id="uploader"></div>
			</div>
			<div class="btn_div">
				<button type="button"  class="btn btn-default" id="creat_folder"> <i class="fa fa-folder"></i> 新建文件夹</button>
			</div>
			<div class="order_div">
				<select id="order_select" class="order_body">
					{$order_str}
				</select>
			</div>
		</div>
		<div class="head_search">
			<input type="text" placeholder="搜索所有文件" class="search-input">
			<svg class="search-ico" viewBox="0 0 20 20"><title>search01</title><path d="M17.74,15.48l-2.37-2.37a1.53,1.53,0,0,0-.16-.11A7.41,7.41,0,1,0,14,14.21a1.53,1.53,0,0,0,.11.16l2.37,2.37a.91.91,0,0,0,.63.26.89.89,0,0,0,.63-1.52ZM9.41,14A5.63,5.63,0,1,1,15,8.41,5.64,5.64,0,0,1,9.41,14Z"></path></svg>
		</div>
	</div>
	<div class="file_route">
		{$rote_str}
	</div>
	<div class="file_body">
		{$folder_str}
	 	<div id="filelist">{$file_str}</div>		
	</div>
	<div class="file_foot">
		<div class="file_pace">
			<div class="pace_title"></div>
			<div class="pace_progress" style=""></div>
		</div>
		<div class="foot_body" id="foot_body">
			<ul></ul>
		</div>
		<div class="foot_btn">
			<button type="button" class="btn btn-primary" onclick="file_submit()"> 确定 </button>
			<button type="button" class="btn btn-default" onclick="file_cancel()"> 取消 </button>
		</div>
	</div>
</div>

<script>
$(".layui-layer-title")[1] ? parent.$(".layui-layer-title")[1].innerText= '编辑图片（只能添加'+imageExt+', 大小不超过'+imageMaxSize/1024/1024+'MB。' : parent.$(".layui-layer-title")[0].innerText= '编辑图片（只能添加'+imageExt+', 大小不超过'+imageMaxSize/1024/1024+'MB。';
	var upfolder='{$upfolder}',numtype='{$numtype}',index='{php echo $index}';
	if(index=='{index}'){
		var index = parent.layer.getFrameIndex(window.name); 
		$(".rote_url a").each(function(i,item){
			href=$(this).attr('href');			
			href=href.replace(/{index}/g,index);		
			$(this).attr('href',href);			
		})
	}
// 实例化
        uploader = WebUploader.create({
            pick: { id: '#uploader',multiple: true,label: '上传图片'},
            formData: {format: imageFormat},
		    compress :{width: compresswidth, height: compressheight, quality: compressquality,noCompressIfLarger: true, compressSize:0.4*1024*1024},
            swf: 'swf/Uploader.swf',
            server: sitepath+adminpath+"save.php?act=upload&uptype=image&upfolder="+upfolder,				
            accept: {title: 'Images',extensions: imageExt, mimeTypes: 'image/*'},
            // 禁掉全局的拖拽功能。这样不会出现图片拖进页面的时候，把图片打开。
            disableGlobalDnd: false,
            auto: true,
            fileNumLimit: 300,
            fileSizeLimit: 200 * 1024 * 1024,    // 200 M
            fileSingleSizeLimit:  imageMaxSize   // 50 M
        });
		uploader.on( 'uploadProgress', function( file, percentage ) {					
			$( '.pace_title').text(file.name+'上传中：'+parseInt(percentage* 100)  + '%');
			$( '.pace_progress').css('width', percentage * 100  + '%' );
		});
        uploader.on('error', function( err) {       
            layer.alert( err+'，只允许'+imageExt , {icon:0});
        });
          // 文件上传失败
        uploader.on( 'uploadError', function(file) {            
            layer.open({title:'错误提示',content:'文件格式不允许，只允许'+imageExt,icon: 2}); 
        });
        uploader.on( 'uploadSuccess', function( file,data ) {
			$( '.pace_title').text('');
			$( '.pace_progress').css('width','0%' );
			if(data.state=='SUCCESS'){
				var $li ='<div class="file_item active" data-type="file" data-url="'+data.url+'" data-name="' + data.name + '" data-title="' + data.title + '" data-ext="' + data.ext + '"><div class="item_file"><div class="item_image"><img src="'+data.url+'"></div></div><div class="item_del"><i class="fa fa-close "></i></div><div class="item_edit"></div><div class="item_title">' + data.title + '</div></div>';
				$("#filelist").prepend($li);
				$(".file_empty").hide();
				$("#foot_body ul").append('<li class="foot_item" id="'+data.name+'"><div class="foot_img"><img src="'+data.url+'"></div><div class="item_del"><i class="fa fa-close "></i></div></li>');
			}else{
					layer.open({title:'错误提示',content:'文件上传失败，请确认空间是否有上传限制',icon: 2}); 
			}
        });

	$("#filelist").on("click",".item_file",function() {		
		$this=$(this).parent();
		url=$this.data('url');
		name=$this.data('name');
		console.log(index);
		if(numtype==1){
			$this.siblings().removeClass('active').end().addClass('active');
			$("#foot_body ul").html('<li class="foot_item" id="'+name+'"><div class="foot_img"><img src="'+url+'" draggable="false"></div><div class="item_del"><i class="fa fa-close "></i></div></li>');
		}else{
			if($this.hasClass("active")==false){
				$this.addClass("active");
				$("#foot_body ul").append('<li class="foot_item" id="'+name+'"><div class="foot_img"><img src="'+url+'" draggable="false"></div><div class="item_del"><i class="fa fa-close "></i></div></li>');
			}else{
				$this.removeClass("active");
				$("#"+name).remove();
			}
		}
	})
	
	$(".body_file").on("click",".item_del",function() {
		$this = $(this);	
		index1=parent.layer.confirm('确定删除此文件吗？将会影响已经使用文件的地方', function() {
			url = $this.parent('.file_item').data('url');
			type = $this.parent('.file_item').data('type');
			url='upload/'+url.replace('/upload/','');
			$.post("save.php?act=delfile", {
				type: type,
				path: url
			}, function(result) {
				location.reload();
				layer_result(result);
			}, 'json');
		})
		//parent.layer.close(index1);
	})
	$("#creat_folder").click(function() {
		$.post("save.php?act=creatfolder", {
			path: '{$folder}'
		}, function(result) {
			location.reload();
			layer_result(result);
		}, 'json');
	})
	
	$(".foot_body").on("click",".item_del",function(){
		id=$(this).parents('.foot_item').attr('id');
		$("#"+id).remove();
		console.log(id);
		$(".file_body .active").each(function(i,item){
			name=$(this).data('name');
			if(name==id){
				$(this).removeClass('active');				
			}
		})
	})

	function file_cancel() {		
		parent.layer.close(index);
	}

	function file_submit(){ 
		r=[];		
		 $(".file_body .active").each(function(i,item){
			url=$(this).data('url');
			title=$(this).data('title');
			r[i]={'url':url,'title':title};
		})
		set_cookie('upload',JSON.stringify(r));		
		parent.layer.close(index);		
	}
	
	$("#order_select").change(function(){
		val=$(this).val();
		//array('mtime1'=>'时间降序','mtime2'=>'时间升序','size1'=>'大小降序','size2'=>'大小升序','name1'=>'名称降序','name2'=>'名称升序');
		key=[];body=[];		
		switch(val){
			case 'name2':
			 	var items = $(".file_item").get();
				items.sort(function(a,b)        //调用JavaScript内置函数sort 
				{
					var elementone = $(a).data('name');
					var elementtwo = $(b).data('name'); 
					if(elementone < elementtwo) return -1;  
					if(elementone > elementtwo) return 1; 
					return 0; 
				}); 
				$("#filelist").empty();
				$.each(items,function(i,item){
					$("#filelist").append(item);
				})				
			break;
			case 'name1':
			 	var items = $(".file_item").get();
				items.sort(function(a,b)        //调用JavaScript内置函数sort 
				{
					var elementone = $(a).data('name');
					var elementtwo = $(b).data('name'); 
					if(elementone < elementtwo) return 1;  
					if(elementone > elementtwo) return -1; 
					return 0; 
				}); 
				$("#filelist").empty();
				$.each(items,function(i,item){
					$("#filelist").append(item);
				})				
			break;
			case 'size2':
			 	var items = $(".file_item").get();
				items.sort(function(a,b)        //调用JavaScript内置函数sort 
				{
					var elementone = $(a).data('size');
					var elementtwo = $(b).data('size'); 
					if(elementone < elementtwo) return -1;  
					if(elementone > elementtwo) return 1; 
					return 0; 
				}); 
				$("#filelist").empty();
				$.each(items,function(i,item){
					$("#filelist").append(item);
				})				
			break;
			case 'size1':
			 	var items = $(".file_item").get();
				items.sort(function(a,b)        //调用JavaScript内置函数sort 
				{
					var elementone = $(a).data('size');
					var elementtwo = $(b).data('size'); 
					console.log(elementone);
					if(elementone < elementtwo) return 1;  
					if(elementone > elementtwo) return -1; 
					return 0; 
				}); 
				$("#filelist").empty();
				$.each(items,function(i,item){
					$("#filelist").append(item);
				})				
			break;
			case 'title2':
			 	var items = $(".file_item").get();
				items.sort(function(a,b)        //调用JavaScript内置函数sort 
				{
					var elementone = $(a).text();
					var elementtwo = $(b).text(); 
					if(elementone < elementtwo) return -1;  
					if(elementone > elementtwo) return 1; 
					return 0; 
				}); 
				$("#filelist").empty();
				$.each(items,function(i,item){
					$("#filelist").append(item);
				})				
			break;
			case 'title1':
			 	var items = $(".file_item").get();
				items.sort(function(a,b)        //调用JavaScript内置函数sort 
				{
					var elementone = $(a).text();
					var elementtwo = $(b).text(); 
					if(elementone < elementtwo) return 1;  
					if(elementone > elementtwo) return -1; 
					return 0; 
				}); 
				$("#filelist").empty();
				$.each(items,function(i,item){
					$("#filelist").append(item);
				})				
			break;			
		}		
	})

	$(".search-input").change(function(){
		keyword=$(this).val();	
		$("#filelist .file_item").hide();
		$(".item_title").filter(":Contains("+keyword+")").parents(".file_item").show()
	})

	$(".file_body").scroll(function() {
		//console.log(this.scrollTop);
		var imgs = this.getElementsByTagName("img"),
			top = Math.ceil(this.scrollTop / 84) - 1;
		top = top < 0 ? 0 : top;
		for (var i = top * 8; i < (top + 8) * 8; i++) {
			var img = imgs[i];
			if (img && !img.getAttribute("src")) {
				img.src = img.getAttribute("lazy_src");
				img.removeAttribute("lazy_src");
			}
		}
	})

	$(".file_body img ").each(function(i,item){		
		if(i<24){
			var img =item;
			if (img && !img.getAttribute("src")) {
				img.src = img.getAttribute("lazy_src");
				img.removeAttribute("lazy_src");
			}
		}
	
	})
</script>
</body>
</html>
