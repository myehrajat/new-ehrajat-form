<?php
/*
html 5 required added 1396/08/06





*/
if($_GET['delfile']){
	@unlink($_GET['delfile']);
	//static $deleted_file;
	//$deleted_file = $_GET['input_name'];
	echo '<META HTTP-EQUIV="REFRESH">';
}
$sst['type']='file';
$sst['function']='sst_file';
$sst['epithet']='File Field';
$sst['description']='';
$sst['slug']='file_field';
$sst['owner']='Ehrajat';
$sst['id']=8;

function sst_file($input_id,$vals=NULL){
	global $input_table,$standard_table;
	if(DEBUG){
		echo 'sst_file<br />';
	}

	//dbg($vals,true);
	
	$obj_input = sst_get_by_id($input_id,$input_table);
	$slashed_vals = unserialize($vals);
	if($_GET['input_name']&&$_GET['delfile']){
		//dbg($slashed_vals['sst_file_types'][$_GET['input_name']]);
		unset($slashed_vals['sst_file_types'][$_GET['input_name']]);
		if(empty($slashed_vals['sst_file_types'])){
			unset($slashed_vals['sst_file_types']);
		}
		//dbg($slashed_vals);
		$slashed_vals = sst_update_temporary_data($slashed_vals);
		//dbg('$slashed_vals');
		
	}
	//dbg($slashed_vals['sst_file_types'][$obj_input->name]['file_path']);
	if( $vals<>NULL
		&&($slashed_vals['sst_file_types'][$obj_input->name]['complete_url']<>''
		||$slashed_vals['sst_file_types'][$obj_input->name]['complete_url']<>NULL
		)){//edit or view mode
	//dbg('sst_file is on view mode');
		$file_input = '<a href="'.$slashed_vals['sst_file_types'][$obj_input->name]['complete_url'].'"><img src="'.$slashed_vals['sst_file_types'][$obj_input->name]['complete_url'].'" width="100" height="100" /></a>';
		//dbg( );
		$file_input .= '<a href="http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'].'&delfile='.$slashed_vals['sst_file_types'][$obj_input->name]['file_path'].'/'.$slashed_vals['sst_file_types'][$obj_input->name]['file_name'].'&input_name='.$obj_input->name.'"><img src="'. plugin_dir_url( __FILE__ ).'minus.png'.'" /></a>';
	}else{//add mode
	//dbg('sst_file is on add // add and edit mode');
		$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);
		//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
		$attributes['events'] = sst_create_events($event_ids);
		$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
		//dbg($obj_standard);
		if($obj_standard){
			$attributes['required'] = sst_create_required($obj_standard);
			//dbg($attributes['required']);
			$attributes['name'] = sst_create_name($obj_input);
			$attributes['disabled'] = sst_create_disabled($obj_standard);
			$attributes['size'] = sst_create_size($obj_standard);
			$attributes['metas'] = sst_create_metas($obj_standard);
					
			//$vals = sst_stripslashes_vals($slashed_vals);
			//dbg($vals);
			//dbg($slashed_vals['sst_file_types'][$obj_input->name]['complete_url']);
			$file_input = '<input type="file" '.implode('',$attributes).' >';
		}else{
			echo 'SST#ERROR: INCORECT STANDARD ID';
		}
	}
	
	if(DEBUG){
		echo 'End sst_file<br />';
	}
	//dbg( $file_input);
	return $file_input;	
}