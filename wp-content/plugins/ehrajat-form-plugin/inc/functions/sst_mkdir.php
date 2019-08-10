<?php

function sst_mkdir($path){
	//dbg(' sst_mkdir($path)'.$path);
	//dbg(mkdir($path));
	if (!is_dir($path)) mkdir($path, 0777, true);
	/*
	$strlen = strlen($path);
	$strrpos = strrpos($path,'/');
	//dbg($strrpos);
	if(!is_dir($path)){
		if(($strlen-1) == $strrpos){
			$path = substr($path,0,$strrpos);
			//dbg($path);
		}
		//dbg(strrpos($path,'/'));
		//dbg(strlen($path));
		
		$path_elements = explode('/',$path);
		$count_path_elements = count($path_elements);
		$i=1;
		//dbg($path_elements);
		foreach($path_elements as $path_element){
		//dbg($path_element);
			$dir .= $path_element.'/';
//			$dir .= $path_element;
			//dbg($dir);
			if(!is_dir($dir)){
				//dbg($dir.'333333333');
				$bool = mkdir($dir);
				if($bool && $count_path_elements == $i){
					$result = $path.'/';
				}else{
					$result = false;
				}
				//dbg($result);
			}//this dir exists
			$i++;
		}
	}else{
		if(($strlen-1) <> $strrpos){
			$path = $path.'/';
			//dbg($path);
		}
		$result = $path;
	}
	//dbg('1111'.$result);*/
	return $result;
}

