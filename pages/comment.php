<html>
<head>
<script type="text/javascript" src="lib/jquery-1.4.2.min.js" ></script>
<script src="lib/jquery.validate.js" type="text/javascript"></script>
<script>
  $().ready(function() {
      $("#form-pop-up").validate({
        rules: {
          nama: {
                  required: true,
                  minlength: 4
          },
          email: {
                  required: true,
                  email: true
          },
          web:{
            url: true
          },
          comment:{
            required: true,
            minlength: 5
          },
        },
        messages: {
          nama: {
                  required: "Masukkan nama",
                  minlength: "Nama minimal 4 karakter"
          },
          email: {
                  required: "Masukkan email",
                  email: "Alamat email tidak valid"
          },
          web:{
            url: "Alamat Web Salah"
          },
          comment:{
            required: "Anda Belum Berkomentar",
            minlength: "Komentar terlalu pendek"
          },
        }
      });
  });
</script>
</head>
<body>
  <div class="bolder">
  <h2>Comment Form</h2>
    <form id="form-pop-up" action="engines/proses_comment.php" method="post">
      <fieldset>
        <div class="field">
          <label>Your Name:</label>
          <input type="text" id="nama" name="nama" value="<?php if(isset($nama)){ echo $nama; } ?>" >
          <input type="hidden" id="artikel" name="artikel" value="<?php echo $_GET['id']; ?>" />
          <input type="hidden" name="redirect" value="../index.php" />
        </div>
        <div class="field">
          <label>Your E-mail:</label>
          <input type="text" id="email" name="email" value="<?php if(isset($nama)){ echo $email; } ?>">
        </div>
        <div class="field">
          <label>Your Website:</label>
          <input type="text" id="web" name="web" value="<?php if(isset($nama)){ echo $web; } ?>" >
        </div>
        <div class="field">
          <label>Your Comment:</label>
          <textarea id="comment" name="comment"><?php if(isset($nama)){ echo $comment; } ?></textarea>
        </div>
        <div>
          <input class="submit" type="submit" value="Send Your Comment!"/>
        </div>
      </fieldset>
    </form>
  </div>
</body>
</html>