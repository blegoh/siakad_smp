<?php

include "../../config/koneksi.php";

$table = $_POST['table'];
$redirect = $_POST['redirect'];
$valid = true;
$pesan = "";
$error = true;

if($table == "pbk_groups"){
    $id = $_POST['id'];
    $name = trim(mysql_real_escape_string($_POST['nama']));
    $sql = "update $table set Name='$name' where ID = '$id' ";
    if($name == ""){
        $valid = false;
        $pesan .= "Nama Harus Diisi !!";
    }
}elseif($table == "pbk"){
    $id = $_POST['id'];
    $name = trim(mysql_real_escape_string($_POST['nama']));
    $number = trim(mysql_real_escape_string($_POST['nomer']));
    $group = $_POST['groups'];
    $sql = "update $table set Name = '$name',GroupID = '$group', Number='$number' where ID='$id'";
    if($name == ""){
	$valid = false;
	$pesan .= "<br />Nama Harus Diisi !!";
    }
    if($number == ""){
        $valid = false;
        $pesan .= "<br />Nomer Contacts Harus Diisi !!";
    }
}elseif($table == "guru"){
    $id = trim(mysql_real_escape_string($_POST['id']));
    $nama =  trim(mysql_real_escape_string($_POST['nama']));
    $mapel = $_POST['mapel'];
    $sql = "update $table set nama='$nama', kd_mapel = '$mapel' where id_guru='$id'";
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
}else if($table == "artikel"){
	$id_artikel = trim(mysql_real_escape_string($_POST['id']));
	$judul = trim(mysql_real_escape_string($_POST['judul']));
	$isi = trim(mysql_real_escape_string($_POST['isi']));
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
			$sql_foto = "select foto from artikel where id_artikel = '$id_artikel'";
			$res_foto = mysql_query($sql_foto);
			$row_foto = mysql_fetch_object($res_foto);
			$namafile = $row_foto->foto;
		}
	}
	$sql = "update artikel set judul = '$judul', isi = '$isi', foto = '$namafile' where id_artikel = '$id_artikel'";	
}elseif($table == "siswa"){
	$nis = trim(mysql_real_escape_string($_POST['id']));
    $nama =  trim(mysql_real_escape_string($_POST['nama']));
	$jk = trim(mysql_real_escape_string($_POST['jk']));
	$status = trim(mysql_real_escape_string($_POST['status']));
	$kelas = trim(mysql_real_escape_string($_POST['kelas']));
	$sql = "update siswa set nama = '$nama', jk = '$jk', kd_status = '$status', kd_kelas = '$kelas' where nis = '$nis'";
	
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
}elseif($table == "kelas"){
	$kd_kelas = trim(mysql_real_escape_string($_POST['id']));
	$nama_kelas = trim(mysql_real_escape_string($_POST['nama']));
	$wali = $_POST['wali'];
	$sql = "update kelas set nama_kelas = '$nama_kelas', wali ='$wali' where kd_kelas = '$kd_kelas'";
	
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
	$sql = "update mapel set nama_mapel = '$nama_mapel', kkm = $kkm where kd_mapel = '$kd_mapel'";
	
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
	$username = $_POST['username'];
	$old_pass = md5(mysql_real_escape_string(trim($_POST['old'])));
	$pwd1 = mysql_real_escape_string(trim($_POST['pwd1']));
	$pwd2 = mysql_real_escape_string(trim($_POST['pwd2']));
	$level = $_POST['level'];
	
	$update_pass = false;
	if(trim($_POST['old']) != ""){
		$update_pass = true;
		//cek password lama
		$sql_cek = "select * from admin where username = '$username' and password = '$old_pass'";
		$res_cek = mysql_query($sql_cek);
		$num_cek = mysql_num_rows($res_cek);
	
		if($num_cek != 1){
			$valid = false;
			$pesan .= "<br />Old Password Salah !!";
		}
		if($pwd1 == ""){
			$valid = false;
			$pesan .= "<br />New Password Harus Diisi !!";
		}elseif(strlen($pwd1) < 5){
			$valid = false;
			$pesan .= "<br />New Password minimal 5 karakter !!";
		}
		
		if($pwd2 == ""){
			$valid = false;
			$pesan .= "<br />Confirm New Password Harus Diisi !!";
		}elseif($pwd1 != $pwd2){
			$valid = false;
			$pesan .= "<br />Confirm New Password Harus sama dengan Password !!";
		}
		
	}
		
	if($level == ""){
		$valid = false;
		$pesan .= "<br />Level Harus Dipilih !!";
	}
	
	$sql = "update admin set level = $level ";
	if($update_pass){
		$sql .= ",password = md5('$pwd1') ";
	}
	$sql .= "where username = '$username'";
}




if($valid == true){
    $query = mysql_query($sql);
    if($query){
	$error = false;
	$pesan = "Data Berhasil Di Simpan";
	if($table == "guru"){
	    $sql_del = "delete from teach where id_guru ='$id'";
	    mysql_query($sql_del);
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
	    //echo $sql_teach;
	}
    }else{
	    $pesan = "ERROR: ".mysql_error();
    }
}else{
	$_SESSION['form'] = $_POST;
	$redirect .= "&id=".$id;
}


set_msg($pesan, $error);

header("Location: ../$redirect");
?>