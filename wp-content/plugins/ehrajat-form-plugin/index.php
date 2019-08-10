<?php

//1396-10-12
/**
 * Plugin Name: Ehrajat Form
 * Plugin URI: http://ehrajat.com
 * Description: make forms and manuplate easily. use [ehrajat_form] and send form id by get variable like http://localhost/?p=4&form=1
 * Version: 1.1
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
 
/**
OPTIONS THAT ARE USED IN THIS PLUGIN ARE:
JalaliJSCalendar_icon
JalaliJSCalendar_icon_height
JalaliJSCalendar_icon_width


*/



define('DEBUG',false);
$user_display_name=$user_data->display_name;
$form_table = 'sst_form';
$pack_table = 'sst_pack';
$default_pack_table = 'sst_default_pack';
$block_table = 'sst_block';
$field_table = 'sst_field';
$label_table = 'sst_label';
$default_pack_id = '1';
$select_options_table='sst_select_options';
$standard_db_table='sst_standard_db';
$standard_condition_table='sst_standard_condition';
$appearance_table = 'sst_appearance';
$input_table = 'sst_input';
$keyboard_table = 'sst_keyboard';
$event_table = 'sst_event';
$standard_table='sst_standard';
$language_table = 'sst_language';
$standard_meta_table = 'sst_standard_meta';
$options_table = 'sst_options';

//$vals_getter_table='vals_getter';

if(isset($_REQUEST['mode'])){
	$mode = $_REQUEST['mode'];
}else{
	$mode = 'add';
}
$input_table = 'sst_input';
$type_table = 'sst_type';
$temporary_data_table = 'sst_vals';
$data_action_table = 'sst_data_action';
$condition_table = 'sst_condition';
$data_action_function_table = 'sst_data_action_colval';
$data_action_colval_table = 'sst_data_action_colval';

include_once('inc/functions/sst_collate.php');
$collate = sst_collate();
include_once('inc/functions/sst_do_eval.php');
include_once('inc/functions/get_ids.php');
include_once('inc/functions/sst_array_trimmer.php');//include before sst_remove_nulled_values
include_once('inc/functions/sst_remove_nulled_values.php');
include_once('inc/functions/sst_get_by_id.php');
include_once('inc/functions/sst_create_language.php');
include_once('inc/setup/functions.php');
include_once('inc/functions/sst_get_option.php');
include_once('inc/functions/sst_save_option.php');
include_once('inc/functions/sst_delete_option.php');
include_once('inc/functions/sst_unique_user_id.php');
include_once('inc/functions/sst_decide_form_step_level.php');
include_once('inc/functions/sst_create_form.php');
include_once('inc/functions/sst_create_the_id.php');
include_once('inc/functions/sst_create_pack_order.php');
include_once('inc/functions/sst_create_pack.php');
include_once('inc/functions/sst_create_form_tag.php');
include_once('inc/functions/sst_create_event.php');
include_once('inc/functions/sst_create_events.php');
include_once('inc/functions/sst_create_blocks.php');
include_once('inc/functions/sst_create_head_extra.php');
include_once('inc/functions/sst_create_end_extra.php');
include_once('inc/functions/sst_create_block.php');
include_once('inc/functions/sst_create_fields.php');
include_once('inc/functions/sst_create_field.php');
include_once('inc/functions/sst_create_field_label.php');
include_once('inc/functions/sst_create_text.php');
include_once('inc/functions/sst_create_tooltip.php');
include_once('inc/functions/sst_create_java_tooltip.php');
include_once('inc/functions/sst_create_note.php');
include_once('inc/functions/sst_create_inputs.php');
include_once('inc/functions/sst_create_input.php');
include_once('inc/functions/sst_form_method.php');
include_once('inc/functions/sst_create_process.php');
include_once('inc/functions/sst_stripslashes_vals.php');
include_once('inc/functions/sst_create_default_form_fields.php');
include_once('inc/functions/sst_load_temporary_data.php');
include_once('inc/functions/sst_validate_file.php');
include_once('inc/functions/sst_new_file_name.php');
include_once('inc/functions/sst_make_url_by_path.php');
include_once('inc/functions/sst_file_upload.php');
include_once('inc/functions/sst_save_temporary_data.php');
include_once('inc/functions/sst_check_conditions.php');
include_once('inc/functions/sst_check_condition.php');
include_once('inc/functions/sst_create_appearance.php');
include_once('inc/functions/sst_create_id.php');
include_once('inc/functions/sst_create_keyboard.php');
include_once('inc/functions/sst_append_events.php');
include_once('inc/functions/sst_create_name.php');
include_once('inc/functions/sst_create_value.php');
include_once('inc/functions/sst_create_size.php');
include_once('inc/functions/sst_create_datafld.php');
include_once('inc/functions/sst_create_readonly.php');
include_once('inc/functions/sst_create_disabled.php');
include_once('inc/functions/sst_create_datascr.php');
include_once('inc/functions/sst_create_metas.php');
include_once('inc/functions/sst_create_meta.php');
include_once('inc/functions/sst_get_metas.php');
include_once('inc/functions/sst_create_cols.php');
include_once('inc/functions/sst_create_rows.php');
include_once('inc/functions/sst_create_wrap.php');
include_once('inc/functions/sst_create_label.php');
include_once('inc/functions/sst_create_content.php');
include_once('inc/functions/sst_create_checked.php');
include_once('inc/functions/sst_create_selected.php');
include_once('inc/functions/sst_create_multiple.php');
include_once('inc/functions/sst_create_maxlength.php');
include_once('inc/functions/sst_create_max.php');
include_once('inc/functions/sst_create_min.php');
include_once('inc/functions/sst_create_step.php');
include_once('inc/functions/sst_create_class.php');

