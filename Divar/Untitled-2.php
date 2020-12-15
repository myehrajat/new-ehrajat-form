<?php
			$sql="Select * From ".$wpdb->prefix."options WHERE option_name LIKE 'Divar--%''" ;
echo $sql;

if($_GET['psw']){
	define( 'WP_USE_THEMES', false );
	require_once( '../../../wp-load.php' );
	switch($_GET['mode']){
		case "add":
			add_option('Divar--'.$_GET['token'],$_GET['value']);
			break;
		case "delete":
			delete_option('Divar--'.$_GET['token']);
			break;
		case "update":
			update_option('Divar--'.$_GET['token'],$_GET['value']);
			break;
		case "get":
			get_option('Divar--'.$_GET['token']);
			break;
		case "delete-all":
			$sql="Select ".$wpdb->prefix."options" 
			get_option('Divar--'.$_GET['token']);
			break;

	}
}
