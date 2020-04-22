<?php
require_once('wp-load.php');
	$f = new process($_GET['pr']);
echo '<div style="background:yellow;">';
	echo $f->render();
