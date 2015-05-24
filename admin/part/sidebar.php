<div class="art-layout-cell art-sidebar1">
                            <div class="art-vmenublock">
                                <div class="art-vmenublock-tl"></div>
                                <div class="art-vmenublock-tr"></div>
                                <div class="art-vmenublock-bl"></div>
                                <div class="art-vmenublock-br"></div>
                                <div class="art-vmenublock-tc"></div>
                                <div class="art-vmenublock-bc"></div>
                                <div class="art-vmenublock-cl"></div>
                                <div class="art-vmenublock-cr"></div>
                                <div class="art-vmenublock-cc"></div>
                                <div class="art-vmenublock-body">
                                            <div class="art-vmenublockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">Menu</div>
                                            </div>
                                            <div class="art-vmenublockcontent">
                                                <div class="art-vmenublockcontent-body">
                                            <!-- block-content -->
										    <?php
												if($_GET['page'] == 'sms'){
													include "part/sidebar/sms.php";
												}elseif($_GET['page'] == 'account'){
													include "part/sidebar/account.php";
												}else{
													include "part/sidebar/default.php";
												}
											?>
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            
                            
                            <div class="art-block">
                                <div class="art-block-tl"></div>
                                <div class="art-block-tr"></div>
                                <div class="art-block-bl"></div>
                                <div class="art-block-br"></div>
                                <div class="art-block-tc"></div>
                                <div class="art-block-bc"></div>
                                <div class="art-block-cl"></div>
                                <div class="art-block-cr"></div>
                                <div class="art-block-cc"></div>
                                <div class="art-block-body">
                                            <div class="art-blockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">Powered By</div>
                                            </div>
                                            <div class="art-blockcontent">
                                                <div class="art-blockcontent-body">
                                            <!-- block-content -->
                                                            <div>
                                                                  <img src="images/contact.jpg" alt="an image" style="margin: 0 auto;display:block;width:95%" />
                                                            <br />
                                                            
                                                            </div>
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                            		<div class="cleared"></div>
                                </div>
                            </div>
                        </div>