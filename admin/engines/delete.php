<?php
include "../../config/koneksi.php";

$id = mysql_real_escape_string($_GET['id']);
$table = mysql_real_escape_string($_GET['p']);

if($table == 'inbox'){
    $sql = "delete from inbox where ID = '$id'";
	$redirect = "index.php?page=sms&p=inbox";
}elseif($table == 'outbox'){
	$sql = "delete from outbox where ID = '$id'";
	$redirect = "index.php?page=sms&p=outbox";
}elseif($table == 'sentitems'){
	$sql = "delete from sentitems where ID = '$id'";
	$redirect = "index.php?page=sms&p=sent";
}elseif($table == 'pbk_groups'){
	$sql = "delete from pbk_groups where ID = '$id'";
	$redirect = "index.php?page=sms&p=groups";
}elseif($table == 'pbk'){
	$sql = "delete from pbk where ID = '$id'";
	$redirect = "index.php?page=sms&p=contacts";
}elseif($table == 'artikel'){
	$sql = "delete from artikel where id_artikel = '$id'";
	$redirect = "index.php?page=home&p=artikel";
}elseif($table == 'guru'){
	$sql = "delete from guru where id_guru = '$id'";
	$redirect = "index.php?page=home&p=guru";
}

$query = mysql_query($sql);
if($query){
	if($table == 'guru'){
		$sql_del = "delete from teach where id_guru ='$id'";
	    mysql_query($sql_del);
	}
	header("Location: ../$redirect");
}

?>