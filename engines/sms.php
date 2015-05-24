<?php

//include "config/koneksi.php";
if(!defined("valid")){die("Access forbidden! <br />You don't have permission to access the requested object. ");}
/*cek apakah di table inbox ada sms yang belum terbaca
 *jika ada maka akan diproses
 */
$sql_new_inbox = "select * from inbox where processed = 'false'";
$query_new_inbox = mysql_query($sql_new_inbox);
$count_new_inbox =  mysql_num_rows($query_new_inbox);

if($count_new_inbox > 0){
    while($row_new_inbox = mysql_fetch_array($query_new_inbox)){
        if(strtolower(substr(trim(mysql_real_escape_string($row_new_inbox['TextDecoded'])),0,5)) == 'nilai'){
            $sms = trim(mysql_real_escape_string($row_new_inbox['TextDecoded']));
            $nis = trim(substr($sms,5));
            $balasan = "";
            
            //mengecek siswa dengan nis tersebut
            $sql_siswa = "select * from siswa where nis = '$nis'";
            $query_siswa = mysql_query($sql_siswa);
            $row_siswa = mysql_fetch_array($query_siswa);
            if(mysql_num_rows($query_siswa) == 0){
                $balasan .= "Tidak Ada Siswa Dengan Nis Tersebut !!!";
            }else{
                $balasan .= "Nama : ".$row_siswa['nama']."\r\n";
                //mengambil mapel yg ada
                $sql_mapel = "SELECT * FROM mapel";
                $query_mapel = mysql_query($sql_mapel);
                while($row_mapel = mysql_fetch_array($query_mapel)){
                    $sql_nilai = "select s.nis,nama,nama_mapel,nilai from nilai n
                                  left join siswa s on n.nis = s.nis
                                  left join mapel m on n.kd_mapel = m.kd_mapel
                                  where n.kd_mapel = '".$row_mapel['kd_mapel']."'
                                  AND n.nis = '$nis'
                                  AND sem='$sem' AND thn='$thn_ajaran'";
                    $query_nilai = mysql_query($sql_nilai);
                    $row_nilai= mysql_fetch_array($query_nilai);
                    if(mysql_num_rows($query_nilai)==0){ //cek apakah nilai tsb ada atau tidak
                        $nilai_mapel = "Belum Diinput";
                    }else{
                        $nilai_mapel = $row_nilai['nilai']; 
                    }
                    $balasan .= "Nilai ".$row_mapel['nama_mapel']." : ".$nilai_mapel."\r\n" ;
                }
            }
            $sql_balas = "insert into outbox(DestinationNumber,TextDecoded) values ('".$row_new_inbox['SenderNumber']."',
                          '$balasan')";
            $query_balas = mysql_query($sql_balas);
        }
        //set processed menjadi true
        $sql_proses = "update inbox set processed = 'true' where ID='".$row_new_inbox['ID']."'";
        $query_proses = mysql_query($sql_proses);
    }
}

?>