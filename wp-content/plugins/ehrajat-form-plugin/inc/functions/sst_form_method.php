<?php
function sst_form_method(){
	if(isset($_REQUEST['step'])){
		if(isset($_POST['save_id'])){
			$method = 'post';	
		}elseif(isset($_GET['save_id'])){
			$method = 'get';	
		}else{
			echo 'ERROR: NOT POST NOT GET IS THE METHOD save_id VARIABLE IS NOT SET';
		}
	}
	return $method;
}


