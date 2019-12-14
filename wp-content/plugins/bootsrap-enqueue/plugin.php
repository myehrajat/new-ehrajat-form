<?php
/**
 * Plugin Name:bootstrap enqueue
 * Plugin URI: http://ehrajat.com
 * Description: make and manage forms easily
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
define( 'BOOTSTRAP_PLUGIN_PATH', __DIR__ . '/' );
define( 'BOOTSTRAP_PLUGIN_FILE', basename( __FILE__ ) );
define('BOOTSTRAP_PLUGIN_URL',plugin_dir_url( __FILE__ ));


function bootstarp_enqueue() {
 
    //wp_enqueue_script('jquery');
 
    wp_register_script( 'bootstrap-propper-js',BOOTSTRAP_PLUGIN_URL.'bootstrap-4.2.1-rtl/dist/js/bootstrap.bundle.min.js', array('jquery')  );
    wp_register_style( 'bootstrap-css', BOOTSTRAP_PLUGIN_URL . 'bootstrap-4.2.1-rtl/dist/css/rtl/bootstrap.min.css');
 
    wp_enqueue_script( 'bootstrap-propper-js' );
    wp_enqueue_style( 'bootstrap-css' );
 
}
 
add_action( 'wp_enqueue_scripts', 'bootstarp_enqueue' );