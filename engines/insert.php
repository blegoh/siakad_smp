<?php
include "../config/koneksi.php";

$nis = mysql_real_escape_string($_GET['nis']);
$nilai = mysql_real_escape_string($_GET['nilai']);

//jika ada user yang menginputkan nilai dg tanda',' maka replace dg '.'
$nilai = str_replace(',','.',$nilai);

//pengambilan id_guru dari database berdasarkan username
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

//pengambilan kd_kelas berdasarkan nis
$query_kelas = mysql_query("select * from siswa where nis = '$nis'");
$row_kelas = mysql_fetch_array($query_kelas);
$kd_kelas = $row_kelas['kd_kelas'];


if(is_numeric($nilai)){
    if($nilai >= $kkm && $nilai <=100){
        //lakukan query
        $sql = "insert into nilai(nis,id_guru,nilai,kd_mapel,kd_kelas,sem,thn)values('$nis','$id_guru',$nilai,'$kd_mapel','$kd_kelas','$sem','$thn_ajaran')";
        $query = mysql_query($sql);
        if($query){
            echo "OK ";
        }else{
            echo "GAGAL";
        }
    }elseif($nilai > 100){
        echo "Nilai Berlebihan";
    }else{
		echo "Nilai kurang dari KKM";
	}
}else{
    echo "Error";
}



?>