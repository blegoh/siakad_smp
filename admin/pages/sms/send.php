<div class="art-post-body">
	<div class="art-post-inner art-article">
    <?php
		satpam(array(2,3));
		$sql = "select * from pbk_groups";
		$result = mysql_query($sql);
	?>
        <h2 class="art-postheader">
            Send SMS
        </h2>
        <?php show_msg(); ?>
	    <div class="art-postcontent">
    	<div class="formlayout">
        <form action="engines/add.php" method="post">
            <label></label>
            (Ketikkan Nomor HP, bila lebih dari satu, pisahkan dengan ";")
            <br />
            <label></label>
            <select name="group" id="group" onchange="getData('engines/load_contact.php?id='+this.value,'contacts')">
            	<option value=""></option>
                <?php
				while($row = mysql_fetch_object($result)){
					echo "<option value=\"".$row->ID."\">".$row->Name."</option>";
				}
				?>
            </select>
            <select name="contacts" id="contacts"></select>
            <input type="button" value="Tambahkan" onclick="tambah()" /><br />
            
            <label>Send To</label>
            <textarea id="nomer" name="nomer" cols="30" rows="4"><?php echo (isset($_GET['number']))?$_GET['number']:"";?></textarea>
            <br />
            <label>Message</label>
            <textarea name="msg" rows="7" cols="30"></textarea>
            <br />
            <label></label>
            <input type="hidden" name="redirect" value="index.php?page=sms&p=send" >
            <input type="hidden" value="outbox" name="table">
            <input type="submit" value="Send">
        </form>
    	</div>
    	</div>
    	<br />
                  
        <div class="cleared"></div>
    </div>
            
	<div class="cleared"></div>
</div>