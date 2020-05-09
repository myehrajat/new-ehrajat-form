<?php

function do_all_resister() {
  wp_deregister_script( 'jquery' );
	//https://code.jquery.com/jquery-3.5.0.min.js
  wp_register_script( 'jquery', FORM_PLUGIN_URL.'asset/jquery-3.5.0.min.js' );
  wp_enqueue_script( 'jquery', 1 );
	//http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js
  wp_register_script( 'jquery-ui.min.js', FORM_PLUGIN_URL.'asset/jquery-ui.min.js', array( 'jquery' ) );
  wp_enqueue_script( 'jquery-ui.min.js', 99999999 );
	//https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css
  wp_register_style( 'jquery-ui.min.css', FORM_PLUGIN_URL.'asset/jquery-ui.min.css' );
  wp_enqueue_style( 'jquery-ui.min.css', 99999999999 );
  wp_register_script( 'jquery.dialogextend.min.js', FORM_PLUGIN_URL . 'asset/jquery-dialogextend-master/build/jquery.dialogextend.min.js', array( 'jquery-ui.min.js' ) );
  wp_enqueue_script( 'jquery.dialogextend.min.js', 999999999999 );

  wp_register_script( 'sst.modal', FORM_PLUGIN_URL . 'asset/modal.js', array( 'jquery-ui.min.js' ) );
  wp_enqueue_script( 'sst.modal', 999999999999 );


}
add_action( 'wp_enqueue_scripts', 'do_all_resister' );