<?php

include "../config/koneksi.php";

// nama file

$namaFile = "report.xls";


// header file excel

header("Pragma: public");
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
header("Content-Type: application/force-download");
header("Content-Type: application/octet-stream");
header("Content-Type: application/download");

// header untuk nama file
header("Content-Disposition: attachment;filename=".$namaFile."");

header("Content-Transfer-Encoding: binary ");

if(isset($_GET['kd'])){
    if($_GET['kd']== 'pk'){        
        if(isset($_GET['kd_kelas']) && is_numeric($_GET['kd_kelas'])){
            // memanggil function penanda awal file excel
            xlsBOF();
    
            // ------ membuat identitas kelas --- //
            
            $kd_kelas = $_GET['kd_kelas'];
            $sql_kw = "select kd_kelas,nama_kelas,nama nama_wali from kelas k left join guru g on k.wali = g.id_guru where kd_kelas = '$kd_kelas'";
            $query_kw = mysql_query($sql_kw);
            $row_kw = mysql_fetch_array($query_kw);
            
            // mengisi pada cell A1 (baris ke-0, kolom ke-0)
            xlsWriteLabel(0,0,"kelas :");               
            
            // mengisi pada cell A2 (baris ke-0, kolom ke-1)
            xlsWriteLabel(1,0,"wali :");
            
            //mengisi nama siswa
            xlsWriteLabel(0,1,$row_kw['nama_kelas']);
            
            //mengisi nama wali
            xlsWriteLabel(1,1,$row_kw['nama_wali']);
            
            //mengisi pada cell J1
            xlsWriteLabel(0,9,"sem :");
            
            //mengisi pada cell J2
            xlsWriteLabel(1,9,"thn ajaran :");
    
            //mengisi sem
            xlsWriteLabel(0,10,$sem);
            
            //mengisi thn ajaran
            xlsWriteLabel(1,10,$thn_ajaran);
            
            //--------- membuat kolom nilai ------------//
            xlsWriteLabel(3,0,"NIS");
            xlsWriteLabel(3,1,"Nama");
            
            //mengambil mapel dari database untuk kolom nilai
            $sql_mapel_kolom = "select * from mapel";
            $query_mapel_kolom = mysql_query($sql_mapel_kolom);
            $no_kolom = 2;
            
            while($row_mapel_kolom = mysql_fetch_array($query_mapel_kolom)){
                xlsWriteLabel(3,$no_kolom,$row_mapel_kolom['nama_mapel']);
                $no_kolom++;
            }
            
            $sql = "SELECT * FROM mapel";
            $query = mysql_query($sql);
            $query1 = mysql_query($sql);
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
            
            //--------- mengisikan nilai ---------------//
            $no_baris = 4;
            $jml_mapel = mysql_num_rows($query);
            $mapel= array();
            while($row3 = mysql_fetch_array($query3)){
                $mp = str_replace(" ","_",str_replace(".","",$row3['nama_mapel']));
                array_push($mapel,$mp);
            }
            
            while($row_nilai=mysql_fetch_array($query_nilai)){
                xlsWriteLabel($no_baris,0,$row_nilai['nis']);
                xlsWriteLabel($no_baris,1,$row_nilai['nama']);
                for($i=0;$i<$jml_mapel;$i++){
                    xlsWriteNumber($no_baris,$i+2,$row_nilai[$mapel[$i]]);
                }
                $no_baris++;
            }
            
            // memanggil function penanda akhir file excel
            xlsEOF();
            exit();
        }else{
            if(isset($_GET['sem']) && isset($_GET['thn'])){
                $sem = $_GET['sem'];
                $thn_ajaran = $_GET['thn'];
            }
            
            $data = 30;
            
            // memanggil function penanda awal file excel
            xlsBOF();
            
            //informasi semester dan tahun ajaran
            xlsWriteLabel(0,0,"Daftar nilai sem $sem tahun ajaran $thn_ajaran");
            
            //membuat kolon nis,nama, dan kelas
            xlsWriteLabel(2,0,"NIS");
            xlsWriteLabel(2,1,"Nama");
            xlsWriteLabel(2,2,"Kelas");
            
            //mengambil mapel dari database untuk kolom nilai
            $sql_mapel_kolom = "select * from mapel";
            $query_mapel_kolom = mysql_query($sql_mapel_kolom);
            $no_kolom = 3;
            
            while($row_mapel_kolom = mysql_fetch_array($query_mapel_kolom)){
                xlsWriteLabel(2,$no_kolom,$row_mapel_kolom['nama_mapel']);
                $no_kolom++;
            }
            
            $sql = "SELECT * FROM mapel";
            $query = mysql_query($sql);
            $query1 = mysql_query($sql);
            $query3 = mysql_query($sql);
            
            $sql_nilai = "select s.nis,s.nama,k.nama_kelas kelas";
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
            $sql_nilai .= " left join kelas k on s.kd_kelas = k.kd_kelas";
            
            if(isset($_GET['filterby']) && isset($_GET['filtertxt'])){
                $sql_nilai .= " where ".$_GET['filterby']." like '%".$_GET['filtertxt']."%'";
            }
            
            if(isset($_GET['hlm'])){
                $sql_nilai .= " limit ".($_GET['hlm']-1)*$data.",".$data;
            }
            
            $query_nilai = mysql_query($sql_nilai);
            
            //--------- mengisikan nilai ---------------//
            $no_baris = 3;
            $jml_mapel = mysql_num_rows($query);
            $mapel= array();
            while($row3 = mysql_fetch_array($query3)){
                $mp = str_replace(" ","_",str_replace(".","",$row3['nama_mapel']));
                array_push($mapel,$mp);
            }
            
            while($row_nilai=mysql_fetch_array($query_nilai)){
                xlsWriteLabel($no_baris,0,$row_nilai['nis']);
                xlsWriteLabel($no_baris,1,$row_nilai['nama']);
                xlsWriteLabel($no_baris,2,$row_nilai['kelas']);
                for($i=0;$i<$jml_mapel;$i++){
                    xlsWriteNumber($no_baris,$i+3,$row_nilai[$mapel[$i]]);
                }
                $no_baris++;
            }
            
            // memanggil function penanda akhir file excel
            xlsEOF();
            exit();
        }
        
    }elseif($_GET['kd']== 'ps' && is_numeric($_GET['nis'])){
        
        // memanggil function penanda awal file excel
        xlsBOF();

        // ------ membuat identitas siswa --- //
        
        $nis = $_GET['nis'];    
        $kd_kelas = $_GET['kd_kelas'];
        $sql_kw = "select s.nama, a.nama_kelas, a.nama wali
                   from siswa s, (select kd_kelas,nama_kelas, nama from kelas k, guru g where k.wali = g.id_guru) a
                   where s.kd_kelas = a.kd_kelas AND s.nis = '$nis'";
        $query_kw = mysql_query($sql_kw);
        $row_kw = mysql_fetch_array($query_kw);
        
        //mengisi cell A1
        xlsWriteLabel(0,0,"Nama :");
        
        //mengisi cell A2
        xlsWriteLabel(1,0,"Kelas :");
        
        //mengisi cell A3
        xlsWriteLabel(2,0,"Wali :");
        
        //mengisi cell C1
        xlsWriteLabel(0,3,"Sem :");
        
        //mengisi cell C2
        xlsWriteLabel(1,3,"Tahun :");
        
        //mengisi cell nama
        xlsWriteLabel(0,1,$row_kw['nama']);
        
        //mengisi cell kelas
        xlsWriteLabel(1,1,$row_kw['nama_kelas']);
        
        //mengisi semester
        xlsWriteLabel(0,4,$sem);
        
        //mengisi tahun ajaran
        xlsWriteLabel(1,4,$thn_ajaran);
        
        //mengisis wali kelas
        xlsWriteLabel(2,1,$row_kw['wali']);
        
        /*========== mengisi nilai===========*/
        
        $no_baris = 4;
        
        //mengambil mapel yg ada
        $sql = "SELECT * FROM mapel";
        $query = mysql_query($sql);
        
        while($row = mysql_fetch_array($query)){
            xlsWriteLabel($no_baris,0,"Nilai ".$row['nama_mapel']);
            $sql_nilai = "select s.nis,nama,nama_mapel,nilai from nilai n
                          left join siswa s on n.nis = s.nis
                          left join mapel m on n.kd_mapel = m.kd_mapel
                          where n.kd_mapel = '".$row['kd_mapel']."'
                          AND n.nis = '$nis'
                          AND sem='$sem' AND thn='$thn_ajaran'";
            $query_nilai = mysql_query($sql_nilai);
            $row_nilai= mysql_fetch_array($query_nilai);
            if(mysql_num_rows($query_nilai)==0){
                xlsWriteLabel($no_baris,1,"Belum Diinput");
            }else{
                xlsWriteNumber($no_baris,1,$row_nilai['nilai']);
            }
            $no_baris++;
        }

        
        // memanggil function penanda akhir file excel
        xlsEOF();
        exit();
    }
}

?>