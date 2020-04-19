<?php
function bootstrap4_toggle_scripts() {
	wp_register_script('bootstrap4-toggle.min.js', plugins_url('bootstrap4-toggle/js/bootstrap4-toggle.min.js', __FILE__), array('jquery'),'1.1', true);
	wp_enqueue_script('bootstrap4-toggle.min.js');
	wp_register_style('bootstrap4-toggle.min.css', plugins_url('bootstrap4-toggle/css/bootstrap4-toggle.min.css', __FILE__));
	wp_enqueue_style('bootstrap4-toggle.min.css');
}
 function wpb_adding_styles() {

}
add_action( 'wp_enqueue_scripts', 'bootstrap4_toggle_scripts' );