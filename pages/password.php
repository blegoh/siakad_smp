<?php
session_start();
if(!isset($_SESSION['username']))die("Anda tidak berhak mengakses halaman ini");
?>
<html>
<head>
<script type="text/javascript" src="lib/jquery-1.4.2.min.js" ></script>
<script src="lib/jquery.validate.js" type="text/javascript"></script>
<script>
  $().ready(function() {
      $("#form-pop-up").validate({
        rules: {
          current: {
			  required: true,
			  //remote: "engines/cek_password.php",
			  "remote":
				{
				  url: 'engines/cek_password.php',
				  type: "post",
				  data:
				  {
					  password: function()
					  {
						  return $('#form-pop-up :input[name="current"]').val();
					  }
				  }
				}
          },
          newpass: {
			  required: true,
			  minlength: 5
          },
          confirmpass:{
			  required: true,
			  equalTo : newpass
          },
        },
        messages: {
          current: {
			  required: "Harus Diisi",
			  remote : "Password lama salah"
          },
          newpass: {
			  required : "harus Diisi",
			  minlength: "Minimal 5 Digit"
          },
          confirmpass:{
			  required: "Harus Diisi",
			  equalTo : "Password Harus Sama"
          },
        }
      });
  });
</script>
</head>
<body>
<?php
if(!isset($_SESSION['username']))die("Anda Tidak Berhak Mengakses Halaman Ini")
?>
  <div class="bolder">
  <h2>Ganti Password</h2>
    <form id="form-pop-up" action="engines/password.php" method="post">
      <fieldset>
        <div class="field">
          <label>Current password:</label>
          <input type="password" id="current" name="current">
        </div>
        <div class="field">
          <label>New Password:</label>
          <input type="password" id="newpass" name="newpass">
        </div>
        <div class="field">
          <label>Confirm New Password:</label>
          <input type="password" id="confirmpass" name="confirmpass">
        </div>
        <div>
          <input class="submit" type="submit" value="Ganti"/>
        </div>
      </fieldset>
    </form>
  </div>
  </body>
</html>