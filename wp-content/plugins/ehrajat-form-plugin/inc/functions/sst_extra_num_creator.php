<?php
function sst_extra_num_creator($level_num=NULL,$nums=NULL){
	static $i;
	if(!$nums){
	$nums[0][] = '1';
	$nums[0][] = '2';
	$i = 0;
	}
	$i++;
	if($level_num>=1){
		foreach($nums[$i-1] as $num){
			$nums[$i][] = $num.'1';
			$nums[$i][] = $num.'2';
		}
		if($i+1<$level_num){
			$nums = sst_extra_num_creator($level_num,$nums);
		}else{
			//$nums = sst_flaten_array($nums);
		}
	}else{
		//$nums = sst_flaten_array($nums);
	}
	//dbg($nums);
	return $nums;
}


