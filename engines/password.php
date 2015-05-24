<?php

include "../config/koneksi.php";

if(isset($_POST)){
	$current_password = md5(mysql_real_escape_string($_POST['current']));
	$new_password = md5(mysql_real_escape_string($_POST['newpass']));
	$confirm_password = md5(mysql_real_escape_string($_POST['confirmpass']));
	$sql_cek = "select * from user where username = '".$_SESSION['username']."'";
	$res_cek = mysql_query($sql_cek) or die(mysql_error());
	$row_cek = mysql_fetch_object($res_cek);
	
	$valid = true;
	$pesan = "";
	$error = true;
	
	if(trim($current_password) == ""){
		$valid = false;
		$pesan .= "Password Lama Harus Diisi !!<br />";
	}elseif($current_password != $row_cek->password){
		$valid = false;
		$pesan .= "Password Lama Salah !!<br />";
	}
	
	if(trim($new_password) == ""){
		$valid = false;
		$pesan .= "Password Baru Harus Diisi !!<br />";
	}elseif(strlen($new_password) <5){
		$valid = false;
		$pesan .= "Password Baru Minimal 5 Digit !!<br />";
	}
	
	if(trim($confirm_password)==""){
		$valid = false;
		$pesan .= "Confirm Password Harus Diisi !!<br />";
	}elseif($confirm_password != $new_password){
		$valid = false;
		$pesan .= "Confirm Password Harus Sama Dengan New Password !!<br />";
	}
	
	$sql = "update user set password = '$new_password' where username = '".$_SESSION['username']."'";
	if($valid){
		$result = mysql_query($sql);
		if($result){
			$error = false;
			$pesan = "Password berhasil diubah";
		}else{
			$Pesan = "Error : ".mysql_error();
		}
	}
	
	set_msg($pesan, $error);
	header("Location: ../index.php");
}


?>