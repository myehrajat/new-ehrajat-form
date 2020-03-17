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
 
    wp_register_script( 'popper.min.js','https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js', array('jquery')  );
    wp_register_script( 'bootstrap.min.js','https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js', array('jquery')  );
    wp_register_style( 'bootstrap.min.css','https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css' );
	    wp_enqueue_script( 'popper.min.js' );
	    wp_enqueue_script( 'bootstrap.min.js' );
	    wp_enqueue_style( 'bootstrap.min.css' );

	/************** RTL **********************/
   // wp_register_script( 'bootstrap-propper-js',BOOTSTRAP_PLUGIN_URL.'bootstrap-4.2.1-rtl/dist/js/bootstrap.bundle.min.js', array('jquery')  );
	
   // wp_register_style( 'bootstrap-css', BOOTSTRAP_PLUGIN_URL . 'bootstrap-4.2.1-rtl/dist/css/rtl/bootstrap.min.css');
	    //wp_enqueue_script( 'bootstrap-propper-js' );
    //wp_enqueue_style( 'bootstrap-css' );
 

	/************** RTL **********************/
	
	    wp_register_script( 'custom.js',BOOTSTRAP_PLUGIN_URL.'customjs.js', array('jquery')  );
	    wp_enqueue_script( 'custom.js' );}
 
add_action( 'wp_enqueue_scripts', 'bootstarp_enqueue' );