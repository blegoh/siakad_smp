<?php
include "config/koneksi.php";
?>
<!DOCTYPE html>
<html>
<?php
include "parts/head.php";
?>
<body>
<?php
include "parts/form_login.php";
?>
<div id="wrapper">
	<?php
	include "parts/menu.php";
	?>
	<!-- end #menu -->
	<?php
	include "parts/header.php";
	?>
	<!-- end #header -->
	<div id="page">
	<div id="page-bgtop">
	<div id="page-bgbtm">
		<div id="content">
		<?php
			show_msg();
			//dispatcher
			if(isset($_GET["page"])) {
				$page = "pages/".$_GET["page"].".php";
				if(is_file($page)) {
					include($page);
				}else{
					echo "halaman tidak ditemukan </h3>";
				}
			}else{
				include("pages/home.php");
			}
		?>
		</div>
		<!-- end #content -->
		<?php
		include "parts/sidebar.php";
		?>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	</div>
	</div>
	<!-- end #page -->
</div>
	<?php
        include "parts/footer.php";
    ?>
	<!-- end #footer -->
</body>
</html>
