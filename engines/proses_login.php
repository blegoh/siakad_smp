<?php
include "../config/koneksi.php";
$username = mysql_real_escape_string($_POST['username']);
$password = md5(mysql_real_escape_string($_POST['password']));
$redirect = $_POST['redirect'];
$table = $_POST['table'];
//echo $table;
$set_query = "SELECT *
              FROM $table 
              WHERE username = '$username'
              AND PASSWORD = '$password'";
$query = mysql_query($set_query);
$row = mysql_fetch_object($query);
$cek=mysql_num_rows($query);
if($cek == 1){
	if($table == "admin"){
		$_SESSION['admin'] = $username;
		$_SESSION['level'] = $row->level;
	}elseif($table == "user"){
    	$_SESSION['username']= $username;
	}
    set_msg("Login Berhasil :D");
    header('Location: '.$redirect);
}else{
    set_msg("Username Dan Password Tidak Sesuai", true );
    header('Location: '.$redirect);
}
?>