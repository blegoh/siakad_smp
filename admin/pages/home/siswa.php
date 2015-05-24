<div class="art-post-body">
    <div class="art-post-inner art-article">
    <?php
	satpam(array(2,3));
    if(isset($_GET['modus']) && in_array($_GET['modus'], array("add","edit"))){
		if(isset($_GET['id'])){
			$action = "engines/edit.php";
			$id = mysql_real_escape_string($_GET['id']);
			$sql_siswa = "select * from siswa where nis = '$id'";
			$query_siswa = mysql_query($sql_siswa);
			$row_siswa = mysql_fetch_object($query_siswa);
		}else{
			$action = "engines/add.php";			
		}
		echo "<h2 class=\"art-postheader\">
				".$_GET['modus']." siswa 
			  </h2>
			  <div class=\"art-postcontent\">
			  <div class=\"formlayout\">";
			  $sql_kelas = "select * from kelas";
			  $res_kelas = mysql_query($sql_kelas);
			  $sql_status = "select * from status_siswa";
			  $res_status = mysql_query($sql_status);
		?>
        <form action="<?php echo $action; ?>" method="post">
        	<label>NIS</label>
            <div class="input"><input type="text" name="id" <?php if(isset($id)){echo "value ='".$row_siswa->nis."'";} ?><?php 
			if(isset($id)){echo "readonly";} ?> /></div><br />
            <label>Nama</label>
            <div class="input"><input type="text" name="nama" <?php if(isset($id)){echo "value ='".$row_siswa->nama."'";} ?> /></div><br />
            <label>Jenis Kelamin</label>
            <div class="input"><select name="jk">
            	<option value=""></option>
                <option value="L" <?php if(isset($id)){ if($row_siswa->jk == "L"){echo "selected";}} ?>>Laki-Laki</option>
                <option value="P" <?php if(isset($id)){ if($row_siswa->jk == "P"){echo "selected";}} ?>>Perempuan</option>
            </select></div><br />
            <label>Stasus</label>
            <div class="input"><select name="status">
            	<option value=""></option>
                <?php
				while($row_status = mysql_fetch_object($res_status)){
					echo "<option value=\"".$row_status->kd_status."\"";
					if(isset($id)){ if($row_status->kd_status == $row_siswa->kd_status){echo "selected";}}
					echo ">".$row_status->status_siswa."</option>";
				}
				?>
            </select></div><br />
            <label>Kelas</label>
            <div class="input"><select name="kelas">
            	<option value=""></option>
                <?php
				while($row_kelas = mysql_fetch_object($res_kelas)){
					echo "<option value=\"".$row_kelas->kd_kelas."\"";
					if(isset($id)){ if($row_kelas->kd_kelas == $row_siswa->kd_kelas){echo "selected";}}
					echo ">".$row_kelas->nama_kelas."</option>";
				}
				?>
            </select></div><br />
            <label></label>
            <input type="hidden" name="table" value="siswa" >
			<input type="hidden" name="redirect" value="index.php?page=home&p=siswa" >
            <div class="input"><input type="submit" value="<?php if($_GET['modus']== "add"){echo "Tambah";}elseif($_GET['modus']== "edit"){echo "Update";} ?>" />
            <input type="button" value="cancel" onclick="location.href='index.php?page=home&p=siswa';" /></div><br />
        </form>
        <?php
		echo "</div></div>";
	}
	?>
<h2 class="art-postheader">
    List Siswa
</h2>
<div class="art-postcontent">
	<?php
	
	if(!isset($_GET['modus'])){
		echo "<a class=\"art-button\" href=\"index.php?page=home&p=siswa&modus=add\">Tambah Siswa</a>
				&nbsp;&nbsp;&nbsp
				<form action='index.php' method='get' style=\"float:right\">
					Search
					<input type=\"hidden\" name='page' value='home'>
					<input type=\"hidden\" name='p' value='siswa'>
					<select name='filterby' id='filterby'>
						<option value=''></option>
						<option value='nis'>Nomor Induk</option>
						<option value='nama'>Nama Siswa</option>
					</select>
					<input type='text' name='filtertxt' id='filtertxt'>
					<input type='submit' value='Go' onclick='return cekSearch()'>
					
				</form>";
		
	}
	?>
    <br /><br />
    <!-- article-content -->
    <?php
    include "../config/BlegohPagingClass.php";
    $data = 15;
	$url = "index.php?page=home&p=siswa";
    $sql = "select s.nis,s.nama,s.jk, k.nama_kelas,ss.status_siswa from siswa s 
			left join kelas k on s.kd_kelas = k.kd_kelas
			left join status_siswa ss on s.kd_status = ss.kd_status ";
			 
	if((isset($_GET['filterby']) && trim($_GET['filterby']) != '') && (isset($_GET['filtertxt']) && trim($_GET['filtertxt']) != '') ){
		$sql .= "where ".trim($_GET['filterby'])." like '%".trim($_GET['filtertxt'])."%' ";
		$url .= "&filterby=".$_GET['filterby']."&filtertxt=".$_GET['filtertxt'];
	}
    
	$paging = new BlegohPaging($sql,$data,$url,"aktif","paging","prevnext");
	$query_siswa = $paging->getResult();
    
    ?>
    <br />
    <table class="art-article" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<th>NIS</th>
	<th>Nama</th>
	<th>JK</th>
	<th>Kelas</th>
    <th>Status</th>
	<th>Aksi</th>
    </tr>
    <?php
	while($row_siswa = mysql_fetch_object($query_siswa)){
    ?>
    <tr>
	<td width="50"><?php echo $row_siswa->nis; ?></td>
	<td width="300"><?php echo $row_siswa->nama; ?></td>
	<td width="60"><?php echo $row_siswa->jk; ?></td>
	<td width="60"><?php echo $row_siswa->nama_kelas; ?></td>
    <td width="60"><?php echo $row_siswa->status_siswa; ?></td>
    <td>
		<a class='art-button' href="index.php?page=home&p=siswa&modus=edit&id=<?php echo $row_siswa->nis; ?>">EDIT</a>
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