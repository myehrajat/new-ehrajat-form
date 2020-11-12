<?php
/**
 * Plugin Name:JQ
 * Plugin URI: http://ehrajat.com
 * Description: your eval functions goes here
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
  define( 'JQW_JS_PASSWORD', 'safasfasdfasdfaewwegfdv,sadv,asd.vaaaaaaaaaaaa' );
  define( 'JQW_PLUGIN_PATH', __DIR__ . '/' );
  define( 'JQW_PLUGIN_FILE', basename( __FILE__ ) );
  define( 'JQW_PLUGIN_URL', plugin_dir_url( __FILE__ ) );
  define( 'JQW_JSON', JQW_PLUGIN_URL.'json.php' );
  define( 'JQW_PLUGIN_SRC_URL', JQW_PLUGIN_URL . 'jqwidgets/' );
  define( 'JQW_DIRECTION', 'rtl' );
  $all_js = array( 'jqxcore.js', 'jqxdata.js', 'jqxbuttons.js', 'jqxscrollbar.js', 'jqxmenu.js', 'jqxcheckbox.js', 'jqxlistbox.js', 'jqxdropdownlist.js', 'jqxgrid.js', 'jqxgrid.sort.js', 'jqxgrid.pager.js', 'jqxgrid.selection.js', 'jqxgrid.edit.js' );
if ( !is_admin() ) {
  foreach ( $all_js as $js ) {

    wp_register_script( $js, JQW_PLUGIN_SRC_URL . $js, array( 'jquery' ) );
    wp_enqueue_script( $js, 'jquery' );

  }
  wp_register_style( 'jqx.base.css', JQW_PLUGIN_SRC_URL . 'styles/jqx.base.css' );
  wp_enqueue_style( 'jqx.base.css', 1 );
    
}
include_once(JQW_PLUGIN_PATH.'setup/1-jqwidget_tables.php');
include_once(JQW_PLUGIN_PATH.'page.php');
function register_jqwidget_grid_shortcodes(){
   add_shortcode('jqwidget', 'sst_jqwidget_grid');
}
add_action( 'init', 'register_jqwidget_grid_shortcodes');
function sst_jqwidget_grid($atts){
    extract(shortcode_atts(array(
      'jq_id' => 1,
   ), $atts));
    $jq_id=$_REQUEST['jq'];
        $jqwidget = new jqwidget( $jq_id );	
}