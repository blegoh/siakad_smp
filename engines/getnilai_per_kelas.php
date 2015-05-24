<?php
include "../config/koneksi.php";
if(!defined("valid")){die("Access forbidden! <br />You don't have permission to access the requested object. ");}

$kd_kelas = mysql_real_escape_string($_GET['kd_kelas']);


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
$sql_nilai .= " where kd_kelas = '$kd_kelas'";
$query_nilai = mysql_query($sql_nilai);
?>

<table>
    <tr>
    <th>NIS</th><th>NAMA</th>
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
<br />
<p class="links">
<a href="engines/print.php?kd=pk&amp;kd_kelas=<?php echo $kd_kelas; ?>" target="_blank">Print</a>
 &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
<a href="engines/excel.php?kd=pk&amp;kd_kelas=<?php echo $kd_kelas; ?>">Export To Excel</a>
</p>



