<?php
include "../config/koneksi.php";

$nis = mysql_real_escape_string($_GET['nis']);
$nilai = mysql_real_escape_string($_GET['nilai']);

//jika ada user yang menginputkan nilai dg tanda',' maka replace dg '.'
$nilai = str_replace(',','.',$nilai);

//pengambilan id_guru dari database
$username = $_SESSION['username'];
$queryguru = mysql_query("select * from user where username='$username'");
$rowguru = mysql_fetch_array($queryguru);
$id_guru = $rowguru['id_guru'];

//pengambilan kd_mapel berdasarkan id_guru
$query_mapel = mysql_query("select * from guru where id_guru = '$id_guru'");
$row_mapel = mysql_fetch_array($query_mapel);
$kd_mapel = $row_mapel['kd_mapel'];

//pengambilan kkm berdasarkan kd_mapel
$query_kkm = mysql_query("select * from mapel where kd_mapel='$kd_mapel'");
$row_kkm = mysql_fetch_object($query_kkm);
$kkm = $row_kkm->kkm;


if(is_numeric($nilai)){
    if($nilai >= $kkm && $nilai <= 100){
        //lakukan query update
        $sql = "UPDATE nilai SET nilai = '$nilai'
                WHERE nis = '$nis' AND id_guru = '$id_guru'
                AND sem = '$sem' AND thn = '$thn_ajaran'";
        $query = mysql_query($sql);
        if($query){
            echo "OK";
        }else{
            echo "GAGAL";
        }
    }elseif($nilai > 100){
        echo "Nilai Berlebihan";
    }
}else{
    echo "Error";
}


?>