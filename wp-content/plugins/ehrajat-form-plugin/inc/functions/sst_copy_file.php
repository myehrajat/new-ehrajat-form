<?php

function sst_copy_file($src_file,$dest_dir,$file_name){
//dbg('sst_copy_file($src_file,$dest_dir,$file_name)'.$dest_dir);

	$new_file_name = sst_new_file_name($dest_dir,$file_name);
	//dbg('$dest_dir,$file_name:'.$dest_dir.'------'.$file_name);
	//dbg('$new_file_name:'.$new_file_name);
			//dbg('sst_copy_file:'.$new_file_name);
	//if($src_file){
		//dbg($dest_dir);
		/*if(is_dir($dest_dir)){
			//dbg(11111111111111);
			//dbg($dest_dir);
				$result = @copy($src_file,$dest_dir.$new_file_name);
				//dbg('sst_copy_file:'.$new_file_name);
		}else{*/
			//dbg(222222222222);
			//dbg('1045'.$dest_dir);
			$dir = sst_mkdir($dest_dir);
			$result = @copy($src_file,$dest_dir.'/'.$new_file_name);
			/*if($dir){
				//$result = @copy($src_file,$dest_dir.$new_file_name);
			}else{
				echo 'SST#ERROR THE FOLDER CAN NOT BE CREATED IN sst_copy_file PLZ CHANGE THE CHMODE. OR YOUR ADDRESS IS AN URL NOT PATH NOTE: USE "/" IN YOUR COLVAL VALUE NOT "\"<br />';
			}*/
		//}		
				

		if($result){
			//dbg($dest_dir.$new_file_name);
				
			//die;	
			$copied_file_url = addslashes(sst_make_url_by_path($dest_dir,$new_file_name));
			//dbg('$copied_file_url:'.$copied_file_url);
			@unlink($src_file);
			//dbg($copied_file_url);
		}else{
			//echo 'SST#ERROR: FILE CAN\'T BE COPIED IN $obj_data_action_colval->file_destination : '.$obj_data_action_colval->file_destination;
		}
	//}
	//dbg('copied_file_url:'.$copied_file_url);
	return $copied_file_url;
}
