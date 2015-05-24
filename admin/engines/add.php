<?php

include "../../config/koneksi.php";
$valid = true;
$pesan = "";

$table = $_POST['table'];
$redirect = $_POST['redirect'];
$error = true;

//Proses untuk table groups
if($table == "pbk_groups"){
    $name = trim(mysql_real_escape_string($_POST['nama']));
    $sql = "INSERT INTO pbk_groups(Name ,ID)VALUES ('$name', NULL)";
    if($name == ""){
        $valid = false;
        $pesan .= "Nama Harus Diisi !!";
    }
}elseif($table == "pbk"){
	$name = trim(mysql_real_escape_string($_POST['nama']));
	$number = trim(mysql_real_escape_string($_POST['nomer']));
	$group = $_POST['groups'];
	$sql = "INSERT INTO pbk(GroupID,Name ,Number)VALUES ('$group','$name','$number')";
	if($name == ""){
        $valid = false;
        $pesan .= "<br />Nama Harus Diisi !!";
    }
	if($number == ""){
        $valid = false;
        $pesan .= "<br />Nomer Contacts Harus Diisi !!";
    }
}elseif($table == "outbox"){
	$des_numb = $_POST['nomer'];
	$msg = $_POST['msg'];
	$cek = strpos($des_numb,";");
	//$sql = "";
	if($cek){
		$arr_numb = explode(";",$des_numb);
		foreach($arr_numb as $a){
			//$sql .= " insert into outbox(DestinationNumber,TextDecoded)values('$a','$msg'); ";
			$a = str_replace("+","",$a);
			if(!is_numeric($a)){ $valid = false; }
		}
		if(!$valid){
			$pesan .= "<br />Nomer Harus Berupa Angka !!";
		}
	}else{
		$sql = "insert into outbox(DestinationNumber,TextDecoded)values('$des_numb','$msg')";
		if(!is_numeric($des_numb)){ 
			$valid = false; 
			$pesan .= "<br />Nomer Harus Berupa Angka !!";
		}
	}
	if(trim($msg) == ""){
		$valid = false; 
		$pesan .= "<br />Isi Pesan Harus Diisi !!";
	}
}elseif($table == "artikel"){
	$judul = trim(mysql_real_escape_string($_POST['judul']));
	$isi = trim(mysql_real_escape_string($_POST['isi']));
	$posted = $_SESSION['admin'];
	if($judul == ""){
		$valid = false;
		$pesan .= "<br />Judul Harus Diisi !!";
	}
	if($isi == ""){
		$valid = false;
		$pesan .= "<br />Artikel Masih Kosong !!";
	}
	if($valid){
		if($_FILES['foto']['name']!=""){
			$uploaddir = '../images/';
			$namafile = mktime().basename($_FILES['foto']['name']);
			$uploadfile = $uploaddir . $namafile;
			
			if (move_uploaded_file($_FILES['foto']['tmp_name'], $uploadfile)) {
				//echo "File berhasil diupload.\n";
			} else {
				$valid = false;
				$pesan .= "<br />Foto gagal diupload !!";
			}
		}elseif($_FILES['foto']['name']==""){
			$namafile = "";
		}
	}
	$sql = "INSERT INTO artikel(tgl,judul,isi,foto,posted)VALUES (date_format(NOW(), '%Y-%m-%d'),'$judul','$isi','$namafile','$posted')";
}elseif($table == "guru"){
	$id = trim(mysql_real_escape_string($_POST['id']));
    $nama =  trim(mysql_real_escape_string($_POST['nama']));
    $mapel = $_POST['mapel'];
	$string = "abcdefghijklmnopqrstuvwxyz123456789";
	$password = substr(str_shuffle($string),0,5);
	$sql = "insert into guru(id_guru,nama,kd_mapel)values('$id','$nama','$mapel')";
    $kelas  = array();
    $mengajar = false;
    $sql_kelas = "select * from kelas";
    $res_kelas = mysql_query($sql_kelas);
    while($row_kelas = mysql_fetch_object($res_kelas)){
		array_push($kelas,$row_kelas->kd_kelas);
    }
    foreach($kelas as $kelas){
		if(isset($_POST[$kelas])){
			$mengajar = true;
		}
    }
    if($nama == ""){
        $valid = false;
        $pesan .= "<br />Nama Harus Diisi !!";
    }
    if($mapel == ""){
        $valid = false;
        $pesan .= "<br />Nama Harus Diisi !!";
    }
    if($mengajar == false){
	$valid = false;
        $pesan .= "<br />Harus Ada Kelas Yang Diajar !!";
    }
}elseif($table == "siswa"){
	$nis = trim(mysql_real_escape_string($_POST['id']));
    $nama =  trim(mysql_real_escape_string($_POST['nama']));
	$jk = trim(mysql_real_escape_string($_POST['jk']));
	$status = trim(mysql_real_escape_string($_POST['status']));
	$kelas = trim(mysql_real_escape_string($_POST['kelas']));
	$sql = "insert into siswa(nis,nama,jk,kd_status,kd_kelas)values('$nis','$nama','$jk','$status','$kelas')";
	
	if($nis == ""){
        $valid = false;
        $pesan .= "<br />NIS Harus Diisi !!";
    }
	if($nama == ""){
        $valid = false;
        $pesan .= "<br />Nama Harus Diisi !!";
    }
	if($jk == ""){
        $valid = false;
        $pesan .= "<br />Jenis Kelamin Harus Diisi !!";
    }
	if($status == ""){
        $valid = false;
        $pesan .= "<br />Status Harus Diisi !!";
    }
	if($kelas == ""){
        $valid = false;
        $pesan .= "<br />Kelas Harus Diisi !!";
    }
}elseif($table == "kelas"){
	$kd_kelas = trim(mysql_real_escape_string($_POST['id']));
	$nama_kelas = trim(mysql_real_escape_string($_POST['nama']));
	$wali = $_POST['wali'];
	$sql = "insert into kelas values('$kd_kelas','$nama_kelas','$wali')";
	
	if($kd_kelas == ""){
		$valid = false;
		$pesan .= "<br />Kode Kelas Harus Diisi !!";
	}
	if($nama_kelas == ""){
		$valid = false;
		$pesan .= "<br />Nama Kelas Harus Diisi !!";
	}
	if($wali == ""){
		$valid = false;
		$pesan .= "<br />Wali Kelas Harus Diisi !!";
	}
	$sql_cek = "SELECT * FROM `kelas` WHERE wali = '$wali'";
	$res_cek = mysql_query($sql_cek);
	if(mysql_num_rows($res_cek) > 0 ){
		$valid = false;
		$pesan .= "<br />Wali Sudah Menjadi Wali di Kelas Lain !!";
	}
}elseif($table == "mapel"){
	$kd_mapel = trim(mysql_real_escape_string($_POST['id']));
	$nama_mapel = trim(mysql_real_escape_string($_POST['nama']));
	$kkm = trim(mysql_real_escape_string($_POST['kkm']));
	$sql = "insert into mapel values('$kd_mapel','$nama_mapel',$kkm)";
	
	if($kd_mapel== ""){
		$valid = false;
		$pesan .= "<br />Kode Mapel Harus Diisi !!";
	}
	if($nama_mapel == ""){
		$valid = false;
		$pesan .= "<br />Nama mapel Harus Diisi !!";
	}
	if($kkm == ""){
		$valid = false;
		$pesan .= "<br />KKM Harus Diisi !!";
	}elseif(!is_numeric($kkm)){
		$valid = false;
		$pesan .= "<br />KKM Harus berupa angka !!";
	}
	
}elseif($table == "admin"){
	$username = mysql_real_escape_string(trim($_POST['username']));
	$pwd1 = mysql_real_escape_string(trim($_POST['pwd1']));
	$pwd2 = mysql_real_escape_string(trim($_POST['pwd2']));
	$level = $_POST['level'];
	
	//cek username apakah sudah digunakan atau belum
	$sql_cek = "select * from admin where username = '$username'";
	$res_cek = mysql_query($sql_cek);
	$num_cek = mysql_num_rows($res_cek);
	
	if($username == ""){
		$valid = false;
		$pesan .= "<br />Username Harus Diisi !!";
	}elseif($num_cek > 0){
		$valid = false;
		$pesan .= "<br />Username Sudah Digunakan !!";
	}
	
	if($pwd1 == ""){
		$valid = false;
		$pesan .= "<br />Password Harus Diisi !!";
	}elseif(strlen($pwd1) < 5){
		$valid = false;
		$pesan .= "<br />Password minimal 5 karakter !!";
	}
	
	if($pwd2 == ""){
		$valid = false;
		$pesan .= "<br />Confirm Password Harus Diisi !!";
	}elseif($pwd1 != $pwd2){
		$valid = false;
		$pesan .= "<br />Confirm Password Harus sama dengan Password !!";
	}
	
	if($level == ""){
		$valid = false;
		$pesan .= "<br />Level Harus Dipilih !!";
	}
	
	$sql = "insert into admin values('$username',md5('$pwd1'),$level)";
}


	


