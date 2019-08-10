<?php

function sst_new_file_name($dest,$file){
	//dbg($dest);
	//dbg($dest.$file);
	if(substr($dest, -1)<>'/'){
		$dest=$dest.'/';	
	}

	if(file_exists($dest.'/'.$file)){
		//dbg('sst_new_file_name:file_exists');
		$file_pathinfo = pathinfo($file);
		//dbg($file_pathinfo);
		$extension = $file_pathinfo['extension'];
		$filename = $file_pathinfo['filename'];
		$i=1;
		while(file_exists($dest.$new_filename)){
			
			$new_filename = $filename.'_'.$i.'.'.$extension;
	
			$i++;
		}
	}else{
		//dbg('sst_new_file_name:NOT file_exists');
		$new_filename = $file;
	}
	//dbg('sst_new_file_name:'.$new_filename);
	return $new_filename;
}
