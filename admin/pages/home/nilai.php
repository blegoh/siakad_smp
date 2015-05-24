<?php

$url = "index.php?page=home&p=nilai";
$sql_thn = "select DISTINCT(thn) from nilai";
$res_thn = mysql_query($sql_thn);

?>
<div class="art-post-body">
    <div class="art-post-inner art-article">
    <form action="index.php" method="get" style="float:left">
    	<input type="hidden" name="page" value="home" />
        <input type="hidden" name="p" value="nilai" />
        <select name="thn" id="thn" onchange="getData('engines/load_semester.php?thn='+this.value,'sem')">
        	<option value=""></option>
            <? while($row_thn = mysql_fetch_object($res_thn)){ ?>
            <option value="<?=$row_thn->thn?>"><?=$row_thn->thn?></option>
            <? } ?>
        </select>
        <select name="sem" id="sem">
        
        </select>
        <input type="submit" value="Tampilkan" onclick="return cekThn()" />
    </form>
    <form action="index.php" method="get">
    	Search
    	<input type="hidden" name="page" value="home" />
        <input type="hidden" name="p" value="nilai" />
        <?php
		if(isset($_GET['thn']) && isset($_GET['sem'])){
			echo "<input type=\"hidden\" name=\"thn\" value=\"".$_GET['thn']."\" />";
			echo "<input type=\"hidden\" name=\"sem\" value=\"".$_GET['sem']."\" />";
		}
		?>
        <select name='filterby' id="filterby">
        	<option value=""></option>
            <option value='nis'>Nomor Induk</option>
            <option value='nama'>Nama Siswa</option>
        </select>
        <input type='text' name='filtertxt' id="filtertxt">
        <input type='submit' value='Go' onclick="return cekSearch()">
    </form>
    <br />
    <?php
	if(isset($_GET['sem']) && isset($_GET['thn'])){
		$sem = $_GET['sem'];
		$thn_ajaran = $_GET['thn'];
		$url .= "&thn=$thn_ajaran&sem=$sem";
		echo "<a href='index.php?page=home&p=nilai' >Kembali Ke Semester Sekarang</a>";
	}

	?>
<h2 class="art-postheader">
    List Nilai Semester <?=$sem?> Tahun Ajaran <?=$thn_ajaran?>
</h2>
<div class="art-postcontent">
    <?php
    
    include "../config/BlegohPagingClass.php";
    $data = 30;
    //mengambil mapel yg ada
    $sql = "SELECT * FROM mapel";
    $query = mysql_query($sql);
    $query1 = mysql_query($sql);
    $query2 = mysql_query($sql);
    $query3 = mysql_query($sql);
    
    $sql_nilai = "select s.nis,s.nama";
    while($row = mysql_fetch_array($query)){
        $sql_nilai .= ",".$row['kd_mapel'].".nilai ".str_replace(" ","_",str_replace(".","",$row['nama_mapel']));
    }    
    $sql_nilai .= " from siswa s";
    while($row1 = mysql_fetch_array($query1)){
        
        $sql_nilai .= " left join (select n.nis,s.nama nama_siswa,nama_mapel,nilai from nilai n
                       left join mapel m on n.kd_mapel = m.kd_mapel
                       left join siswa s on n.nis = s.nis
                       where n.kd_mapel = '".$row1['kd_mapel']."' AND sem='$sem' AND thn='$thn_ajaran')
                       ".$row1['kd_mapel']." on s.nis = ".$row1['kd_mapel'].".nis";
    }
    if((isset($_GET['filterby']) && trim($_GET['filterby']) != '') && (isset($_GET['filtertxt']) && trim($_GET['filtertxt']) != '') ){
		$sql_nilai .= " where s.".trim($_GET['filterby'])." like '%".trim($_GET['filtertxt'])."%' ";
		$url .= "&filterby=".$_GET['filterby']."&filtertxt=".$_GET['filtertxt'];
	}
    //$sql_nilai .= " where kd_kelas = '$kd_kelas'";
    //$query_nilai = mysql_query($sql_nilai);
    $paging = new BlegohPaging($sql_nilai,$data,$url,"aktif","paging","prevnext");
    $query_nilai = $paging->getResult();
    ?>
    <table>
        <tr>
            <th>NIS</th>
            <th>NAMA</th>
            <?php
            while($row2 = mysql_fetch_array($query2)){
                $th = $row2['nama_mapel'];
                echo "<th>".$th."</th>";
            }
            ?>
        </tr>
        <?php
        $jml_mapel = mysql_num_rows($query);
        $mapel= array();
        while($row3 = mysql_fetch_array($query3)){
            $mp = str_replace(" ","_",str_replace(".","",$row3['nama_mapel']));
            array_push($mapel,$mp);
        }
        while($row_nilai = mysql_fetch_array($query_nilai)){
            echo "<tr>";
            echo "<td>".$row_nilai['nis']."</td>";
            echo "<td width='230'>".singkat_nama($row_nilai['nama'])."</td>";
            for($i=0;$i<$jml_mapel;$i++){
                echo "<td>".$row_nilai[$mapel[$i]]."</td>";
            }
            echo "</tr>";
        }
        ?>    
    </table>
    <br />
    Export To Excel <a href="../engines/excel.php?kd=pk<?php if(isset($_GET['sem']) && isset($_GET['thn'])){
		echo "&thn=".$_GET['thn']."&sem=".$_GET['sem'];} if(isset($_GET['filterby']) && isset($_GET['filtertxt'])){
		echo "&filterby=".$_GET['filterby']."&filtertxt=".$_GET['filtertxt'];}
		?>">All Pages</a> | <a href="../engines/excel.php?kd=pk<?php if(isset($_GET['sem']) && isset($_GET['thn'])){
		echo "&thn=".$_GET['thn']."&sem=".$_GET['sem'];}  ?>&hlm=<?php if(isset($_GET['hlm'])){echo $_GET['hlm'];}else{echo 1;} 
		if(isset($_GET['filterby']) && isset($_GET['filtertxt'])){
		echo "&filterby=".$_GET['filterby']."&filtertxt=".$_GET['filtertxt'];} ?>">This Page</a>
        
    <span style="float:right">Print: <a href="../engines/print.php" target="_blank">All Pages</a> | <a href="../engines/print.php" target="_blank">This Page</a></span>
    <br /><br />
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