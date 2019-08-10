<?php
function sst_file_upload($files){
	//dbg($files);
	//$dest = str_replace('/','\\',$_SERVER["DOCUMENT_ROOT"].'\\');
	//dbg($dest);
	$dest="";
	foreach($files as $field_name=>$file){
		
		$error = sst_validate_file($file);
		//dbg($files);
		if($error == 'no_error'){
			$new_filename = sst_new_file_name($dest,$file['name']);
			//dbg($new_filename);
			
			//dbg('sst_file_upload:'.$new_filename);//ok
			//dbg($file['tmp_name']);
			$uploads[$field_name]['result'] = copy($file['tmp_name'],$dest.$new_filename);
			//dbg($file['tmp_name']);
			//dbg($new_filename);
			
			//dbg($uploads[$field_name]['result']);
			if($uploads[$field_name]['result']){
				$uploads[$field_name]['file_path'] = addslashes($dest.$new_filename);
				$uploads[$field_name]['file_name'] = addslashes($new_filename);
				$uploads[$field_name]['complete_url'] = addslashes(sst_make_url_by_path($dest,$new_filename));
				//dbg('$uploads[$field_name]["complete_url"]'.$uploads[$field_name]['complete_url']);
				//dbg('sst_file_upload:'.$uploads[$field_name]['complete_url']);
						echo '<div  style="font-size:18px; color:#0C0">فایل به درستی بارگذاری شد.</div>';
				
			}else{
				//dbg('file upload failed');
						echo '<div  style="font-size:18px; color:#F00">فایل بارگذاری نشد.</div>';
				$error= 'unknown reason';
				//echo 'ERROR# FILE NOT UPLODED BECAUSE OF UNKNOWN REASON => '.$field_name.' : '.$file['name'];
			}
		}else{
			$uploads[$field_name]['error']= $error;
			//this image has an error	
		}
	}
	//other $upload[keys] are created for more use later
	foreach($uploads as $field_name=>$upload){
		//dbg($upload);
		if(!$upload['error']){
			
			$uploaded_files['sst_file_types'][$field_name] = $upload;
		}
	}
	//dbg($uploaded_files);
	//die;
	return $uploaded_files;
}
