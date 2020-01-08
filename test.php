<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>demo for extra</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="extra.js"></script>
</head>
<?php
	echo '<pre>';
var_dump( $_FILES );	echo '</pre>';

?>

<body>
<form method="post" enctype="multipart/form-data" >
  <input name=nn[] type="file">
  <input name=nn[] type="file">
  <input type="submit" value="sub">
</form>
</body>
</html>