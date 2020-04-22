<?php

require_once('../../../wp-load.php');
	$process = new process($_GET['process']);
echo '<div style="background:white;">';
	echo $process->render();
