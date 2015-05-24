<?php

include "../../config/koneksi.php";

if(isset($_GET['thn'])){
	$thn = $_GET['thn'];
	$sql = "select DISTINCT(sem) from nilai where thn='$thn'";
	$res = mysql_query($sql);
	while($row = mysql_fetch_object($res)){
		echo "<option value='$row->sem'>$row->sem</option>";
	}
}

?>