if($valid == true){
	if($table == "outbox" && $cek == true){
		$arr_numb = explode(";",$des_numb);
		foreach($arr_numb as $a){
			$sql = " insert into outbox(DestinationNumber,TextDecoded)values('$a','$msg'); ";
			$query = mysql_query($sql);
			if($query){
				$error = false;
				$pesan = "Data Berhasil Di Simpan";
			}else{
				$pesan .= "<br />ERROR: ".mysql_error();
			}
		}
	}else{
		$query = mysql_query($sql);
		if($query){
			$error = false;
			$pesan .= "Data Berhasil Di Simpan";
			if($table == "guru"){
				$sql_user = "insert into user values('$id',md5('$password'),'$id','$password')";
				$res_user = mysql_query($sql_user);
				$pesan .= "<br />Username : $id<br />Password : $password";
				$class  = array();
				$sql_class = "select * from kelas";
				$res_class = mysql_query($sql_kelas);
				while($row_class = mysql_fetch_object($res_class)){
					array_push($class,$row_class->kd_kelas);
				}
				foreach($class as $class){
					if(isset($_POST[$class])){
						$sql_teach = "insert into teach values('$id','".$class."')";
						$res_teach = mysql_query($sql_teach);
					}
				}
			}
		}else{
			$pesan .= "ERROR: ".mysql_error()."<br />$sql";
		}
	}
}else{
	$_SESSION['form'] = $_POST;
}

set_msg($pesan, $error);
header("Location: ../$redirect");
?>
