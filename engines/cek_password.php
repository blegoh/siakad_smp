<?php
include "../config/koneksi.php";

if(isset($_POST['password'])){
	$password = md5($_POST['password']);
	$username = $_SESSION['username'];
	
	$sql = "select * from user where username = '$username'";
	$res = mysql_query($sql);
	$row = mysql_fetch_object($res);
	
	if($row->password == $password){
		echo 'true';
	}else{
		echo "false";
	}
}
?>