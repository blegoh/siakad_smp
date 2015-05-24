<?php

include "../../config/koneksi.php";

if(isset($_GET['id'])){
	$id = $_GET['id'];
	$sql = "select * from pbk where GroupID = '$id'";
	$res = mysql_query($sql);
	while($row = mysql_fetch_object($res)){
		echo "<option value='$row->Number'>$row->Name</option>";
	}
}

?>