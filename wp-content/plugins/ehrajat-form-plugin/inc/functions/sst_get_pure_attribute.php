<?php
/*
created 1396-10-06
modified 1396-10-06
tested;
*/

function sst_get_pure_attribute($created_att){
	$last_pos = strrpos($created_att,'"');
	if($last_pos and strpos($created_att,'"')!==false){
		$last_pos_len = strlen($created_att)-$last_pos;
		$created_att = substr_replace($created_att, '', $last_pos, $last_pos_len);
		$first_pos = strpos($created_att,'"');
		$first_pos_len = $first_pos+1;
		$created_att = substr_replace($created_att, '', 0, $first_pos_len);
	}else{
		$last_pos = strrpos($created_att,"'");
		$last_pos_len = strlen($created_att)-$last_pos;
		$created_att = substr_replace($created_att, '', $last_pos, $last_pos_len);
		$first_pos = strpos($created_att,"'");
		$first_pos_len = $first_pos+1;
		$created_att = substr_replace($created_att, '', 0, $first_pos_len);
	}
	//substr_replace()
//echo $created_att.'<br>';
	return $created_att;
	
}
//echo sst_get_pure_attribute(" id='assssssss' ");
//echo sst_get_pure_attribute(' id="333333333" ');
?>