<div class="art-post-body">
	<?php
	if(isset($_GET['id'])){
		$action = "engines/edit.php";
		$id = mysql_real_escape_string($_GET['id']);
		$sql_artikel = "select * from artikel where id_artikel = '$id'";
		$query_artikel = mysql_query($sql_artikel);
		$row_artikel = mysql_fetch_object($query_artikel);
	}else{
		$action = "engines/add.php";			
	}
	?>
    <div class="art-post-inner art-article">
        <h2 class="art-postheader">
            Post Artikel
        </h2>
        <div class="art-postcontent">
        	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <label><h3>Judul</h3></label><input type="text" name="judul" value="<?php if(isset($id)){ echo $row_artikel->judul;} ?>" /><br />
            <label><h3>Foto</h3></label><input type="file" name="foto" />
            <input type="hidden" name="table" value="artikel" />
            <input type="hidden" name="redirect" value="index.php?page=home&p=artikel" ><br />
            <label><h3>Isi artikel</h3></label>
            <textarea rows="30" id='post-article' name="isi"><?php if(isset($id)){ echo $row_artikel->isi;} ?></textarea>
            <br />
            <?php
			if(isset($id)){
				echo "<input type=\"hidden\" name=\"id\" value=\"$id\" >";
			}
			?>
            <input type="submit" value="Post" />
            <a class="art-button" href="index.php?page=home&p=artikel">Cancel</a>
            </form>
            <script language="Javascript" type="text/javascript">
            $("#post-article").css("width","100%").htmlbox({
                toolbars:[
                    [
                        // Cut, Copy, Paste
                        "separator","cut","copy","paste",
                        // Undo, Redo
                        "separator","undo","redo",
                        // Bold, Italic, Underline, Strikethrough, Sup, Sub
                        "separator","bold","italic","underline","strike","sup","sub",
                        // Left, Right, Center, Justify
                        "separator","justify","left","center","right",
                        // Ordered List, Unordered List, Indent, Outdent
                        "separator","ol","ul","indent",//"outdent",
                        
                    ],
                    [// Show code
                        "separator","code",
                        // Formats, Font size, Font family, Font color, Font, Background
                        "separator","formats","fontsize","fontfamily",
                        "separator","fontcolor","highlight",
                    ],
                    [
                        //Strip tags
                        "separator","removeformat","striptags","hr","paragraph",
                        // Styles, Source code syntax buttons
                        "separator","quote","styles","syntax",
						// Hyperlink, Remove Hyperlink, Image
                        "separator","link","unlink"//,"image"
                    ]
                ],
                skin:"blue"
            });
            </script>
        </div>
        <div class="cleared"></div>
    </div>

    <div class="cleared"></div>
</div>	