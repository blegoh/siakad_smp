// JavaScript Document
$(document).ready(function(){
	$('.confirm').jConfirmAction({
		question : "Are you sure?", 
		yesAnswer : "Yes", 
		cancelAnswer : "No"
	});
});

function tambah(){
	var number = document.getElementById('contacts').value;
	if(number != ""){
		var desnumb = document.getElementById('nomer').value;
		if(desnumb.search(number) >= 0){
			window.alert("Sudah Ada!!");
		}else{
			var awal = document.getElementById('nomer').value;
			if(awal.length > 0 && awal.charAt(awal.length -1) != ";"){
				document.getElementById('nomer').value = awal +";"+ number;
			}else{
				document.getElementById('nomer').value = awal + number;
			}
		}
	}else{
		window.alert("Anda Belum Memilih Contacts!!");
	}
}

function cekThn(){
	var thn = document.getElementById('thn').value;
	var sem = document.getElementById('sem').value;
	if( thn == '' || sem == ''){
		alert("Isikan dengan benar");
		return false;
	}else{
		return true;
	}
}

function cekSearch(){
	var filterby = document.getElementById('filterby').value;
	var filtertxt = document.getElementById('filtertxt').value;
	if(filterby == '' || filtertxt == ''){
		alert("Isikan dengan benar");
		return false;
	}else{
		return true;
	}
}
