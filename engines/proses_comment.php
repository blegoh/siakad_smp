<?php

include "../config/koneksi.php";

if(isset($_POST)){
	$msg = "";
	$valid = true;
	$nama = trim(mysql_real_escape_string($_POST['nama']));
	$id_artikel = $_POST['artikel'];
	$email = trim(mysql_real_escape_string($_POST['email']));
	$pola_email = "^.+@.+..+.$";
	$web = trim(mysql_real_escape_string($_POST['web']));
	$comment = htmlspecialchars(trim(mysql_real_escape_string($_POST['comment'])));
	$redirect = $_POST['redirect'];
	if($nama == ""){
		$valid = false;
		$msg .= "<br />Nama Harus Diisi :@...";
	}
	if($email==""){
    	$valid = false;
		$msg .= "<br />Email Harus Di Isi :@...";
	}elseif(!eregi($pola_email,$email)){
    	$valid = false;
		$msg .= "<br />Isi Email Dengan Benar :@...";
	}
	if($web !=""){
		if(!(substr($web,0,7) == "http://" || substr($web,0,8) == "https://" )){
			$valid = false;
			$msg .= "<br />Isi Website Dengan Benar, Gunakan HTTP:// ...:@...";
		}
		if(!strpos($web,".")){
			$valid = false;
			$msg .= "<br />Isi Website Dengan Benar, ...:@...";
		}
	}
	if($comment == ""){
		$valid =false;
		$msg .= "<br />Comment Harus Diisi :@...";
	}elseif(strlen($comment)<6){
		$valid =false;
		$msg .= "<br />Comment Terlalu Pendek :@...";
	}
	if($valid){
		$sql_comment = "insert into comment(tgl,id_artikel,nama,email,website,comment) values(NOW(),$id_artikel,'$nama','$email','$web','$comment')";
		$res_comment = mysql_query($sql_comment);
		if($res_comment){
			set_msg("Comment Sent Succesfull..");
		}else{
			$msg = "ERROR: ".mysql_error();
			set_msg($msg,true);
		} 
	}else{
		set_msg($msg,true);
		$_SESSION['form'] = $_POST;
	}
	header("Location: $redirect");
}

?>