<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>单击获取点击的经纬度</title>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}
.demo{width:850px;margin:20px auto;}
#l-map{height:400px;width:600px;float:left;border:1px solid #bcbcbc;}
#r-result{height:400px;width:230px;float:right;}

input{ padding:6px 16px; margin:5px;border-radius: 3px; border: 1px solid #E5E6E7;}
button{ padding:5px 20px; margin:5px;border-radius: 3px;text-align: center;  background-color: #1c84c6;  border: 1px solid #1c84c6;color:#fff;}
.submit{  background-color: #f00; border: 1px solid #f00;}
</style>

<script src="../js/jquery.min.js"></script>
<script>
    var baidumapAK = '[c:baidumapAK]';
    if (baidumapAK == "") {
        document.write("<script src=\"//api.map.baidu.com/api?key=&v=1.1&services=true\">"+"</scr"+"ipt>");
    } else {
        document.write("<script src=\"//api.map.baidu.com/api?v=2.0&ak=[c:baidumapAK]\">"+"</scr"+"ipt>");
    }
</script>

</head>
<body>
<div class="demo">
	<p style="height:50px;">
    输入地名：<input id="Address" type="text" placeholder="请输入公司名"/>  
    <button  onClick="getPoint()">搜索</button> 
    <span style="padding-left:50px;">坐标：</span><input id="pointInput" type="text" value=""/>
    <button onclick="goback()" class="submit">确定</button></p>
	<div id="l-map"></div>
	<div id="r-result"></div>
</div>
<script type="text/javascript">
// 百度地图API功能
var W=[];
var mappoint=parent.$("#companymappoint").val();
var address=parent.$("#companyaddress").val();
var map = new BMap.Map("l-map");            // 创建Map实例
    map.enableScrollWheelZoom();
	map.enableInertialDragging(); 
var local = new BMap.LocalSearch("全国", {
	renderOptions: {
		map: map,
		panel : "r-result",
		autoViewport: true,
		selectFirstResult: false
	}, 
	onSearchComplete: function(result) {		
		W=result;		
	}
});	
if(mappoint!=""){
    $("#pointInput").val(mappoint);
    mapparr= mappoint.split(",");
	map.centerAndZoom(new BMap.Point(mapparr[0],mapparr[1]), 12);
	marker = new BMap.Marker(new BMap.Point(mapparr[0],mapparr[1]));
	map.addOverlay(marker);
}else if(address!=""){
    $("#Address").val(address);
    local.search(address);
}else{
    mapparr=[];
    var myCity = new BMap.LocalCity();
	myCity.get(function(result){
   	    map.centerAndZoom(new BMap.Point(result.center.lng,result.center.lat),12); 
	});
}


$("#r-result").on("click","li",function(){
	var index = $("#r-result ol li").index(this);
	Poi=W.getPoi(index);
	document.getElementById("pointInput").value=Poi.point.lng + "," + Poi.point.lat;
})

map.addEventListener("click",function(e){
	map.clearOverlays();
	marker = new BMap.Marker(new BMap.Point(e.point.lng, e.point.lat));  // 创建标注
	map.addOverlay(marker);
	document.getElementById("pointInput").value=e.point.lng + "," + e.point.lat;
});

function getPoint(){	
    var city = document.getElementById("Address").value;
	document.getElementById("pointInput").value="";
	local.search(city); 
}

function goback(){
	var index = parent.layer.getFrameIndex(window.name);
	var Point=document.getElementById("pointInput").value
	if (Point==""){
		alert ("未获取坐标，点击地图上位置")}
	else{	
		parent.$("#companymappoint").val(Point);
		parent.layer.close(index);
	}
}
</script>
</body>
</html>