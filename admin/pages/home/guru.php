<div class="art-post-body">
    <div class="art-post-inner art-article">
    <?php
	satpam(array(2,3));
	if(isset($_GET['modus']) && in_array($_GET['modus'], array("add","edit"))){
		if(isset($_GET['id'])){
			$action = "engines/edit.php";
			$id = mysql_real_escape_string($_GET['id']);
			$sql_guru = "select * from guru where id_guru = '$id'";
			$query_guru = mysql_query($sql_guru);
			$row_guru = mysql_fetch_object($query_guru);
		}else{
			$action = "engines/add.php";			
		}
		echo "<h2 class=\"art-postheader\">
				".$_GET['modus']." guru 
			  </h2>
			  <div class=\"art-postcontent\">
			  <div class=\"formlayout\">";
			  $sql_mapel = "select * from mapel";
			  $res_mapel = mysql_query($sql_mapel);
		?>
        <form action="<?php echo $action; ?>" method="post">
        	<label>ID Guru</label>
            <div class="input"><input type="text" name="id" <?php if(isset($id)){echo "value ='".$row_guru->id_guru."'";} ?><?php 
			if(isset($id)){echo "readonly";} ?> /></div><br />
            <label>Nama</label>
            <div class="input"><input type="text" name="nama" <?php if(isset($id)){echo "value ='".$row_guru->nama."'";} ?> />
            </div><br />
            <label>Mapel</label>
            <div class="input"><select name="mapel">
            	<option value=""></option>
                <?php
				while($row_mapel = mysql_fetch_object($res_mapel)){
					echo "<option value=\"".$row_mapel->kd_mapel."\"";
					if(isset($id)){ if($row_mapel->kd_mapel == $row_guru->kd_mapel){echo "selected";}}
					echo ">".$row_mapel->nama_mapel."</option>";
				}
				?>
            </select></div><br />
            <label>Teach</label>
            <div class="input">
            <?php
			$sql_kelas = "select * from kelas";
			$res_kelas = mysql_query($sql_kelas);
			while($row_kelas = mysql_fetch_object($res_kelas)){
				echo "<input type=\"checkbox\" name=\"".$row_kelas->kd_kelas."\" value=\"".$row_kelas->kd_kelas."\"";
				$sql_teach_edit = "select * from teach where id_guru = '$id' and kd_kelas = '".$row_kelas->kd_kelas."' ";
				$res_teach_edit = mysql_query($sql_teach_edit);
				$count =  mysql_num_rows($res_teach_edit);
				if($count > 0 ) { echo "checked='checked'";}
				echo ">".$row_kelas->nama_kelas."&nbsp;";
			}
 			?>
            </div><br />
			<?php
			if(isset($_GET['id'])){?>
            <label></label>
			<div class="input"><a href="engines/reset_password.php?id=<?=$_GET['id']?>">Reset Username dan Password</a>
            </div><br />
			<?php }
			?>

            <label></label>
            <input type="hidden" name="table" value="guru" >
			<input type="hidden" name="redirect" value="index.php?page=home&p=guru" >
            <div class="input"><input type="submit" value="<?php if($_GET['modus']== "add"){echo "Tambah";}elseif($_GET['modus']== "edit"){echo "Update";} ?>" />
            <input type="button" value="cancel" onclick="location.href='index.php?page=home&p=guru';" /></div><br />
        </form>
        <?php
		echo "</div></div>";
	}
	?>
    
    
<h2 class="art-postheader">
    List Guru
</h2>
<div class="art-postcontent">
    <!-- article-content -->
    <?php
	
	if(!isset($_GET['modus'])){
		echo "<a class=\"art-button\" href=\"index.php?page=home&p=guru&modus=add\">Tambah Guru</a><br /><br />";
	}
    include "../config/BlegohPagingClass.php";
    $data = 15;
    $sql = "select id_guru,nama,nama_mapel from guru g
            left join mapel m on g.kd_mapel = m.kd_mapel
			order by id_guru";
    $paging = new BlegohPaging($sql,$data,"index.php?page=home&p=guru","aktif","paging","prevnext");
    $query_guru = $paging->getResult();    
    ?>
    <br />
    <table class="art-article" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<th>ID Guru</th>
	<th>Nama</th>
	<th>Mapel</th>
	<th>Kelas Yg Diajar</th>
	<th>Aksi</th>
    </tr>
    <?php
	while($row_guru = mysql_fetch_object($query_guru)){
    ?>
    <tr>
	<td><?=$row_guru->id_guru?></td>
	<td><?=$row_guru->nama?></td>
	<td><?=$row_guru->nama_mapel?></td>
    <td>
    <?php
	$sql_teach = "select t.id_guru, t.kd_kelas, k.nama_kelas from teach t
					left join kelas k on t.kd_kelas = k.kd_kelas
					where id_guru='".$row_guru->id_guru."'";
	$res_teach = mysql_query($sql_teach);
	$a = "";
	while($row_teach = mysql_fetch_object($res_teach)){
		$a .= $row_teach->nama_kelas.",";
	}
	$a = substr($a,0,strlen($a) - 1 );
	echo $a;
	?>
    </td>
    <td>
    	<a class='art-button' href="index.php?page=home&p=guru&modus=edit&id=<?=$row_guru->id_guru?>">EDIT</a>
    	<a class='art-button' href="engines/delete.php?p=guru&id=<?=$row_guru->id_guru?>" onclick="return confirm('Are you sure you want to do that?');">DELETE</a>
    </td>
	<!--<td><?php //echo $row_guru->kelas_yg_diajar; ?></td>-->
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
	