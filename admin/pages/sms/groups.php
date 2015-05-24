<div class="art-post-body">
                                    <div class="art-post-inner art-article">
				        <h2 class="art-postheader">
				            <?php
							satpam(array(2,3));
					    if(isset($_GET['id'])){
						echo "Edit Groups";			
					    }else{
						echo "Add Groups";			
					    }
					    ?>
                                        </h2>
						<?php show_msg(); ?>
					<div class="art-postcontent">
					<?php
					if(isset($_GET['id'])){
					    $action = "engines/edit.php";
					    $id = mysql_real_escape_string($_GET['id']);
					    $sql = "select * from pbk_groups where ID= '$id'";
					    $query = mysql_query($sql);
					    $row = mysql_fetch_object($query);
					}else{
					    $action = "engines/add.php";			
					}
					?>
					<div class="formlayout">
				        <form action="<?php echo $action; ?>" method="post">
						     <label>Name</label>
                             <div class="input">
						     <input type="text" name="nama" <?php if(isset($id)){echo "value=\"".$row->Name."\"";}
						     ?>>
                             </div><br />
				    		     <label></label><input type="hidden" name="table" value="pbk_groups" >
							<input type="hidden" name="redirect" value="index.php?page=sms&p=groups" >
							<?php if(isset($_GET['id'])){echo "<input type=\"hidden\" name=\"id\" value=\"".$row->ID."\" >";} ?>
						      <div class="input"><input type="submit" value="Save" />
						      <?php
						      if(isset($_GET['id'])){
							?>
							<input  type="button" onclick="location.href='index.php?page=sms&p=groups';" value="Cancel" >
						      <?php }
						      ?></div><br />
									
					</form>
					</div>
					</div>
					<br />
                                        <h2 class="art-postheader">
                                            List Groups
                                        </h2>
                                        <div class="art-postcontent">
                                                <!-- article-content -->
                                                <?php
                                                $sql_groups = "SELECT * FROM `pbk_groups`";
                                                $query_groups = mysql_query($sql_groups);
                                                ?>
                                                <table class="art-article" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Group Name</th>
                                                    <th>Action</th>
                                                </tr>
                                                <?php
                                                while($row_groups = mysql_fetch_object($query_groups)){
                                                    echo "<tr>
                                                          <td>".$row_groups->ID."</td>
                                                          <td>".$row_groups->Name."</td>
                                                          <td><a class='confirm' href=\"engines/delete.php?p=pbk_groups&id=".$row_groups->ID."\">[DELETE]</a>
							  <a href=\"index.php?page=sms&p=groups&id=".$row_groups->ID."\">[EDIT]</a></td>";
                                                }
                                                ?>
                                                </table>
                                                <!-- /article-content -->
                                        </div>
                                        <div class="cleared"></div>
                                    </div>
                            
                            	    <div class="cleared"></div>
                                </div>