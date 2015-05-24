<?php

include "../config/koneksi.php";

if(isset($_POST)){
	$username = mysql_real_escape_string(trim($_POST['newusername']));
	$confirm =  mysql_real_escape_string(trim($_POST['confirmusername']));
		
	$valid = true;
	$pesan = "";
	$error = true;
		
	if(trim($username) == ""){
		$valid = false;
		$pesan .= "Username Baru Harus Diisi !!<br />";
	}elseif(strlen($username) <5){
		$valid = false;
		$pesan .= "Username Baru Minimal 5 Digit !!<br />";
	}
	
	if(trim($confirm)==""){
		$valid = false;
		$pesan .= "Confir Username Harus Diisi !!<br />";
	}elseif($confirm != $username){
		$valid = false;
		$pesan .= "Confirm Username Harus Sama Dengan New Username !!<br />";
	}
	
	//mengambil id guru berdasarkan username
	$sql_cek = "select * from user where username = '".$_SESSION['username']."'";
	$res_cek = mysql_query($sql_cek);
	$row_cek = mysql_fetch_object($res_cek);
	$id_guru = $row_cek->id_guru;
	
	$sql = "update user set username = '$username' where id_guru = '$id_guru'";
	if($valid){
		$result = mysql_query($sql);
		if($result){
			$_SESSION['username'] = $username;
			$error = false;
			$pesan = "Username berhasil diubah ".$_SESSION['username'];
		}else{
			$Pesan = "Error : ".mysql_error();
		}
	}
	
	set_msg($pesan, $error);
	header("Location: ../index.php");
}


?>