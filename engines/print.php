<?php

include "../config/koneksi.php";


?>
<!DOCTYPE html>
<html>
    <head>
       <style type="text/css">
        table.nilai{
            border-collapse:collapse;
        }
        table.nilai td,th{
            border: 1px solid #000;
        }
       </style>
    </head>
    <body onload="window.print()">
        <?php
if(isset($_GET['kd'])){
    if($_GET['kd']=="pk" && is_numeric($_GET['kd_kelas'])){
        $kd_kelas = mysql_real_escape_string($_GET['kd_kelas']);
        
        //mengambil nama kelas dan nama wali
        $sql_kw = "select kd_kelas,nama_kelas,nama nama_wali from kelas k left join guru g on k.wali = g.id_guru where kd_kelas = '$kd_kelas'";
        $query_kw = mysql_query($sql_kw);
        
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
        $row_kw = mysql_fetch_array($query_kw);
        ?>
        <div id="kop">
            <img src="../lib/images/kop_sekolah.jpg">
        </div>
        <div id="isi">
        
        
        
        <table>
            <tr>
                <td width='400'>Kelas: <?php echo $row_kw['nama_kelas']; ?></td>
                <td>Semester: <?php echo $sem; ?></td>
            </tr>
            <tr>
                <td width='400'>Wali: <?php echo $row_kw['nama_wali']; ?></td>
                <td>Tahun Ajaran: <?php echo $thn_ajaran; ?></td>
            </tr>
        </table>
        
        <table class="nilai">
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
        echo "<td width='230'>".$row_nilai['nama']."</td>";
        for($i=0;$i<$jml_mapel;$i++){
            echo "<td>".$row_nilai[$mapel[$i]]."</td>";
        }
        echo "</tr>";
    }
    ?>    
    </table>
    
        </div>
        
        <?php
    }elseif($_GET['kd']=="ps" && is_numeric($_GET['nis'])){
        
        $nis = $_GET['nis'];
        
        //memberi identitas
        
        $sql_id = "select s.nama, a.nama_kelas, a.nama wali
                   from siswa s, (select kd_kelas,nama_kelas, nama from kelas k, guru g where k.wali = g.id_guru) a
                   where s.kd_kelas = a.kd_kelas AND s.nis = '$nis'";
        $query_id = mysql_query($sql_id);
        $row_id = mysql_fetch_array($query_id);
        ?>
        <div id="kop">
            <img src="../lib/images/kop_sekolah.jpg">
        </div>
        <?
        echo "<pre>";
        echo "Nama      : ".$row_id['nama']."<br />";
        echo "Kelas     : ".$row_id['nama_kelas']."<br />";
        echo "Wali      : ".$row_id['wali']."<br />";
        echo "Sem       : ".$sem."<br />";
        echo "Thn Ajaran: ".$thn_ajaran;
        echo "</pre>";
        
        //mengambil mapel yg ada
        $sql = "SELECT * FROM mapel";
        $query = mysql_query($sql);

        echo "<table class=\"nilai\">";
        while($row = mysql_fetch_array($query)){
            echo "<tr><td width=\"200\">Nilai ".$row['nama_mapel']."</td>";
            $sql_mapel = "select s.nis,nama,nama_mapel,nilai from nilai n
                  left join siswa s on n.nis = s.nis
                  left join mapel m on n.kd_mapel = m.kd_mapel
                  where n.kd_mapel = '".$row['kd_mapel']."'
                  AND n.nis = '$nis'
                  AND sem='$sem' AND thn='$thn_ajaran'";
            $query_mapel = mysql_query($sql_mapel);
            $row_mapel= mysql_fetch_array($query_mapel);
            if(mysql_num_rows($query_mapel)==0){
            $nilai_mapel = "Belum Diinput";
            }else{
            $nilai_mapel = $row_mapel['nilai'];
            }

            echo "<td>".$nilai_mapel."</td></tr>";
        }

?>
</table><?php
    }
}
?>
    </body>
</html>