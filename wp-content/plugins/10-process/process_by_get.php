<?php

require_once('../../../wp-load.php');
	$process = new process($_GET['process']);
	//krumo($process['process_data']['form_data']['tag']['after']);
echo '<div style="background:white;">';
	echo $process->render();
echo '</div>';
