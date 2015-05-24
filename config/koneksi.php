<?php
session_start();

//database host name
$config['host_name'] = 'localhost';
//database username
$config['username'] = 'root';
//password
$config['password'] = 'hornline';
//database table
$config['table'] = 'tugas_akhir';


$koneksi = mysql_connect($config['host_name'],$config['username'],$config['password']);
if($koneksi){
    mysql_select_db($config['table']);
}

define("valid", true);

/*penentuan semester
 *jika bulan januari-juni maka semester 2
 *jika bulan juli-desember maka semester 1
 */
$bln = date('n');
$sem ="";
if($bln<=6){
    $sem = '02';
}elseif($bln>6){
    $sem = '01';
}

/*penentuan thn ajaran
 *jika semester 1 maka tahun ajaran adalah thn_sekarang/thn_depan
 *jika semester 2 maka tahun ajaran adalah thn_kemarin/thn_sekarang
 */
$thn = date('Y');
$thn_ajaran = "";
if($sem == '01'){
    $thn_ajaran = $thn."/".($thn+1);
}elseif($sem == '02'){
    $thn_ajaran = ($thn-1)."/".$thn;
}


include "function.php";
?>