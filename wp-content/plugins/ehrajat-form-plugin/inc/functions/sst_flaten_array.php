<?php

function sst_flaten_array($m_array){//only two dims
	foreach($m_array as $ch_array){
		foreach($ch_array as $val){
			$flaten_array[]=$val;
		}
	}
	return $flaten_array;
}

