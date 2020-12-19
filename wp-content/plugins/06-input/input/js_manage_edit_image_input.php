<?php
function js_manage_edit_image_input(){
    wp_register_script( 'js_manage_edit_image_input.js', INPUT_ASSET_URL . 'js_manage_edit_image_input.js',array( 'jquery' ));
	wp_enqueue_script( 'js_manage_edit_image_input.js', 1 );
}
add_action( 'wp_enqueue_scripts', 'js_manage_edit_image_input' );
