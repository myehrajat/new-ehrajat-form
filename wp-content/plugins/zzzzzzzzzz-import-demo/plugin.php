<?php
/**
 * Plugin Name:ehrajat 9999 demo
 * Plugin URI: http://ehrajat.com
 * Description: make and manage forms easily
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
/*
use this plugin in head of all plugin related to this to correctly load plugin for using its functionality
*/
plugin_load_order( __FILE__ );
//$input = new input(1);
//echo $input->render().'<br>';
if ( 1 == 2 ) {
    $query = '';
    $sqlScript = file( 'full.sql' );
    foreach ( $sqlScript as $line ) {

        $startWith = substr( trim( $line ), 0, 2 );
        $endWith = substr( trim( $line ), -1, 1 );

        if ( empty( $line ) || $startWith == '--' || $startWith == '/*' || $startWith == '//' ) {
            continue;
        }

        $query = $query . $line;
        if ( $endWith == ';' ) {
            $wpdb->query( $conn, $query )or die( '<div class="error-response sql-import-response">Problem in executing the SQL query <b>' . $query . '</b></div>' );
            $query = '';
        }
    }
    echo '<div class="success-response sql-import-response">SQL file imported successfully</div>';
}

function test_inputs( $inupt_id = NULL ) {
    if ( !is_admin() and $GLOBALS['pagenow'] !== 'wp-login.php' and $GLOBALS['pagenow'] !== 'wp-admin.php' ) {
        // do your thing
        set_time_limit( 5 );
        if ( $inupt_id == NULL ) {
            for ( $x = 1; $x <= 23; $x++ ) {
                echo 'Sample Input Of <strong>' . $x . '</strong>:<br>';
                $input = new input( $x );
                echo $input->render() . '<br>';
            }
        } else {
            echo 'Sample Input Of <strong>' . $inupt_id . '</strong>:<br>';
            $input = new input( $inupt_id );
            echo $input->render() . '<br>';
        }
		//die;
    }

}
function test_attributes() {}
function test(){
	$f = new field(1);
	//$f = new input(1);
	//dbg($f);
echo $f->render();
//test_inputs( 1 );
//test_inputs( 2 );
}
add_action ('wp_head','test');







