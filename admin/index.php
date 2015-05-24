<?php
include "../config/koneksi.php";
include "../engines/sms.php";
if(!isset($_SESSION['admin'])){
	header("Location: login.php");
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<?php
include "part/head.php";
?>
<body>
<div id="art-page-background-simple-gradient">
        <div id="art-page-background-gradient"></div>
    </div>
    <div id="art-main">
        <div class="art-sheet">
            <?php
	    include "part/tam.php";
	    ?>
            <div class="art-sheet-body">
                <?php
				include "part/nav.php";
				?>
				<!-- End Of art-nav -->
                <?php
				include "part/header.php";
				?>
				<!-- End Of art-header -->
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <?php
						include "part/sidebar.php";
						?>
						<!-- End Of Sidebar -->
                        <?php
						//dispatcher
						if(isset($_GET["page"])) {
							$page = "pages/".$_GET["page"].".php";
							if(is_file($page)) {
								include($page);
							}else{
								echo "halaman tidak ditemukan ";
							}
						}else{
							include("pages/home.php");
						}
						?>
						<!-- End Of Content -->
                    </div>
                </div>
                <div class="cleared"></div>
				<?php
				include "part/footer.php";
				?>
				<!-- End Of Footer -->
        		<div class="cleared"></div>
            </div>
			<!-- End Of art-sheet-body -->
        </div> 
		<!-- End Of Art-Sheet -->
        <div class="cleared"></div>
        <p class="art-page-footer"><a href="http://www.artisteer.com/">Web Template</a> created with Artisteer.</p>
    </div>
    <!-- End Of Main -->
</body>
</html>
