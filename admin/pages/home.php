<div class="art-layout-cell art-content">
                            <div class="art-post">
                                <div class="art-post-tl"></div>
                                <div class="art-post-tr"></div>
                                <div class="art-post-bl"></div>
                                <div class="art-post-br"></div>
                                <div class="art-post-tc"></div>
                                <div class="art-post-bc"></div>
                                <div class="art-post-cl"></div>
                                <div class="art-post-cr"></div>
                                <div class="art-post-cc"></div>
			    <?php show_msg(); ?>
					    <?php
				//dispatcher
				if(isset($_GET["p"])) {
				    $page = "pages/home/".$_GET["p"].".php";
				    if(is_file($page)){
					include($page);
				    }else{
					echo "<h2 class=\"art-postheader\">Page Not Found </h2>";
				    }
				}else{
				    include("pages/home/default.php");
				}
				?>
				</div>
                            
                        </div>