function $childNode(o){return window.frames[o]}function animationHover(o,e){o=$(o),o.hover(function(){o.addClass("animated "+e)},function(){window.setTimeout(function(){o.removeClass("animated "+e)},2e3)})}function WinMove(){var o="[class*=col]",e=".ibox-title",i="[class*=col]";$(o).sortable({handle:e,connectWith:i,tolerance:"pointer",forcePlaceholderSize:!0,opacity:.8}).disableSelection()}var $parentNode=window.parent.document;
$(".collapse-link").click(function(){var o=$(this).closest("div.ibox"),e=$(this).find("i"),i=o.find("div.ibox-content");i.slideToggle(200),e.toggleClass("fa-chevron-up").toggleClass("fa-chevron-down"),o.toggleClass("").toggleClass("border-bottom"),setTimeout(function(){o.resize(),o.find("[id^=map-]").resize()},50)})
$(".close-link").click(function(){var o=$(this).closest("div.ibox");o.remove()})
$('li.dropdown').mouseover(function() {$(this).addClass('open');}).mouseout(function() {$(this).removeClass('open');}); 
$("#closelayer").click(function(){var index = parent.layer.getFrameIndex(window.name);parent.layer.close(index); })
function closelayer(){parent.layer.closeAll()}
function closetab(){parent.$(".J_tabClosethis").trigger("click"); }
function opennew(url){layer.open({type:2,shade:0.8, maxmin: true, area:['800px','80%'],content:url});}
function opennewmobile(url){layer.open({type:2,shade:0.8, maxmin: true, area:['95%','70%'],content:url});}
function openonoff(url){layer.open({ type: 2,title: false,closeBtn: 0,shade: 0.5,area: ['180px', '65px'], content:url});}
function openimg(str){parent.layer.open({type:1,shadeClose:true,shade:0.8,content:'<img src='+str+'>'});}
function opendiv(str){parent.layer.open({type:1,shadeClose:true,shade:0.8,content:str});}
$(function(){$("#backhome").click(function(){parent.$(".J_tabClosethis").trigger("click"); })
$(".fanyi").click(function(){if(!$(this).hasClass("fanyion")){layer.tips('双击自动翻译', $(this));$(this).removeClass("fanyi").addClass("fanyion");}})
});
//$(function(){$(".fancybox").fancybox()});
function delcontent(id){$.post("Content_Fun.asp?act=delcol",{"idval":id},function(data) {parent.layer.msg("删除成功",{icon: 1});location.reload() });}
function delture(id){layer.confirm('确定清除吗？',function(){$.post("Content_Fun.asp?act=truedel",{"idval":id},function(data) {parent.layer.msg("删除成功",{icon: 1});location.reload() });})}
function recycle(id){$.post("Content_Fun.asp?act=recycle",{"idval":id},function(data) {parent.layer.msg("恢复成功",{icon: 1});location.reload()});}	
function delad(id){layer.confirm('确定删除吗？',function(){$.post("ad_Fun.asp?act=del&idval="+id, function(data) {location.reload() });})}
function delgbook(id){layer.confirm('确定删除吗？',function(){$.post("gbook_Fun.asp?act=del&idval="+id, function(data) {location.reload() });})}
function delbrand(id){layer.confirm('确定删除吗？',function(){$.post("Brand_Fun.asp?act=del&idval="+id, function(data) {location.reload() });})}
function deltag(id){layer.confirm('确定删除吗？',function(){$.post("tag_Fun.asp?act=del&idval="+id, function(data) {location.reload() });})}
function delkeys(id){layer.confirm('确定删除吗？',function(){$.post("keys_Fun.asp?act=del&idval="+id, function(data) {location.reload() });})}
function deluser(id){layer.confirm('确定删除吗？',function(){$.post("?act=del&id="+id, function(data) {location.reload() });})}
function delgroup(id){layer.confirm('确定删除吗？',function(){$.post("?act=delgroup&id="+id, function(data){location.reload();});})}
function dellinks(id){layer.confirm('确定删除吗？',function(){$.post("links_Fun.asp?act=del&id="+id, function(data) {location.reload() });})}
function dellabels(id){layer.confirm('确定删除吗？',function(){$.post("labels_Fun.asp?act=del&id="+id, function(data) {location.reload() });})}
function delback(path){layer.confirm('确定删除吗？',function(){$.post("Data_Fun.asp?act=del&path="+path, function(data) {location.reload() });})}
function delSlide(id){layer.confirm('确定删除吗？',function(){$.post("Slide_Fun.asp?act=del&idval="+id, function(data) {location.reload() });})}
function delsort(id){layer.confirm('确定删除吗？栏目下内容会一同删除不可恢复！',function(){$.post("Sort_Fun.asp?act=del&id="+id, function(data) {location.reload() });})}

