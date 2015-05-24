<?php
            $sql = "SELECT * FROM `kelas`";
            $query= mysql_query($sql);
if(!defined("valid")){die("Access forbidden! <br />You don't have permission to access the requested object. ");}
?>
		<?php
                if(!isset($_SESSION['username'])){
                    echo "Anda Harus Login Terlebih Dahulu Agar Dapat Menginputkan Nilai";
                }else{
                    ?>
                    Isikan Nilai Dengan Benar <br />
                    Pilih Kelas:
                    <select onchange="getData('engines/siswa.php?kd_kelas='+this.value,'ssw')">
                        <option value="">--Pilih Kelas--</option>
                        <?php
                        while($row = mysql_fetch_array($query)){
                        ?>
                            <option value="<?php echo $row['kd_kelas']; ?>"><?php echo $row['nama_kelas']; ?></option>
                        <? } ?>
                    </select>
                    <?
                }
                ?>

                <div id="ssw"></div>
 
		<div style="clear: both;">&nbsp;</div>