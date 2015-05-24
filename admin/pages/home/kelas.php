<div class="art-post-body">
    <div class="art-post-inner art-article">
    <?php
	satpam(array(2,3));
    if(isset($_GET['modus']) && in_array($_GET['modus'], array("add","edit"))){
		if(isset($_GET['id'])){
			$action = "engines/edit.php";
			$id = mysql_real_escape_string($_GET['id']);
			$sql_kelas = "select * from kelas where kd_kelas = '$id'";
			$query_kelas = mysql_query($sql_kelas);
			$row_kelas = mysql_fetch_object($query_kelas);
		}else{
			$action = "engines/add.php";			
		}
		echo "<h2 class=\"art-postheader\">
				".$_GET['modus']." kelas 
			  </h2>
			  <div class=\"art-postcontent\">
			  <div class=\"formlayout\">";
			  $sql_wali = "select * from guru";
			  $res_wali = mysql_query($sql_wali);

		?>
        <form action="<?php echo $action; ?>" method="post">
        	<label>Kode Kelas</label>
            <div class="input"><input type="text" name="id" <?php if(isset($id)){echo "value ='".$row_kelas->kd_kelas."'";} ?><?php 
			if(isset($id)){echo "readonly";} ?> /></div><br />
            <label>Nama Kelas</label>
            <div class="input"><input type="text" name="nama" <?php if(isset($id)){echo "value ='".$row_kelas->nama_kelas."'";} ?> /></div><br />
            <label>Wali</label>
            <div class="input">
            <select name="wali">
            	<option value=""></option>
                <?php 
				while($row_wali = mysql_fetch_object($res_wali)){
					echo "<option value='$row_wali->id_guru' ";
					if(isset($id)){ if($row_wali->id_guru == $row_kelas->wali){echo "selected";}}
					echo ">$row_wali->nama</option>";
				}
				?>
            </select></div><br />
            <label></label>
            <input type="hidden" name="table" value="kelas" >
			<input type="hidden" name="redirect" value="index.php?page=home&p=kelas" >
            <div class="input"><input type="submit" value="<?php if($_GET['modus']== "add"){echo "Tambah";}elseif($_GET['modus']== "edit"){echo "Update";} ?>" />
            <input type="button" value="cancel" onclick="location.href='index.php?page=home&p=kelas';" /></div><br />
        </form>
        <?php
		echo "</div></div>";
	}
	?>
<h2 class="art-postheader">
    List Kelas
</h2>
<div class="art-postcontent">
	<?php
	
	if(!isset($_GET['modus'])){
		echo "<a class=\"art-button\" href=\"index.php?page=home&p=kelas&modus=add\">Tambah Kelas</a><br /><br />";
	}
	?>
    <!-- article-content -->
    <?php
    include "../config/BlegohPagingClass.php";
    $data = 15;
    $sql = "select kd_kelas, nama_kelas, nama from kelas k
            left join guru g on k.wali = g.id_guru";
    $paging = new BlegohPaging($sql,$data,"index.php?page=home&p=kelas","aktif","paging","prevnext");
    $query_kelas = $paging->getResult();
    ?>
    <br />
    <table class="art-article" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<th>Kode Kelas</th>
	<th>Nama Kelas</th>
    <th>Nama Wali</th>
    <th>Daftar guru</th>
	<th>Aksi</th>
    </tr>
    <?php
	while($row_kelas = mysql_fetch_object($query_kelas)){
    ?>
    <tr>
	<td><?=$row_kelas->kd_kelas?></td>
	<td><?=$row_kelas->nama_kelas?></td>
    <td><?=$row_kelas->nama?></td>
    <td><a href="index.php?page=home&p=daftar_guru&kd_kelas=<?=$row_kelas->kd_kelas?>">Daftar guru</a></td>
    <td>
		<a class='art-button' href="index.php?page=home&p=kelas&modus=edit&id=<?=$row_kelas->kd_kelas?>">EDIT</a>
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