function rename(path,name){parent.layer.prompt({title: '输入新文件名',value:name}, function(newname){ $.post("template_Fun.asp?act=rename&filepath="+path+"&filename="+name+"&newname="+newname, function(data) {parent.layer.msg(data,{icon: 1});location.reload()})});	}
function creatfolder(path){parent.layer.prompt({title: '输入新文件名'}, function(newname){ $.post("template_Fun.asp?act=Crefolder&parentPath="+path+"&newname="+newname, function(data) {parent.layer.msg(data,{icon: 1});location.reload()})});	}
function delfolder(path){parent.layer.confirm('确定删除吗？', function(newname){$.post("template_Fun.asp?act=delfolder&parentPath="+path+"&newname="+newname, function(data) {parent.layer.msg(data,{icon: 1});location.reload()})});	}
function delfile(path){parent.layer.confirm('确定删除吗？', function(){$.post("template_Fun.asp?act=del&filepath="+path,function(data){parent.layer.msg(data,{icon: 1});location.reload()});});}
function delhtml(path){parent.layer.confirm('确定删除吗？', function(){$.post("html_Fun.asp?act=del&filepath="+path,function(data){parent.layer.msg(data,{icon: 1});location.reload()});});}
function delallhtml(){parent.layer.confirm('确定删除吗？', function(){$.post("zzz_Content/html/html_Fun.asp?act=delallhtml",function(data){parent.layer.msg(data,{icon: 1});location.reload()});});}
function delallcache(){parent.layer.confirm('确定删除吗？', function(){$.post("zzz_Content/html/html_Fun.asp?act=del&filepath=allcache",function(data){parent.layer.msg(data,{icon: 1});location.reload()});});}
function restore(path){layer.confirm('确定恢复吗？',function(index){layer.close(index);var index=layer.load();$.post("Data_Fun.asp?act=restore&path="+path,function(data){layer.close(index);if(data==1){layer.alert("恢复数据成功,请刷新后台");}else{layer.alert(data);}});})}
function bakup(){$.post("Data_Fun.asp?act=bakup", function(data){location.reload();});}
function compress(){$.post("Data_Fun.asp?act=compress", function(data) {location.reload() });}
function setcontent(col,id){$.post("Content_Fun.asp?act=setcol",{"col":col,"colval":"abs("+col+"-1)","idval":id}, function(data) {$("#"+id+col).toggleClass("btn-1");});}
function setbrand(col,id){$.post("Brand_Fun.asp?act=setbrand&col="+col+"&colval=abs("+col+"-1)&BID="+id, function(data) { location.reload()}); }
function setad(col,id){$.post("ad_Fun.asp?act=setad&col="+col+"&colval=abs("+col+"-1)&AdID="+id, function(data) { location.reload()}); }
function settag(col,id){$.post("tag_Fun.asp?act=settag&col="+col+"&colval=abs("+col+"-1)&tID="+id, function(data) { location.reload()}); }
function setkeys(col,id){$.post("keys_Fun.asp?act=setkeys&col="+col+"&colval=abs("+col+"-1)&KID="+id, function(data) { location.reload()}); }
function setgbook(col,id){$.post("gbook_Fun.asp?act=setgbook&col="+col+"&colval=abs("+col+"-1)&GID="+id, function(data) { location.reload()}); }
function setuser(col,id){$.post("User_Fun.asp?act=setuser&col="+col+"&colval=abs("+col+"-1)&UID="+id, function(data) { location.reload()}); }
function setgroup(col,id){$.post("User_Fun.asp?act=setgroup&col="+col+"&colval=abs("+col+"-1)&ID="+id, function(data) { location.reload()}); }
function setlinks(col,id){$.post("links_Fun.asp?act=setlinks&col="+col+"&colval=abs("+col+"-1)&id="+id, function(data) { location.reload() });}
function setlabels(col,id){$.post("labels_Fun.asp?act=setlabels&col="+col+"&colval=abs("+col+"-1)&id="+id, function(data) { location.reload() });}
function setSlide(col,id){$.post("Slide_Fun.asp?act=setSlide&col="+col+"&colval=abs("+col+"-1)&SlideID="+id, function(data) { location.reload() });}
function setsort(col,id){$.post("Sort_Fun.asp?act=setcol",{"col":col,"colval":"abs("+col+"-1)","SID":id}, function(data) {$("#"+id+col).toggleClass("btn-1");});}
function UpperFirstLetter(str){if(str.substr(0,4)=="http"||str.substr(0,1)=="/"){return str}str=str.replace(/[ ]/g,"");return str.substring(0,1).toUpperCase()+str.substring(1);}
function goparent(id){parent.$("#"+id+" a").click()}
$(document).keydown(function(e){if(e.ctrlKey&&e.keyCode==13){if($("#contentform").length>0){$("#contentform").submit()}}
var keyEvent=false;switch(e.keyCode){case 27:{if($("#contentform").length>0)
{layer.confirm('确定关闭吗？',function(){parent.layer.closeAll()})}
else
{layer.confirm('确定关闭吗？',function(){$(parent.parent.document.body).find(".J_tabClosethis").click();layer.closeAll();parent.layer.closeAll()})}}
case 8:{var d=e.srcElement||e.target;if(d.tagName.toUpperCase()=='INPUT'||d.tagName.toUpperCase()=='TEXTAREA'){keyEvent=d.readOnly||d.disabled;}else{keyEvent=true;}}}
if(keyEvent){e.preventDefault();}});
$("#search_plug").change(function(){		
		var val=$(this).val()
		$("#list li .title").each(function() {
           text=$(this).text()
		  if(text.indexOf(val)>=0){
			  $(this).parent().parent("li").show()
			}else
			{
			$(this).parent().parent("li").hide()	
			}	  
        });
	})
