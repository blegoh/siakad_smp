<div class="art-post-body">
    <div class="art-post-inner art-article">
    <?php
	satpam(array(2,3));
	
	?>
<h2 class="art-postheader">
    Daftar guru kelas
</h2>
<div class="art-postcontent">
	
    <!-- article-content -->
    <?php
    $sql = "select * from teach t
			left join (select nama,nama_mapel, id_guru from guru g left join mapel m on g.kd_mapel = m.kd_mapel) g on t.id_guru = g.id_guru
			where kd_kelas = ".$_GET['kd_kelas'];
    $result = mysql_query($sql);
    ?>
    <br />
    <table>
    <?php
	while($row = mysql_fetch_object($result)){
    ?>
    <tr>
    	<td><?=$row->nama_mapel?></td>
        <td><?=$row->nama?></td>
    </tr>
    <?php } ?>
    </table>
    <br /> <br />
    <a class="art-button" href="index.php?page=home&p=kelas">Kembali</a>
</div>
<div class="cleared"></div>
    </div>

    <div class="cleared"></div>
</div>	