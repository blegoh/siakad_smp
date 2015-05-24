<?php

include "../../config/koneksi.php";

if(isset($_POST)){
	$valid = true;
	$pesan = "";
	
	$username = $_SESSION['admin'];
	$old_pass = md5(mysql_real_escape_string(trim($_POST['old'])));
	$pwd1 = mysql_real_escape_string(trim($_POST['pwd1']));
	$pwd2 = mysql_real_escape_string(trim($_POST['pwd2']));
	
	//cek password lama
	$sql_cek = "select * from admin where username = '$username' and password = '$old_pass'";
	$res_cek = mysql_query($sql_cek);
	$num_cek = mysql_num_rows($res_cek);
	
	if($_POST['old'] == ""){
		$valid = false;
		$pesan .= "<br />Old Password Harus Diisi !!";
	}elseif($num_cek != 1){
		$valid = false;
		$pesan .= "<br />Old Password Salah !!";
	}
	if($pwd1 == ""){
		$valid = false;
		$pesan .= "<br />New Password Harus Diisi !!";
	}elseif(strlen($pwd1) < 5){
		$valid = false;
		$pesan .= "<br />New Password minimal 5 karakter !!";
	}
	
	if($pwd2 == ""){
		$valid = false;
		$pesan .= "<br />Confirm New Password Harus Diisi !!";
	}elseif($pwd1 != $pwd2){
		$valid = false;
		$pesan .= "<br />Confirm New Password Harus sama dengan Password !!";
	}
	
	$sql = "update admin set password = md5('$pwd1') where username = '".$_SESSION['admin']."'";
	if($valid){
		$query = mysql_query($sql);
		if($query){
			$pesan = "Password berhasil diubah";
			$error = false;
		}else{
			$pesan = "ERROR : ".mysql_error();
			$error = true;
		}
	}else{
		$error = true;
	}
	
	set_msg($pesan,$error);
	header("Location: ../index.php?page=account&p=ubah");
	
}

?>