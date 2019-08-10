<?php
function sst_unique_user_id(){
	$unique_user_id = '%'.get_current_user_id().'%';
	return $unique_user_id;
}