/********HTM5************/
include_once('inc/functions/sst_create_required.php');
include_once('inc/functions/sst_create_pattern.php');


#############
include_once('inc/functions/sst_do_data_actions.php');
include_once('inc/functions/sst_mkdir.php');
include_once('inc/functions/sst_eval_data_action_value_simple_variable.php');
include_once('inc/functions/sst_eval_data_action_value_variable.php');
include_once('inc/functions/sst_eval_data_action_value_code.php');
include_once('inc/functions/sst_copy_file.php');
include_once('inc/functions/sst_eval_data_action_value_file.php');
include_once('inc/functions/sst_check_duplicate.php');
include_once('inc/functions/sst_do_data_action.php');
include_once('inc/functions/sst_extra_num_creator.php');
include_once('inc/functions/sst_flaten_array.php');
include_once('inc/functions/sst_add_to_table.php');
include_once( ABSPATH.'wp-admin/includes/plugin.php' );//used for checking by is_plugin_active
include_once('inc/dafault_values.php');
//include_once('inc/setup_samples.php');
include_once('inc/functions/sst_check_is_in_table.php');
include_once('inc/functions/sst_register_field_type.php');
include_once('inc/functions/sst_auto_register_field_type.php');
include_once('inc/functions/sst_send_save_id_to_next_page.php');
include_once('inc/functions/sst_load_data_for_action.php');
include_once('inc/functions/sst_get_pure_attribute.php');
include_once('inc/functions/sst_show_to.php');

//include_once('custom_func.php');


//include_once('update_temporary_save_id.php');

//dbg($user);

add_action('init', 'sst_get_user_info');
function sst_get_user_info(){
	$current_user;
	$userid= get_current_user_id();
	define('user_ID',$userid);
	$user=get_userdata( $userid ) ;
	return $user;
}


require (ABSPATH . WPINC . '/pluggable.php');
if ( !function_exists('wp_get_current_user') ){
	//dbg('Function not set');
	function wp_get_current_user() {
		global $current_user;
		get_currentuserinfo();
		return $current_user;
	}
}
$user = wp_get_current_user();
$user_id=$user->ID;
//dbg($user_id);





$method = sst_form_method();
function sst_get_current_filename(){
	return basename($_SERVER["SCRIPT_FILENAME"]);
}
function sst_get_this_directory_name(){
	return end(explode('\\',dirname ( __FILE__ )));
}
function sst_get_plugin_directory(){
	return dirname ( __FILE__ );
}
//dbg( sst_get_plugin_directory());
//dbg( range(5,1));
//dbg(is_plugin_active(sst_get_this_directory_name().'/'.sst_get_current_filename()));
define("IS_PLUGIN_ACTIVE",is_plugin_active( sst_get_this_directory_name().'/'.sst_get_current_filename()));
sst_auto_register_field_type();








