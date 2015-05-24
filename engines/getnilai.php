<?php
include "../config/koneksi.php";
if(!defined("valid")){die("Access forbidden! <br />You don't have permission to access the requested object. ");}

$nis = mysql_real_escape_string($_GET['nis']);

//mengambil mapel yg ada
$sql = "SELECT * FROM mapel";
$query = mysql_query($sql);

if($nis != ""){
    echo "<table>
    <br />
    <br />";
while($row = mysql_fetch_array($query)){
    echo "<tr><td>Nilai ".$row['nama_mapel']."</td>";
    $sql_nilai= "select s.nis,nama,nama_mapel,nilai from nilai n
                  left join siswa s on n.nis = s.nis
                  left join mapel m on n.kd_mapel = m.kd_mapel
                  where n.kd_mapel = '".$row['kd_mapel']."'
                  AND n.nis = '$nis'
                  AND sem='$sem' AND thn='$thn_ajaran'";
    $query_nilai= mysql_query($sql_nilai);
    $row_nilai= mysql_fetch_array($query_nilai);
    if(mysql_num_rows($query_nilai)==0){
    $nilai_mapel = "Belum Diinput";
    }else{
    $nilai_mapel = $row_nilai['nilai'];
    }

    echo "<td>".$nilai_mapel."</td></tr>";
}

?>
</table>
<br />
<br />
<p class="links">
<a href="engines/print.php?kd=ps&amp;nis=<?php echo $nis; ?>" target="_blank">Print</a>
 &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
<a href="engines/excel.php?kd=ps&amp;nis=<?php echo $nis; ?>">Export To Excel</a>
</p>
<?php
}else{
    echo "Anda Belum Memilih Siswa !!!"; 
}

?>

