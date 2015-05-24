<?php 
include "../config/koneksi.php";
if(isset($_GET['u']) && ($_GET['u']=='admin')){
	unset($_SESSION['admin']);
	unset($_SESSION['level']);
}else{
	unset($_SESSION["username"]);
}
set_msg("Anda Berhasil Logout :D");
header("Location: ../");
exit;
?>