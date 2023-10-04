<style>
body { font-size: 10px; font-family: Arial, Helvetica, sans-serif; background: #FFF; color: #000; }
.FOUND { color: #F30; font-size: 14px; font-weight: bold; }
</style>
<?php 
require '../inc/zzz_class.php';
// 设定你要清除BOM的根目录（会自动扫描所有子目录和文件）
$HOME = SITE_DIR;
// 如果是Windows系统，修改为：$WIN = 1;
$WIN = 0;
$BOMBED = array();
$act=getform('act','get');
switch($act){
  case 'bom':
  Recursive_Bom($HOME);
  echo '<h2>下列文件包含BOM头，已清理:</h2><p class="FOUND">';
  foreach ($BOMBED as $utf) { echo $utf ."<br />\n"; }
  echo '</p>';
  break;
  case 'warning':
    echo '<h2>搜索开始，请稍后</h2>';
    Recursive_Warning($HOME);
    echo '<h2>搜索完毕</h2>';
  break;
}

// 递归扫描Warning
function Recursive_Warning($DIR) {
  global $WIN;
  $key=_GET('key');
  $win32 = ($WIN == 1) ? "\\" : "/";
  $folder = dir($DIR);
  $foundfolders = array();
  while ($file = $folder->read()) {
    if($file != "." && $file != ".." && strpos($DIR,ADMIN_PATH)==false  &&  strpos($DIR,ADMIN_PATH)==false  && strpos($DIR,'install')==false  && strpos($DIR,'inc')===false  && strpos($DIR,'plugins')===false  && strpos($DIR,'runtime')===false && strpos(ADMIN_PATH,$file)===false &&  strpos($file,'zzz_config')===false &&  strpos($file,'.zip')===false &&  strpos($file,'.rar')===false &&  strpos($file,'.tag')===false &&  strpos($file,'.pdf')===false &&  strpos($file,'.exe')===false && strpos($file,'.mp4')===false && strpos($file,'.flv')===false && strpos($file,'.swf')===false &&  strpos($file,'.db')===false  &&  strpos($file,'jquery')===false){
      echo(".");
      if(filetype($DIR . $win32 . $file) == "dir"){
        $foundfolders[count($foundfolders)] = $DIR . $win32 . $file;
      } else {
      //echop($DIR . $win32 . $file);
        $path= $DIR . $win32 . $file;
        $content = file_get_contents($path);
        $Warning = SearchWarning($content,$key,$path);    
       }
    }
  }
  $folder->close();
    if(count($foundfolders) > 0) {
      foreach ($foundfolders as $folder) {
        Recursive_Warning($folder, $win32);
      }
    }
 }

// 递归扫描Bom
function Recursive_Bom($DIR) {
 global $BOMBED, $WIN;
 $win32 = ($WIN == 1) ? "\\" : "/";
 $folder = dir($DIR);
 $foundfolders = array();
 while ($file = $folder->read()) {
  if($file != "." and $file != "..") {
   if(filetype($DIR . $win32 . $file) == "dir"){
    $foundfolders[count($foundfolders)] = $DIR . $win32 . $file;
   } else {
    $content = file_get_contents($DIR . $win32 . $file);
    $BOM = SearchBOM($content);
    if ($BOM) {
     $BOMBED[count($BOMBED)] = $DIR . $win32 . $file;
     // 移出BOM信息
     $content = substr($content,3);
     // 写回到原始文件
     file_put_contents($DIR . $win32 . $file, $content);
    }
   }
  }
 }
 $folder->close();
 if(count($foundfolders) > 0) {
  foreach ($foundfolders as $folder) {
   Recursive_Bom($folder, $win32);
  }
 }
}

function SearchWarning($string,$key,$path){
  $keys=splits($key,'|');
  foreach($keys as $v){
    if(strpos($string,$v)) {
      echo "<p class='FOUND'>$path</p>";
      $string=str_replace($v,"<span class='FOUND'>$v</span>",$string);
      echop($string);
    }
  }
  return false; 
}

// 搜索当前文件是否有BOM
function SearchBOM($string) { 
  if(substr($string,0,3) == pack("CCC",0xef,0xbb,0xbf)) return true;
  return false; 
}
?>
</body>
</html>