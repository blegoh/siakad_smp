<?php
include "../config/koneksi.php";
if(isset($_SESSION['admin'])){
    header("Location: index.php");
}else{
	show_msg();
}

?>
<html>
<head>
<title>Login</title>
<style type="text/css">

html {
    font-size: 82%;
}
input, select, textarea {
    font-size: 1em;
}
body {
    background: none repeat scroll 0 0 #FFFFFF;
    color: #444444;
    font-family: sans-serif;
    margin: 0.5em;
    padding: 0;
}

h1 {
    font-size: 140%;
    font-weight: bold;
}

.data {
    margin: 0 0 12px;
}

form {
    display: inline;
    margin: 0;
    padding: 0;
}
input[type="text"] {
    background: url("img/input_bg.gif") repeat scroll 0 0 transparent;
    border: 1px solid #AAAAAA;
    border-radius: 2px 2px 2px 2px;
    box-shadow: 0 1px 2px #DDDDDD;
    color: #555555;
    margin-bottom: 10px;
    padding: 4px;
}
input[type="password"] {
    background: url("./img/input_bg.gif") repeat scroll 0 0 transparent;
    border: 1px solid #AAAAAA;
    border-radius: 2px 2px 2px 2px;
    box-shadow: 0 1px 2px #DDDDDD;
    color: #555555;
    padding: 4px;
}
input[type="submit"] {
    background: -moz-linear-gradient(center top , #FFFFFF, #CCCCCC) repeat scroll 0 0 transparent;
    border: 1px solid #AAAAAA;
    border-radius: 12px 12px 12px 12px;
    color: #111111;
    font-weight: bold;
    margin-left: 14px;
    padding: 3px 7px;
    text-decoration: none;
    text-shadow: 0 1px 0 #FFFFFF;
}
input[type="submit"]:hover {
    background: -moz-linear-gradient(center top , #CCCCCC, #DDDDDD) repeat scroll 0 0 transparent;
    cursor: pointer;
    position: relative;
}
input[type="submit"]:active {
    left: 1px;
    position: relative;
    top: 1px;
}
textarea {
    height: 18em;
    overflow: visible;
}
textarea.char {
    height: 3em;
}
fieldset {
    background: none repeat scroll 0 0 #EEEEEE;
    border: 1px solid #AAAAAA;
    border-radius: 4px 4px 0 0;
    box-shadow: 1px 1px 2px #FFFFFF inset;
    margin-top: 1em;
    padding: 1.5em;
    text-shadow: 0 1px 0 #FFFFFF;
}
fieldset fieldset {
    background: none repeat scroll 0 0 #E8E8E8;
    border: 1px solid #AAAAAA;
    margin: 0.8em;
}
fieldset legend {
    background-color: #FFFFFF;
    border: 1px solid #AAAAAA;
    border-radius: 2px 2px 2px 2px;
    box-shadow: 3px 3px 15px #BBBBBB;
    color: #444444;
    font-weight: bold;
    padding: 5px 10px;
}
button {
    display: inline;
}
img, input, select, button {
    vertical-align: middle;
}

div.tools {
    padding: 0.2em;
}
div.tools a {
    color: #3A7EAD !important;
}
div.tools, fieldset.tblFooters {
    border-radius: 0 0 4px 5px;
    border-top: 0 none;
    clear: both;
    float: none;
    margin-bottom: 0.5em;
    margin-top: 0;
    text-align: right;
}
div.null_div {
    font-style: normal;
    height: 20px;
    min-width: 50px;
    text-align: center;
}
fieldset .formelement {
    float: left;
    margin-right: 0.5em;
    white-space: nowrap;
}
fieldset div[class="formelement"] {
    white-space: normal;
}
button.mult_submit {
    background-color: transparent;
    border: medium none;
}

div.tools, .tblFooters {
    background: none repeat scroll 0 0 #D3DCE3;
    color: #000000;
    font-weight: normal;
}
body.loginform h1{
    display: block;
    text-align: center;
}
body.loginform {
    text-align: center;
}
body.loginform div.container {
    margin: 0 auto;
    text-align: left;
    width: 30em;
}

.loginform label {
    display: block;
    float: left;
    font-weight: bold;
    margin-top: 4px;
    width: 90px;
    text-align: right;
    margin-right: 25px;
}

.item {
    padding: 10px;
}

</style>
</head>
<body class="loginform">
    <div class="container">
    <br />
    <br />
        <h1>
        Welcome to Administrator Page
        </h1>
        <br>
        <form class="login" target="_top" name="login_form" action="../engines/proses_login.php" method="post">
            <fieldset>
                <legend>
                Log in
                </legend>
                <div class="item">
                    <label for="input_username">Username</label>
                    <input id="input_username" class="textfield" type="text" size="24" value="" name="username"><br />
                    <label for="input_password">Password</label>
                    <input id="input_password" class="textfield" type="password" size="24" value="" name="password"><br />
                </div>
            </fieldset>
            <fieldset class="tblFooters">
                <input type="hidden" name="redirect" value="<?php echo $_SERVER['PHP_SELF']; ?>">
                <input type="hidden" name="table" value="admin">
                <input id="input_go" type="submit" value="Go">
            </fieldset>
        </form>
    </div>
</body>