<?php

include "../../config/koneksi.php";

if(!isset($_SESSION['admin']))die("Anda tidak berhak mengakses halaman ini");

if(isset($_GET['id'])){
	$id = $_GET['id'];
	//mengambil default password untuk pesan
	$sql_get = "select * from user where id_guru = '".$id."'";
	$res_get = mysql_query($sql_get);
	$row_get = mysql_fetch_object($res_get);
	
	$sql = "update user set username = id_guru, password = md5(default_password) where id_guru = '$id'";
	$result = mysql_query($sql);
	if($result){
		$pesan = "Data berhasil di ubah
				  <br />Username : $id
				  <br />Password : ".$row_get->default_password;
		$error = false;
	}else{
		$pesan = "Error : ".mysql_error();
		$error = true;
	}
	
	set_msg($pesan, $error);
	header("Location: ../index.php?page=home&p=guru");

}

?>