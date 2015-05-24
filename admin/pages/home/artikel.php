<div class="art-post-body">
    <div class="art-post-inner art-article">
        <h2 class="art-postheader">
            List Artikel
        </h2>
        <div class="art-postcontent">
        <?php
		satpam(array(1,2,3));
		?>
            <a href="index.php?page=home&p=post_artikel" class="art-button"> Posting Artikel</a><br /><br /><br />
            <?php
			include "../config/BlegohPagingClass.php";
			$data = 5;
			$sql = "select *,DATE_FORMAT(`tgl`,'%d %M %Y') AS tgl_format  from artikel
					order by tgl desc";
			$paging = new BlegohPaging($sql,$data,"index.php?page=home&p=artikel","aktif","paging","prevnext");
			$query= $paging->getResult();
			?>
            <table class="art-article" border="0" cellspacing="0" cellpadding="0">
            <tr>
            	<th>ID</th>
                <th width="100">Tanggal</th>
                <th>Judul</th>
                <th>Foto</th>
                <th width="110">Aksi</th>
            </tr>
            <?php
			while($row = mysql_fetch_object($query)){
			?>
            <tr>
            	<td><?=$row->id_artikel?></td>
                <td><?=$row->tgl_format?></td>
                <td><?=$row->judul?></td>
                <td><?php 
					if($row->foto != ""){
						echo "<img src=\"images/".$row->foto."\" width=\"100px\" />";
					}
					?>
				</td>
                <td><a class="art-button" href="index.php?page=home&p=post_artikel&id=<?=$row->id_artikel?>" >Edit</a><a class='art-button' href="engines/delete.php?p=artikel&id=<?=$row->id_artikel?>" onclick="return confirm('Are you sure you want to do that?');">DELETE</a></td>
            </tr>
            <?php
			}
			?>
            </table>    
        </div>
        <div class="cleared"></div>
    </div>

    <div class="cleared"></div>
</div>	