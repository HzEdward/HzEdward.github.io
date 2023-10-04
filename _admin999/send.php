<link href="../plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/font-awesome.min.css" rel="stylesheet">
<link href="../plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/animate.min.css" rel="stylesheet">
<link href="../plugins/bootstrap/style.min.css" rel="stylesheet">
<link href="css/adminstyle.css" rel="stylesheet">
<link href="css/style.min.css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<script src="../plugins/layer/layer.min.js"></script>
<script src="js/adminjs.js"></script>
<?php
require '../inc/zzz_admin.php';
require '../vendor/autoload.php';
$id=getform("id", "both");
class sendSms {
public function rsa($str){
        $public_key = '-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoNAz4Ounfjkk87ozcbw85cMXWURuf/21WKe6VqHrXdcIrlqLZkuXz5IDFuCjun9hX+zn0VX4wgRkzn8BHpmRdVIl5PZKTwgwNcWFQ7os7p3S882eSq6VBBO3Gu/RuxTOqNlZ/apfLSuHAiFRFyhKsnazx6Br/W4mHSXmyTmSI6EkKAecewlNZI6b+ruKZwcbQZeFbLvlkGrbytM78nNmN3LxLLV2YIu2lQl0ID8wN3wfmV4rikr1tRevFj5hERVsTkpWPMM0ZxlX/dReU9cPdItmyx6Ccf5nPReNYKegaE/eJIfTacs879i752Xc2mL5w79uQfvRWytSyCbNgMz16wIDAQAB
-----END PUBLIC KEY-----';
        $pu_key = openssl_pkey_get_public($public_key);
        openssl_public_encrypt($str, $encrypted, $pu_key);
        $base64_encrypted = base64_encode($encrypted);
        return $base64_encrypted;
}


public function sms($mobile='18057127210',$msg = 'hello test')
{   
$url = "http://10.11.117.6:8089/sms-restful/smsRest/sendSms/";

    $options = [

        'headers' => [
            'Content-Type' => 'application/x-www-form-urlencoded',
            'Accept' => 'application/json',
        ],
        'form_params' => [
            'loginName' =>$this->rsa('fkxt'),//13588812617，a812617
            'loginPwd' => $this->rsa('a819828'),
            'content' => $msg,
            'servNum' => $mobile,
            'messageType' => (string)'2',
            'serialNumber' =>'流水号' ,
        ]
    ];
    $client = new \GuzzleHttp\Client();
    $response = $client->post($url, $options);
    var_dump($response->getBody()->getContents());//打印请求结果

}

} 

//思路
//1、获取学院教师通讯录列表
//2、分批发送短信，10条短信为一列
// db_update('user_txl',array('sms'=>1),array('sms'=>0));
if ($id) {
    $userArr=db_load('user_txl','sms = 0 and mobile <>""','*');
    // var_dump($userArr); // 输出现在的数据结构。
    if (!empty($userArr)) {
        ob_end_clean(); //在循环输出前，要关闭输出缓冲区
        echo str_pad('',1024);
        echo '<div class="itemtitle">开始发送短信中……</div>';
        echo '<div class="itemcontent row">';
        foreach ($userArr as $res) {
            if ($res) {
                //  //获取用户手机，并发送短信
                $username = $res['username'] ;
                $name = $res['truename'] ;
                $tel = $res['mobile'] ;
               //  // $send = new sendSms;  
               //  // // $send->sms($tel,$name.'您好，当前有一条新消息请登录学院内网查看！https://ieecms.zjgsu.edu.cn');
               //  //更新数据库id对应的u_sms值为1
                db_update('user_txl',array('username'=>$username),array('sms'=>1));
                // echo '<div class="col-md-4">'.$name.$tel.'发送成功</div>';
                flush(); //刷新输出缓冲
                usleep(200000);//sleep(5);
               //  //继续循环下一组直到短信发送完成
            }   
        }
        echo '</div>';
    db_update('user_txl',array('sms'=>1),array('sms'=>0));    
    }
}
       