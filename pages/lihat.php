<?php
            $sql = "SELECT * FROM `kelas`";
            $query= mysql_query($sql);

if(!defined("valid")){die("Access forbidden! <br />You don't have permission to access the requested object. ");}
?>
    <?php
        if(isset($_GET['pg'])&& $_GET['pg']=="pk"){
    ?>
    Pilih Kelas:
    <select onchange="getData('engines/getnilai_per_kelas.php?kd_kelas='+this.value,'ssw')">
        <option value="">--Pilih Kelas--</option>
        <?php
        while($row = mysql_fetch_array($query)){
            if($row['kd_kelas'] != 'al'){
        ?>
        <option value="<?php echo $row['kd_kelas']; ?>"><?php echo $row['nama_kelas']; ?></option>
        <? }} ?>
    </select>
    <?php
    }elseif(isset($_GET['pg'])&& $_GET['pg']=="ps"){
    ?>
    Pilih Kelas:
    <select onchange="getData('engines/getsiswa.php?kd_kelas='+this.value,'ssw')">
    <option value="">--Pilih Kelas--</option>
    <?php
    while($row = mysql_fetch_array($query)){
        if($row['kd_kelas'] != 'al'){
    ?>
    <option value="<?php echo $row['kd_kelas']; ?>"><?php echo $row['nama_kelas']; ?></option>
    <? } }?>
</select>
<?php
}
?>
<br /><br />
<div id="ssw">
    
</div>
 
<div style="clear: both;">&nbsp;</div>