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
          newusername: {
			  required: true,
			  minlength: 5
          },
          confirmusername:{
			  required: true,
			  equalTo : newusername
          },
        },
        messages: {
          newusername: {
			  required: "harus Diisi",
			  minlength: "Minimal 5 Digit"
          },
          confirmusername:{
			  required: "Harus Diisi",
			  equalTo : "Username Harus Sama"
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
  <h2>Ganti Username</h2>
    <form id="form-pop-up" action="engines/username.php" method="post">
      <fieldset>
        <div class="field">
          <label>New Username:</label>
          <input type="text" id="newusername" name="newusername">
        </div>
        <div class="field">
          <label>Confirm New Username:</label>
          <input type="text" id="confirmusername" name="confirmusername">
        </div>
        <div>
          <input class="submit" type="submit" value="Ganti"/>
        </div>
      </fieldset>
    </form>
  </div>
  </body>
</html>