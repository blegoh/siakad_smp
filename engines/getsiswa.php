<?php
include "../config/koneksi.php";
if(!defined("valid")){die("Access forbidden! <br />You don't have permission to access the requested object. ");}

$kd_kelas = mysql_real_escape_string($_GET['kd_kelas']);
if($kd_kelas==""){
    echo "Anda Belum Memilih Kelas";
}else{
    $sql = "SELECT * FROM siswa where kd_kelas='$kd_kelas'";
    $query = mysql_query($sql);
    echo "<br />Pilih Siswa :";
    echo "<select onchange=\"getData('engines/getnilai.php?nis='+this.value,'nilai')\">";
    echo "<option value=\"\">--Pilih Siswa--</option>";
    while($row= mysql_fetch_array($query)){
        echo "<option value='".$row['nis']."'>".$row['nama']."</option>";
    }
    echo "</select>";
    echo "<div id=\"nilai\"></div>";
}

?>