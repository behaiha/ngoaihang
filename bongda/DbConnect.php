<?php 
class DbConnect
{
	public $database_name = "giaingoaihang";
	public $host_name = "localhost";
	public $user_name = "root";
	public $pass ="";
	public $connect = null;
	
	function __construct()
	{
		ini_set('default_charset','utf-8');
		mysql_set_charset('utf8');
		$this->connect=mysql_connect($this->host_name,$this->user_name,$this->pass) or die(" khong the ket noi");
	}
	public function insertDb($content = "dc",$title="dc",$link="dc")
	{
		ini_set('default_charset','utf-8');
		mysql_set_charset('utf8');
		mysql_select_db($this->database_name,$this->connect);
		$date = date("Y-m-d H:i:s");
		$name = toSlug(stripVietnamese($title));
		$guid ="a";
		$content = str_replace("'", "\'", $content);
		$sql="INSERT INTO wp_posts( post_author, post_date, post_date_gmt, post_content, post_title, post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt, guid,post_type,link) VALUES (1,'$date','$date','$content','$title','publish','open','open','$name','$date','$date','$guid','post','$link')";
		$select ="SELECT * FROM wp_posts WHERE link = '$link' ";
		$query=mysql_query($select);
		$c = mysql_num_rows($query);
		if($c == 0)
		{
			$t = mysql_query($sql);
			if ($t) {
				echo "Đã cập nhật";
			}else{
				echo "Sao thế này:$c : $sql:<br>";
			}
		}else{
			echo "Đã tồn tại ";
		}
		
	}
	public function checkLink($link)
	{
		$select ="SELECT * FROM wp_posts WHERE link = '$link' ";
		$query=mysql_query($select);
		$c = mysql_num_rows($query);
		return $c == 0 ? 1 : 0;
	}
}
?>