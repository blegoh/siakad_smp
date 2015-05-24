<?php
include "../config/koneksi.php";

//pengambilan id_guru dari database
$username = $_SESSION['username'];
$queryguru = mysql_query("select * from user where username='$username'");
$rowguru = mysql_fetch_array($queryguru);
$id_guru = $rowguru['id_guru'];

//lakukan pengecekan apakah user mengajar kelas tsb atau tdk
$kd_kelas = mysql_real_escape_string($_GET['kd_kelas']);
$cek = mysql_query("select * from teach 
                    where id_guru = '$id_guru' and kd_kelas = '$kd_kelas'");

if($kd_kelas==""){
    echo "<br /><br /><br />Anda Belum Memilih Kelas..!!";
}else{
if(mysql_num_rows($cek) > 0){ //jika user mengajar kelas tsb maka data siswa di tampilkan
$sql = "SELECT s.nis, nama , jk, n.nilai as nilai
            from siswa s
            left join (select * FROM nilai where id_guru ='$id_guru'  and sem='$sem' and thn='$thn_ajaran') n on s.nis = n.nis
            where s.kd_kelas = '$kd_kelas'";
$query = mysql_query($sql);
?>

<table border="0">
    <tr>
        <th>NIS</th><th>NAMA</th><th>NILAI</th>
    </tr>
        <?
        while($row=mysql_fetch_array($query)){
        ?>
        <tr>
        <td><?php echo $row['nis'];?></td>
        <td class="nama"><?php echo $row['nama'];?></td>
        <td>
        <?
        if($row['nilai']==""){
            echo "<input type=\"text\" value=0 size=5 style=\"text-align: right\"
            onchange=\"getData('engines/insert.php?nis=".$row['nis']."&nilai='+this.value,'nilai".$row['nis']."')\" maxlength=\"5\">";
        }else{?>
            <input type="text" value='<?php echo $row['nilai'];?>' size=5 style="text-align: right"
            onchange="getData('engines/update.php?nis=<?php echo $row['nis']; ?>&nilai='+this.value,'nilai<?php echo $row['nis']; ?>')" maxlength="5">
        <? }
        ?>
        <span id='nilai<? echo $row['nis'];?>'></span>
        </td>
        </tr>
        <?
        }?>
    
</table>
<? }else{//jika user tdk mengajar kelas tsb, maka beri tahu user
    echo "<br /><br /><br />Anda Tidak Mengajar Kelas Ini..!!";
}
}
?>