///dbg(222222222);
function ehrajat_form_func($atts){
	///dbg(222222222);
	global $temporary_data_table,$wpdb,$form_table,$block_table,$mode,$input_table,$type_table,$record_id,$user;
	static $formcounter = -1;//
	$formcounter++;
	if(isset($_REQUEST['record_id'])){///its editing
		$vals = sst_load_temporary_data($_REQUEST['record_id']);
		//dbg($vals);
		
		$vals['%%loop%%'] = $formcounter;
		$vals['%%user_id%%'] = $user->ID;
		$vals['%%record_id%%'] = $_REQUEST['record_id'];
		$vals['%%mode%%'] = $mode;
	}else{
		
		$vals = $_REQUEST;
		$vals['%%loop%%'] = $formcounter;
		$vals['%%user_id%%'] = $user->ID;
		$vals['%%record_id%%'] = $_REQUEST['record_id'];
		$vals['%%mode%%'] = $mode;
	}
	extract(shortcode_atts(array(
        'id' => NULL,
		'force' => NULL
    ), $atts));
    if($id){
		$_GET['form']=$id;
		$_REQUEST['form']=$id;
		$_POST['form']=$id;
	}
//dbg($vals);
   return sst_create_process($vals,$force,true);
}
function register_ehrajat_form_func_shortcodes(){
   add_shortcode('ehrajat_form', 'ehrajat_form_func');
}
add_action( 'init', 'register_ehrajat_form_func_shortcodes');
/*form_vals is not for using in the core and only this is to be available in other places or customs*/
$form_vals = sst_load_temporary_data($_REQUEST['save_id']);
//dbg($vals);


























/*---------------------------------------------------
register settings
----------------------------------------------------*/
function theme_settings_init(){
register_setting( 'theme_settings', 'theme_settings' );
}
 
/*---------------------------------------------------
add settings page to menu
----------------------------------------------------*/
 
/*---------------------------------------------------
add actions
----------------------------------------------------*/
add_action( 'admin_init', 'theme_settings_init' ); 
/*---------------------------------------------------
Theme Panel Output
----------------------------------------------------*/
function add_settings_page_main() {
add_menu_page( __( 'احراجات فرم' ), __( 'احراجات فرم' ), 'manage_options', 'ehrajat-form-setting', 'theme_settings_page_main');
}
add_action( 'admin_menu', 'add_settings_page_main' );
function theme_settings_page_main() {   ?>
     <div class="wrap">
         <div id="icon-options-general"></div>
         <h2><?php _e( 'نحوه استفاده' ) //your admin panel title ?></h2>
         <p><span>یرای راه اندازی فرم ها باید از شرت کد [ehrajat_form] کنید</span></p>
         <div class="footer-credit">
            <p>This theme was made by <a title="Anang pratika" href="http://anangpratika.wordpress.com" target="_blank" >Anang Pratika</a>.</p>
         </div>
     </div>
     <?php
    }
	 
	 
function add_settings_page_form() {
add_submenu_page('ehrajat-form-setting', __( 'فرم ها' ), __( 'فرم ها' ), 'manage_options', 'ehrajat-form-setting-form', 'theme_settings_page_form');
}
add_action( 'admin_menu', 'add_settings_page_form' );

function theme_settings_page_form() {    ?>
     <div class="wrap">
         <div id="icon-options-general"></div>
         <h2><?php _e( ' Theme SECOND PAGE' ) //your admin panel title ?></h2>
         <ul>
             <li>افزودن فرم</li>
             [ehrajat_form]
             <li>sssssssssssss</li>
         </ul>
         <p><span>aaaaaaaaaaaaa</span></p>
         <div class="footer-credit">
            <p>This theme was made by <a title="Anang pratika" href="http://anangpratika.wordpress.com" target="_blank" >Anang Pratika</a>.</p>
         </div>
     </div>

<?php	 
}





//include_once('vals.php');