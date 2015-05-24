<div id="contactFormContainer">
        <div id="contactForm">
        	<div class="loader"></div>
			<div class="bar"></div>
<?php
if(isset($_SESSION['username'])){
		//mengambil nama guru berdasarkan username
		$sql_get_nama = "select * from user u
						 left join guru g on u.id_guru = g.id_guru
						 where username = '".$_SESSION['username']."'";
		$res_get_nama = mysql_query($sql_get_nama);
		$row_get_nama = mysql_fetch_object($res_get_nama);
	    echo $row_get_nama->nama;
		echo "<br /><a rel='facebox' href='pages/password.php'>Ganti Password</a>";
		echo "<br /><a rel='facebox' href='pages/username.php'>Ganti Username</a>";
		echo "<br /><a href='engines/logout.php'>logout</a><br /><br /><br />";
	}else{
?>
<div id="login_form">
            <form action="engines/proses_login.php" class="contactForm" name="cform" method="post">
                <p>Form Login. Pastikan Username Dan Password Anda Benar</p>
                <div class="input_boxes">
                    <p><label for="name">Username</label><br />
                    <input id="username" type="text" name="username" title="Input Your Username" /></p>
                    <p><label for="e-mail">Password</label><br />
                    <input id="password" type="password" name="password" title="Input Your Password" />
                    <input type="hidden" name="redirect" value="<?php echo $_SERVER['REQUEST_URI'];?>" />
                    <input type="hidden" name="table" value="user" /></p></div>   
                 <br />
                 <input class="submit" type="submit" name="submit" value="Login" onfocus="this.blur()"  />
            </form>
</div>
<?php
	}
?>
      </div>
      <div class="contact" title="Click For Open/Close Form Login"></div>    
  </div>