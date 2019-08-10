<?php


function sst_eval_data_action_value_file($obj_data_action,$obj_data_action_colval,$file,$colval_value,$user){
	//global $vals;
	//dbg($file);
	//die;
	/*
	if($obj_data_action_colval->file_destination){
		
		$colval_file_destination = str_replace('/','\\',$_SERVER["DOCUMENT_ROOT"]).'\\'.$obj_data_action_colval->file_destination;
		//$colval_file_destination = $_SERVER["DOCUMENT_ROOT"].'/'.$obj_data_action_colval->file_destination;
		//dbg($colval_file_destination);
	}
	if($obj_data_action->default_file_destination){
		//dbg($vals);
		//dbg($obj_data_action->default_file_destination);
		//dbg(eval('return '.$obj_data_action->default_file_destination.';'));
		$ev_code= 'return ';
		$ev_code.= $obj_data_action->default_file_destination.';';
		$data_action_file_destination = str_replace('/','\\',$_SERVER["DOCUMENT_ROOT"]).'\\'.eval($ev_code).'/';
		
		//$data_action_file_destination = $_SERVER["DOCUMENT_ROOT"].'/'.$obj_data_action->default_file_destination;
	}
	
	if(sst_get_option('default_file_destination')==false){
		sst_save_option('default_file_destination','default_file_path');
	}
	$option_file_destination = sst_get_option('default_file_destination');

	//dbg($_SERVER["DOCUMENT_ROOT"].'/TempImgs');
	if(is_dir($_SERVER["DOCUMENT_ROOT"]).'/TempImgs'){
		//dbg(55555555555555555555555);
		$undefined_file_destination = str_replace('/','\\',$_SERVER["DOCUMENT_ROOT"]).'\\TempImgs\\';//has error
	}
	
	$server_root_file_destination = str_replace('/','\\',$_SERVER["DOCUMENT_ROOT"].'\\');
	$src_file = $file['file_path'];
	$file_name = $file['file_name'];
	//dbg('$src_file:'.$src_file);
	//dbg('$undefined_file_destination.$file_name:'.$undefined_file_destination.$file_name);
	if($colval_file_destination && $src_file<>$colval_file_destination.$file_name){
		//dbg('colval_file_destination');
		$dest_dir = $colval_file_destination;
	}elseif($data_action_file_destination && $src_file<>$data_action_file_destination.$file_name){
		//dbg('data_action_file_destination');
		$dest_dir = $data_action_file_destination;
	}elseif($option_file_destination && $src_file<>$option_file_destination.$file_name){
		//dbg('option_file_destination');
		$dest_dir = $option_file_destination;		
	}elseif($undefined_file_destination && $src_file<>$undefined_file_destination.$file_name){
		//dbg('undefined_file_destination');
		$dest_dir = $undefined_file_destination;
	}elseif($server_root_file_destination && $src_file<>$server_root_file_destination.$file_name){
		//dbg('server_root_file_destination');
		$dest_dir = $server_root_file_destination;
	}*/
	//dbg($dest_dir);die;
	$dest_dir=$obj_data_action_colval->file_destination;
	//if($dest_dir){
		//dbg($file);
		//unlink($src_file.'a.png');
		//unlink($src_file.'a.png');
		
		$src_file=$file['file_path'];
		$file_name = $file['file_name'];
		//dbg($src_file);
		//dbg($dest_dir);
		$file_url = sst_copy_file($src_file,$dest_dir,$file_name);
		
		//$file_url = $file['complete_url'];
		//dbg($src_file);
		
	/*}else{
		$file_url = $file['complete_url'];
	}*/	
	//dbg($file_url);
	
	return $file_url;
	
}