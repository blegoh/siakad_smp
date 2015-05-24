<?php
if(!defined("valid")){die("Access forbidden! <br />You don't have permission to access the requested object. ");}
?>
		
			<?php
			
			if(isset($_GET['id']) && is_numeric($_GET['id'])){
				$id_artikel = mysql_real_escape_string($_GET['id']);
				$sql_artikel = "select *, DATE_FORMAT(`tgl`,'%d %M %Y') AS tgl_format from artikel where id_artikel = '$id_artikel'";
				$query_artikel = mysql_query($sql_artikel);
				$row_artikel = mysql_fetch_array($query_artikel);
				echo "
						<div class=\"post\">
						<h2 class=\"title\">".$row_artikel['judul']."</h2>
						<p class=\"meta\"><span class=\"date\">".$row_artikel['tgl_format']."</span><span class=\"posted\">Posted by <a>".$row_artikel['posted']."</a></span></p>
						<div style=\"clear: both;\">&nbsp;</div>
						<div class=\"entry\">";
						
						if($row_artikel['foto'] !=""){
							echo "<img class=\"img_artikel\" src=\"admin/images/".$row_artikel['foto']."\" width=\"185px\" />";
						}
						
				echo 	$row_artikel['isi']."
						</div>
						</div>
					";
					show_msg();
					if(isset($_SESSION['form'])){
						extract($_SESSION['form']);
					}
					unset($_SESSION['form']);
				?>
                <h2>Comment <span>Form</span></h2>
              <form id="contacts-form" action="engines/proses_comment.php" method="post">
                <fieldset>
                  <div class="field">
                    <label>Your Name:</label>
                    <input type="text" id="nama" name="nama" value="<?php if(isset($nama)){ echo $nama; } ?>" >
                    <input type="hidden" id="artikel" name="artikel" value="<?php echo $_GET['id']; ?>" />
                    <input type="hidden" name="redirect" value="<?php echo $_SERVER['REQUEST_URI']; ?>" />
                  </div>
                  <div class="field">
                    <label>Your E-mail:</label>
                    <input type="text" id="email" name="email" value="<?php if(isset($nama)){ echo $email; } ?>">
                  </div>
                  <div class="field">
                    <label>Your Website:</label>
                    <input type="text" id="web" name="web" value="<?php if(isset($nama)){ echo $web; } ?>" >
                  </div>
                  <div class="field">
                    <label>Your Comment:</label>
                    <textarea id="comment" name="comment"><?php if(isset($nama)){ echo $comment; } ?></textarea>
                  </div>
                  <div><input class="submit" type="submit" value="Send Your Comment!"/></div>
                </fieldset>
              </form>
                <?
				$sql_comment = "select *, date_format(tgl, '%d %M %Y') tgl_c from comment where id_artikel = '$id_artikel' and induk_comment = 0 order by tgl desc";
				$res_comment = mysql_query($sql_comment);
				$jum_comment = mysql_num_rows($res_comment);
				if($jum_comment > 0){
					?>
                    <div id="list-comment">
                    <?
					while($row_comment = mysql_fetch_object($res_comment)){
						echo "
								
								<div class='comment'>
									<div class='head'>
										$row_comment->tgl_c <br />";
						if($row_comment->website  != ""){
							echo "<a href='$row_comment->website' target='_blank'>$row_comment->nama</a>";
						}else{
							echo "$row_comment->nama";
						}
										
						echo " mengatakan <br />
									</div>
									<blockquote>$row_comment->comment</blockquote>
							    </div>
						
						
								";
					}
					?>
                    </div>
                    <?
				}
				
			}else{
				include "config/BlegohPagingClass.php";
				$data = 3;
				$sql = "select *, DATE_FORMAT(`tgl`,'%d %M %Y') AS tgl_format from artikel ";
				if(isset($_GET['search'])){
					$sql .= "where judul like '%".$_GET['search']."%' ";
				}
				$sql .= "order by tgl_format desc ";
				$paging = new BlegohPaging($sql,$data,"index.php","aktif","paging","prevnext");
				$query_artikel = $paging->getResult();
				while($row_artikel = mysql_fetch_array($query_artikel)){
					echo "
						<div class=\"post\">
						<h2 class=\"title\"><a href=\"index.php?page=home&id=".$row_artikel['id_artikel']."\">".$row_artikel['judul']."</a></h2>
						<p class=\"meta\"><span class=\"date\">".$row_artikel['tgl_format']."</span><span class=\"posted\">Posted by <a>".$row_artikel['posted']."</a></span></p>
						<div style=\"clear: both;\">&nbsp;</div>
						<div class=\"entry\">
						".cuplikan($row_artikel['isi'])." .....
						<p class=\"links\"><a href=\"index.php?page=home&id=".$row_artikel['id_artikel']."\">Read More</a>
						&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"pages/comment.php?id=".$row_artikel['id_artikel']."\" rel=\"facebox\">Comments</a></p>
						</div>
						</div>
					";
				}
				echo "<center><div id=\"paging\">";
				$paging->getPaging();
				echo "</div></center>";
				
			}
			
			

			?>
		<div style="clear: both;">&nbsp;</div>