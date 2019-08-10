<?php
//Samples
if(IS_PLUGIN_ACTIVE){

	if(sst_get_option('sample_field_1')===false){
		$sample_field_1= array(
		'epithet'=>'Text',
		'slug'=>'text',
		'label_id'=>'',
		'input_ids'=>'',
		'required'=>'',
		'extra'=>'',
		'max_extra'=>'',
		'appearance_id'=>'',
		'pack_id'=>'',
		'the_id'=>'field_1',
		'default_pack_id'=>'',
		'description'=>'Text sample',
		'owner'=>'Ehrajat',
		'created'=>date('Y-m-d H:i:s'),
		'modified'=>date('Y-m-d H:i:s'));
		sst_save_option('sample_field_1',sst_add_to_table($field_table,$sample_field_1));
	}
	if(sst_get_option('sample_field_2')===false){
		$sample_field_2= array(
		'epithet'=>'File',
		'slug'=>'file',
		'label_id'=>'',
		'input_ids'=>'',
		'required'=>'',
		'extra'=>'',
		'max_extra'=>'',
		'appearance_id'=>'',
		'pack_id'=>'',
		'the_id'=>'field_2',
		'default_pack_id'=>'',
		'description'=>'File sample',
		'owner'=>'Ehrajat',
		'created'=>date('Y-m-d H:i:s'),
		'modified'=>date('Y-m-d H:i:s'));
		sst_save_option('sample_field_2',sst_add_to_table($field_table,$sample_field_2));
	
	}
	if(sst_get_option('sample_field_3')===false){
		$sample_field_3= array(
		'epithet'=>'Date Picker',
		'slug'=>'date_picker',
		'label_id'=>'',
		'input_ids'=>'',
		'required'=>'',
		'extra'=>'',
		'max_extra'=>'',
		'appearance_id'=>'',
		'pack_id'=>'',
		'the_id'=>'field_3',
		'default_pack_id'=>'',
		'description'=>'Date Picker sample',
		'owner'=>'Ehrajat',
		'created'=>date('Y-m-d H:i:s'),
		'modified'=>date('Y-m-d H:i:s'));
		sst_save_option('sample_field_3',sst_add_to_table($field_table,$sample_field_3));
	}
	if(sst_get_option('sample_field_4')===false){
		$sample_field_4= array(
		'epithet'=>'Color Picker',
		'slug'=>'color_picker',
		'label_id'=>'',
		'input_ids'=>'',
		'required'=>'',
		'extra'=>'',
		'max_extra'=>'',
		'appearance_id'=>'',
		'pack_id'=>'',
		'the_id'=>'field_4',
		'default_pack_id'=>'',
		'description'=>'Color Picker sample',
		'owner'=>'Ehrajat',
		'created'=>date('Y-m-d H:i:s'),
		'modified'=>date('Y-m-d H:i:s'));
		sst_save_option('sample_field_4',sst_add_to_table($field_table,$sample_field_4));
	}
	
	if(sst_get_option('sample_block_1')===false){
		$sample_block_1= array(
		'epithet'=>'Sample Block One',
		'slug'=>'sample_block_1',
		'field_ids'=>sst_get_option('sample_field_1'),
		'block_ids'=>'',
		'required_field_ids'=>'',
		'extra'=>'',
		'max_extra'=>'',
		'appearance_id'=>'',
		'pack_id'=>'',
		'the_id'=>'sample_block_1_id',
		'default_pack_id'=>'',
		'description'=>'this is a sample block',
		'owner'=>'Ehrajat',
		'created'=>date('Y-m-d H:i:s'),
		'modified'=>date('Y-m-d H:i:s'));
		sst_save_option('sample_block_1',sst_add_to_table($block_table,$sample_block_1));
	}
	if(sst_get_option('sample_block_2')===false){
		$sample_block_2= array(
		'epithet'=>'Sample Block Two',
		'slug'=>'sample_block_2',
		'field_ids'=>sst_get_option('sample_field_2'),
		'block_ids'=>'',
		'required_field_ids'=>'',
		'extra'=>'',
		'max_extra'=>'',
		'appearance_id'=>'',
		'pack_id'=>'',
		'the_id'=>'sample_block_2_id',
		'default_pack_id'=>'',
		'description'=>'this is a sample block',
		'owner'=>'Ehrajat',
		'created'=>date('Y-m-d H:i:s'),
		'modified'=>date('Y-m-d H:i:s'));
		sst_save_option('sample_block_2',sst_add_to_table($block_table,$sample_block_2));
	}
	if(sst_get_option('sample_form_1')===false){
		$sample_form_1 = array(
		'epithet'=>'Sample Form One',//a name for using as name
		'slug'=>'sample_form',//for using as a slug
		'block_ids'=>sst_get_option('sample_block_1').','.sst_get_option('sample_block_2'),//contain 6-10 fields 
		'field_ids'=>sst_get_option('sample_field_3').'-'.sst_get_option('sample_field_4'),//means 1,2,3,4,5 fields
		'required_field_ids'=>sst_get_option('sample_field_3').'-'.sst_get_option('sample_field_4').','.sst_get_option('sample_field_1'),//means 1,2,6 fields
		'method'=>'post',//attribute of form tag = "post" or "get" the default is configured by formMethodDefault and its default is "post" suitable for sending large data
		'name'=>'sample_form_1',//attribute of form tag = first the name and then the slug and then epithet will be used
		'target'=>'',//attribute of form tag = "_top" or "_parent" or "_self" or "new" or "_blank" the default is configured by formTargetDefault and if its not yet set this attribute will not be created
		'enctype'=>'multipart/form-data',//attribute of form tag = "application/x-www-form-urlencoded" or "multipart/form-data" "ortext/plain" the default is configured by formEnctypeDefault and its default is "multipart/form-data" suitable for uploading file and sending data
		'action'=>'',//attribute of form tag = null means self page
		'header'=>addslashes('<div style="background-color:#0099FF">Hello, This is a sample form you can use any html code here as a header of your form! <a href="http://ehrajat.com" title="Ehrajat.com"> Ehrajat.com</a></div>'),//custom html in header of form
		'footer'=>addslashes('<div style="background-color:#FF6600">This is a sample form you can use any html code here as a footer of your form! <a href="http://ehrajat.com" title="Ehrajat.com"> Ehrajat.com</a></div>'),
		'data_action_ids'=>'1-10',//what to do with submitted data
		'condition_ids'=>'1-3',//conditions to go where or decide next form by condition checking
		'appearance_id'=>'',
		'language_id'=>'',
		'event_ids'=>'',
		'pack_id'=>'',
		'the_id'=>'sample_form_1_id',//attribute of form tag = first the the_id then the name and then the slug and then epithet will be used
		'default_pack_id'=>'',
		'description'=>'this is short description for Sample Form One to remember it and describe what will do your form',
		'owner'=>'Ehrajat',//who is created the form
		'created'=>date('Y-m-d H:i:s'),
		'modified'=>date('Y-m-d H:i:s'));
		sst_save_option('sample_form_1',sst_add_to_table($form_table,$sample_form_1));
	}
}