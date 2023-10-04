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

  $sql="select * from [dbpre]content ";
// // $sql2="select a.c_oid,a.c_downname,a.c_downurl,article_id,fname,path from [dbpre]content as a,[dbpre]article_attach where a.c_oid=article_id order by c_oid";
// // $sql3="select cid,c_downurl from [dbpre]content where c_downurl like '%article/%' order by cid";
 $data = db_load_sql( $sql );
// //var_dump($data);
// foreach( $data as $v){
// 	if($v){
// 		var_dump($v);
// 		db_insert('content',['c_title'=>$v['title'],'c_lid'=>1,'c_sid'=>0,'c_tid'=>$v['catid'],'c_mid'=>$v['userid'],'c_mname'=>$v['username'],'c_type'=>'news','c_gid'=>0,'c_exc'=>1,'c_onoff'=>1,'c_order'=>9,'isoutlink'=>0,'istop'=>0,'isgood'=>0,'ispic'=>0,'isoffer'=>0,'issell'=>0,'ishtml'=>0,'c_visits'=>$v['hits'],'c_star'=>0,'c_addtime'=>date("Y-m-d H:i:s",$v['createtime'])]);
		
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
foreach( $data as $v){
	if($v){
		$c_content=str_replace( '2106-', '2016-', $v['c_addtime'] );
		$colarr=array('c_addtime'=>$c_content);
		db_update('content','cid='.$v['cid'],$colarr);
	}
}


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