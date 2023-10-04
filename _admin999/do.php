<?php
require '../inc/zzz_admin.php';
$act=safe_word(getform('act','get'));
$c_tid=isnum(getForm("c_tid","post"));
$c_sid=isnum(getForm("c_sid","post"));
// function save(){
// $data=db_load('article_core','','');
// return $data;
// }
// $arr=save();
//$sql="select * from sys_article ";
// // $sql2="select a.c_oid,a.c_downname,a.c_downurl,article_id,fname,path from [dbpre]content as a,[dbpre]article_attach where a.c_oid=article_id order by c_oid";
// // $sql3="select cid,c_downurl from [dbpre]content where c_downurl like '%article/%' order by cid";
// $data = db_load_sql("select * from zzz_content1 ");
// //var_dump($data);
// foreach( $data as $v){
// 	if($v){
// 		$colarr=array('c_title'=>$v['C_Title'],'c_title2'=>$v['C_Title2'],'c_content'=>$v['C_Content'],'c_tid'=>$v['C_SID'],'c_lid'=>1,'c_sid'=>0,'c_pid'=>0,'istop'=>0,'isgood'=>0,'ispic'=>0,'isoffer'=>0,'issell'=>0,'c_gid'=>0,'ishtml'=>0,'c_visits'=>$v['C_Visits'],'c_star'=>0,'c_brand'=>0,'c_type'=>'news','c_link'=>$v['C_Link'],'c_endtime'=>$v['C_EndTime'],'c_addtime'=>$v['C_AddTime'],'c_picsurl'=>$v['C_PicsUrl'],'c_picsname'=>$v['C_PicsName'],'c_pic'=>$v['C_Pic'],'c_downurl'=>$v['C_DownUrl'],'c_downname'=>$v['C_DownName'],'c_pagename'=>$v['C_PageName'],'c_pagetitle'=>$v['C_PageTitle'],'c_pagekey'=>$v['C_PageKey'],'c_pagedesc'=>$v['C_PageDesc'],'c_exc'=>0,'c_onoff'=>1,'c_mid'=>1,'c_mname'=>'admin','c_order'=>9);
// 		db_insert('content',$colarr);

// 	}
// }
// foreach( $data as $v){
// 	if($v){
// 		//var_dump($v);
// 		if($v['c_downname'] !=''){
// 			$downname =$v['c_downname'].','.$v['fname'];
// 		}else{
// 			$downname =$v['fname'];
// 		}
// 		if($v['c_downurl'] !=''){
// 			$downurl =$v['c_downurl'].','.$v['path'];
// 		}else{
// 			$downurl =$v['path'];
// 		}
// 		$colarr=array('c_downname'=>$downname,'c_downurl'=>$downurl);
// 		db_update('content','c_oid='.$v['c_oid'],$colarr);	
// 	}
// }

$str = '浙AU512Rc' ;
$str = str_replace(' ', '', $str);
echo strlen($str);
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form action="?act=do" method="post">
<input type="text" name="c_tid" placeholder="原ID"><br/>
<input type="text" name="c_sid" placeholder="新ID"><br/>
<input type="submit" name="提交">
</form>
</body>
</html>
<?php
if ($act=='do') {
	$sql = "select c_title,c_tid from [dbpre]content where c_tid =".$c_tid;
	$data = db_load_sql( $sql );
	foreach( $data as $v){
	$colarr=array('c_sid'=>$c_sid);
 	db_update('content','c_tid='.$c_tid,$colarr);
 	echo $v['c_title'].'<br/>';
 }
}
?>