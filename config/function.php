<?php

//menyiapkan flash message
function set_msg($text,$error = false){
    $_SESSION['msg'] = $text;
    $_SESSION['error'] = $error;
}

//mencetak flash message
function show_msg(){
    $style = ($_SESSION['error']) ? "msg_e" : "msg";
    if($_SESSION['msg'] != ""){
        echo "<p class=\"".$style."\">".$_SESSION['msg']."</p>";
        unset($_SESSION['msg']);
        unset($_SESSION['error']);
    }
}

//function untuk menyingkat nama tengah dan nama belakang
function singkat_nama($nama){
    $pecah = explode(" ",$nama);
    $singkatan= "";
    for($i=0;$i < count($pecah);$i++){
        if($i == 0){
            $singkatan .= $pecah[$i];
        }else{
            $singkatan .= " ".substr($pecah[$i],0,1).".";
        }
    }
    return $singkatan;
}


//function untuk membuat cuplikan artikel
function cuplikan($isi){
	$cuplikan = "";
	$awal = substr($isi,0,700);
	$cuplikan .= $awal;
	$isi = substr($isi,700);
	$letak_spasi = strpos($isi," ");
	if($letak_spasi){
		$akhir = substr($isi,0,$letak_spasi);
		$cuplikan .=  $akhir;
	}
	return $cuplikan;
}

//untuk level akses admin
function satpam($levels) { 
	if(!in_array($_SESSION["level"], $levels)) {
		echo "<p class=\"msg_e\">Anda tidak memiliki level akses yang sesuai untuk mengakses halaman ini</p>";
		echo "<meta http-equiv=\"refresh\" content=\"1;url=index.php\">";
		exit;
	} 
}


// Function penanda awal file (Begin Of File) Excel
    
function xlsBOF() {
    echo pack("ssssss", 0x809, 0x8, 0x0, 0x10, 0x0, 0x0);
    return;
}

// Function penanda akhir file (End Of File) Excel

function xlsEOF() {
    echo pack("ss", 0x0A, 0x00);
    return;
}

// Function untuk menulis data (angka) ke cell excel

function xlsWriteNumber($Row, $Col, $Value) {
    echo pack("sssss", 0x203, 14, $Row, $Col, 0x0);
    echo pack("d", $Value);
    return;
}

// Function untuk menulis data (text) ke cell excel

function xlsWriteLabel($Row, $Col, $Value ) {
    $L = strlen($Value);
    echo pack("ssssss", 0x204, 8 + $L, $Row, $Col, 0x0, $L);
    echo $Value;
    return;
}

?>