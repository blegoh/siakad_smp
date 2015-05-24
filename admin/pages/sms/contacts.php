<div class="art-post-body">
                                    <div class="art-post-inner art-article">
				        <h2 class="art-postheader">
				            <?php
							satpam(array(2,3));
							if(isset($_SESSION['form'])){
								extract($_SESSION['form']);
								unset($_SESSION['form']);
							}
							
							$sql_groups = "select * from pbk_groups";
							$query_groups = mysql_query($sql_groups);
					    if(isset($_GET['id'])){
						echo "Edit Contacts";			
					    }else{
						echo "Add Contacts";			
					    }
					    ?>
                                        </h2>
						<?php show_msg(); ?>
					<div class="art-postcontent">
					<?php
					
					if(isset($_GET['id'])){
					    $action = "engines/edit.php";
					    $id = mysql_real_escape_string($_GET['id']);
					    $sql = "select * from pbk where ID= '$id'";
					    $query = mysql_query($sql);
					    $row = mysql_fetch_object($query);
					}else{
					    $action = "engines/add.php";			
					}
					?>
					<div class="formlayout">
				        <form action="<?php echo $action; ?>" method="post">
						     <label>Name</label>
						     <div class="input"><input type="text" name="nama" <?php if(isset($nama)){echo "value=\"".$nama."\"";}elseif(isset($id)){echo "value=\"".$row->Name."\"";}
						     ?>></div><br />
                             <label>Number</label>
						     <div class="input"><input type="text" name="nomer" <?php if(isset($nomer)){echo "value=\"".$nomer."\"";}elseif(isset($id)){echo "value=\"".$row->Number."\"";}
						     ?>></div><br />
                             <label>Groups</label>
                             <div class="input">
                             <select name="groups">
                             	<option value=""></option>
                                <?php 
								while($row_groups = mysql_fetch_object($query_groups)){
									?>
                                    <option value="<?php echo $row_groups->ID;?>" <?php if(isset($groups)){
											if($row_groups->ID == $groups){ echo "selected";}
										}elseif(isset($id)){
											if($row_groups->ID == $row->GroupID){ echo "selected";}
										}
										 ?> ><?php echo $row_groups->Name; ?> </option>
                                    <?php
								}
								?>
                             </select>
                             </div>
                             <br />
				    		     <label></label><input type="hidden" name="table" value="pbk" >
							<input type="hidden" name="redirect" value="index.php?page=sms&p=contacts" >
							<?php if(isset($_GET['id'])){echo "<input type=\"hidden\" name=\"id\" value=\"".$row->ID."\" >";} ?>
						      <div class="input"><input type="submit" value="Save" />
						      <?php
						      if(isset($_GET['id'])){
							?>
							<input  type="button" onclick="location.href='index.php?page=sms&p=contacts';" value="Cancel" >
						      <?php }
						      ?></div><br />
									
					</form>
					</div>
					</div>
					<br />
                                        <h2 class="art-postheader">
                                            List Contacts
                                        </h2>
                                        <div class="art-postcontent">
                                                <!-- article-content -->
                                                <?php
												
                                                $sql_contacts = "SELECT p.id id,p.name nama,number, g.name groups
																 FROM pbk p
																 left join pbk_groups g on p.groupid = g.id";
                                                $query_contacts = mysql_query($sql_contacts);
                                                ?>
                                                <table class="art-article" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Name</th>
                                                    <th>Group</th>
                                                    <th>Number</th>
                                                    <th>Action</th>
                                                </tr>
                                                <?php
                                                while($row_contacts = mysql_fetch_object($query_contacts)){
                                                    echo "<tr>
                                                          <td>".$row_contacts->id."</td>
                                                          <td>".$row_contacts->nama."</td>
														  <td>".$row_contacts->groups."</td>
														  <td>".$row_contacts->number."</td>
                                                          <td><a class='confirm' href=\"engines/delete.php?p=pbk&id=".$row_contacts->id."\" >[DELETE]</a>
							  <a  href=\"index.php?page=sms&p=contacts&id=".$row_contacts->id."\">[EDIT]</a></td>";
                                                }
                                                ?>
                                                </table>
                                                <!-- /article-content -->
                                        </div>
                                        <div class="cleared"></div>
                                    </div>
                            
                            	    <div class="cleared"></div>
                                </div>