<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script language="javascript" src="lib/ajax.js"></script>
<title>Sistem Informasi Akademik | <?php if(isset($_GET["page"])) {
				$page = "pages/".$_GET["page"].".php";
				if(is_file($page)) {
					$title = strtoupper(substr($_GET["page"],0,1)).substr($_GET["page"],1);
					echo $title;
				}else{
					echo "halaman tidak ditemukan </h3>";
				}
			}else{
				echo "Home";
			} ?></title>
<link rel="shortcut icon" href="lib/images/fav_icon.png" />
<link href="lib/style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="lib/extra.css" rel="stylesheet" type="text/css" media="screen" />
<link href="lib/facebox.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" href="lib/base/jquery.ui.all.css">
<script type="text/javascript" src="lib/jquery-1.8.2.js" ></script>
<script src="lib/facebox.js" type="text/javascript"></script>
<script src="lib/jquery.validate.js" type="text/javascript"></script>
<script src="lib/jquery.ui.core.js" type="text/javascript"></script>
<script src="lib/jquery.ui.widget.js" type="text/javascript"></script>
<script src="lib/jquery.ui.position.js" type="text/javascript"></script>
<script src="lib/jquery.ui.tooltip.js" type="text/javascript"></script>
<script src="lib/scripts.js" type="text/javascript"></script>
</head>