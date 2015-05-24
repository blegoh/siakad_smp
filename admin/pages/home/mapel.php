<div class="art-post-body">
    <div class="art-post-inner art-article">
        <?php
		satpam(array(2,3));
    if(isset($_GET['modus']) && in_array($_GET['modus'], array("add","edit"))){
		if(isset($_GET['id'])){
			$action = "engines/edit.php";
			$id = mysql_real_escape_string($_GET['id']);
			$sql_mapel = "select * from mapel where kd_mapel = '$id'";
			$query_mapel = mysql_query($sql_mapel);
			$row_mapel = mysql_fetch_object($query_mapel);
		}else{
			$action = "engines/add.php";			
		}
		echo "<h2 class=\"art-postheader\">
				".$_GET['modus']." mapel 
			  </h2>
			  <div class=\"art-postcontent\">
			  <div class=\"formlayout\">";

		?>
        <form action="<?=$action?>" method="post">
        	<label>Kode Mapel</label>
            <div class="input"><input type="text" name="id" <?php if(isset($id)){echo "value ='".$row_mapel->kd_mapel."'";} ?><?php 
			if(isset($id)){echo "readonly";} ?> /></div><br />
            <label>Nama Mapel</label>
            <div class="input"><input type="text" name="nama" <?php if(isset($id)){echo "value ='".$row_mapel->nama_mapel."'";}?> /></div><br />
            <label>KKM</label>
            <div class="input"><input type="text" name="kkm" <?php if(isset($id)){echo "value ='".$row_mapel->kkm."'";}?> /></div><br />
            <label></label>
            <input type="hidden" name="table" value="mapel" >
			<input type="hidden" name="redirect" value="index.php?page=home&p=mapel" >
            <div class="input"><input type="submit" value="<?php if($_GET['modus']== "add"){echo "Tambah";}elseif($_GET['modus']== "edit"){echo "Update";} ?>" />
            <input type="button" value="cancel" onclick="location.href='index.php?page=home&p=mapel';" /></div><br />
        </form>
        <?php
		echo "</div></div>";
	}
	?>
<h2 class="art-postheader">
    List Mapel
</h2>
<div class="art-postcontent">
    <!-- article-content -->
    <?php
	
	if(!isset($_GET['modus'])){
		echo "<a class=\"art-button\" href=\"index.php?page=home&p=mapel&modus=add\">Tambah Mapel</a><br /><br />";
	}
	?>
    <?php
    include "../config/BlegohPagingClass.php";
    $data = 15;
    $sql = "select * from mapel";
    $paging = new BlegohPaging($sql,$data,"index.php?page=home&p=mapel","aktif","paging","prevnext");
    $query_mapel = $paging->getResult();
    ?>
    <br />
    <table class="art-article" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<th>Kode Mapel</th>
	<th>Nama Mapel</th>
	<th>KKM</th>
	<th>Aksi</th>
    </tr>
    <?php
	while($row_mapel = mysql_fetch_object($query_mapel)){
    ?>
    <tr>
	<td><?=$row_mapel->kd_mapel?></td>
	<td><?=$row_mapel->nama_mapel?></td>
	<td><?=$row_mapel->kkm?></td>
    <td>
		<a class='art-button' href="index.php?page=home&p=mapel&modus=edit&id=<?=$row_mapel->kd_mapel?>">EDIT</a>
    </td>
    </tr>
    <?php } ?>
    </table>
    <br /> <br />
    <div id="paging">
    <center>
    <?php
	$paging->getPaging();
    ?>
    </center>
    </div>
</div>
<div class="cleared"></div>
    </div>

    <div class="cleared"></div>
</div>	