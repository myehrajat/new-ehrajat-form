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
define( 'BOOTSTRAP_PLUGIN_URL', plugin_dir_url( __FILE__ ) );

define( 'BOOTSTRAP_DIRECTION', 'rtl' );

function bootstarp_enqueue() {

  //wp_enqueue_script('jquery');
  //wp_register_script( 'popper.min.js', BOOTSTRAP_PLUGIN_URL.'asset/popper-core-master/src/popper.js', array( 'jquery' ) );
  if ( BOOTSTRAP_DIRECTION == 'ltr' ) {
    wp_register_script( 'bootstrap.min.js', BOOTSTRAP_PLUGIN_URL . 'asset/bootstrap-4.4.1-dist/js/bootstrap.min.js', array( 'jquery-ui.min.css' ) );
    wp_register_style( 'bootstrap.min.css', BOOTSTRAP_PLUGIN_URL . 'asset/bootstrap-4.4.1-dist/css/bootstrap.min.css' );
  } elseif ( BOOTSTRAP_DIRECTION == 'rtl' ) {
    wp_register_script( 'bootstrap.min.js', BOOTSTRAP_PLUGIN_URL . 'asset/bootstrap-4.2.1-rtl/dist/js/bootstrap.bundle.min.js', array( 'jquery-ui.min.css' ) );
    wp_register_style( 'bootstrap.min.css', BOOTSTRAP_PLUGIN_URL . 'asset/bootstrap-4.2.1-rtl/dist/css/rtl/bootstrap.min.css' );
  }
    //wp_enqueue_script( 'popper.min.js' );
  wp_enqueue_script( 'bootstrap.min.js', 1 );
  wp_enqueue_style( 'bootstrap.min.css', 1 );
  /************** RTL **********************/
  // 

  // 
  //wp_enqueue_script( 'bootstrap-propper-js' );
  //wp_enqueue_style( 'bootstrap-css' );


  /************** RTL **********************/

  wp_register_script( 'custom.js', BOOTSTRAP_PLUGIN_URL . 'asset/customjs.js', array( 'jquery' ) );
  wp_enqueue_script( 'custom.js', 9999999999999999999 );
  wp_register_script( 'csslint', BOOTSTRAP_PLUGIN_URL . 'asset/csslint/dist/csslint.js', array( 'jquery' ) );
  wp_enqueue_script( 'csslint', 1 );
}

add_action( 'wp_enqueue_scripts', 'bootstarp_enqueue' );