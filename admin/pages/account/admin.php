<div class="art-post-body">
    <div class="art-post-inner art-article">
    <?php
	satpam(array(3));
	show_msg();
    if(isset($_GET['modus']) && in_array($_GET['modus'], array("add","edit"))){
		if(isset($_GET['id'])){
			$action = "engines/edit.php";
			$id = mysql_real_escape_string($_GET['id']);
			$sql_admin = "select * from admin where username = '$id'";
			$query_admin = mysql_query($sql_admin);
			$row_admin = mysql_fetch_object($query_admin);
		}else{
			$action = "engines/add.php";			
		}
		echo "<h2 class=\"art-postheader\">
				".$_GET['modus']." admin 
			  </h2>
			  <div class=\"art-postcontent\">
			  <div class=\"formlayout\">";
		?>
        <form action="<?php echo $action; ?>" method="post">
        	<?php if($_GET['modus'] == "add"){ ?>
        	<label>Username</label>
            <div class="input"><input type="text" name="username" /></div><br />
            <?php } ?>
            <?php if($_GET['modus'] == "edit"){ ?>
            <label>Old Password</label>
            <input type="hidden" name="username" value="<?=$row_admin->username?>" />
            <div class="input"><input type="password" name="old" /></div><br />
            <?php } ?>
            <label><?php if($_GET['modus'] == "edit") echo "New "; ?>Password</label>
            <div class="input"><input type="password" name="pwd1" /></div><br />
            <label>Confirm <?php if($_GET['modus'] == "edit") echo "New "; ?>Password</label>
            <div class="input"><input type="password" name="pwd2" /></div><br />
            <label>Level</label>
            <div class="input">
            <select name="level">
            	<option value=""></option>
                <?php
				for($i = 1;$i<=3;$i++){
					echo "<option value='$i'"; 
					if($_GET['modus'] == "edit"){
						if($row_admin->level == $i) echo " selected";
					}
					echo ">$i</option>";
				}
				?>
            </select></div><br />
            <label></label>
            <input type="hidden" name="table" value="admin" >
			<input type="hidden" name="redirect" value="index.php?page=account&p=admin" >
            <div class="input"><input type="submit" value="<?php if($_GET['modus']== "add"){echo "Tambah";}elseif($_GET['modus']== "edit"){echo "Update";} ?>" />
            <input type="button" value="cancel" onclick="location.href='index.php?page=account&p=admin';" /></div><br />
        </form>
        <?php
		echo "</div></div>";
	}
	?>
<h2 class="art-postheader">
    List Admin
</h2>
<div class="art-postcontent">
	<?php
	
	if(!isset($_GET['modus'])){
		echo "<a class=\"art-button\" href=\"index.php?page=account&p=admin&modus=add\">Tambah Admin</a><br /><br />";
	}
	?>
    <!-- article-content -->
    <?php
    include "../config/BlegohPagingClass.php";
    $data = 15;
    $sql = "select * from admin";
    $paging = new BlegohPaging($sql,$data,"index.php?page=account&p=admin","aktif","paging","prevnext");
    $query = $paging->getResult();
    ?>
    <br />
    <table class="art-article" border="0" cellspacing="0" cellpadding="0">
    <tr>
	<th>Username</th>
	<th>Level</th>
	<th>Aksi</th>
    </tr>
    <?php
	while($row = mysql_fetch_object($query)){
    ?>
    <tr>
	<td><?=$row->username?></td>
	<td><?=$row->level?></td>
    <td>
		<a class='art-button' href="index.php?page=account&p=admin&modus=edit&id=<?=$row->username?>">EDIT</a>
    </td>
    </tr>
    <?php } ?>
    </table>
    <br /> <br />
    <div id="paging">
    <center>
    <?php
	$paging->getPaging();
    ?>
    </center>
    </div>
</div>
<div class="cleared"></div>
    </div>

    <div class="cleared"></div>
</div>	