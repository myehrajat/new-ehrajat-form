<?php

class debug {
    function __construct() {

    }

    function erorr_text() {
        $GLOBALS[ 'sst_errors' ][ 0 ] = __( 'Creation of tables failed. Maybe syntax error!' );
    }
    /**************************************************
     *version 1.0.0
     *this function used for getting syntax errors of eval()
     **************************************************/
    function eval_error( $obj ) {
        return $this->access_protected( $obj, 'message' );
    }

    function access_protected( $obj, $prop ) {
        $reflection = new ReflectionClass( $obj );
        $property = $reflection->getProperty( $prop );
        $property->setAccessible( true );
        return $property->getValue( $obj );
    }
    /**************************************************
     *version 1.0.0
     *this is logging errors function
     **************************************************/
    function error_log( $error_txt ) {
        if ( LOGGING ) {
			//echo $error_txt.'<br>';
            $backtrace = debug_backtrace();
            unset( $backtrace[ 0 ] );
            $func_series = '';
            foreach ( $backtrace as $func ) {
                $func_series .= $func[ 'function' ] . '=>';
            }
            error_log( '[' . date( "Y-m-d h:i:sa" ) . ']Source Function:' . $func_series . PHP_EOL . 'SOUREC FILE:' . $backtrace[ 1 ][ 'file' ] . PHP_EOL . $error_txt . PHP_EOL . PHP_EOL, 3, DEBUG_ERROR_LOG );
        } else {
            $this->sst_delete_log();
        }
    }
    /**************************************************
     *version 1.0.0
     *this function delete log file
     **************************************************/
    function sst_delete_log() {
        if ( file_exists( DEBUG_ERROR_LOG ) ) {
            unlink( DEBUG_ERROR_LOG );
        }
    }
    /**************************************************
     *version 1.0.0
     *this is development debugging function
     **************************************************/
    /*
    $die => die after debugging
    */
    function dbg( $var, $die = true, $identifier = false, $textarea = true ) {
        if ( $textarea ) {
            echo '<textarea id="debug_area" cols="188">';
        }
        echo '<pre>';
        if ( $identifier ) {
            echo '<strong>' . $identifier . '</strong>';
        }
        var_dump( $var );
        echo '</pre>';
        if ( $textarea ) {
            echo '</textarea></br>';
        }
        if ( $die ) {
            die;
        }
    }

}
if(DELETE_LOG_BY_NEW_REQUEST==true){
debug::sst_delete_log();
}
add_action( 'wp_head', 'krumo_left' );
function krumo_left(){
	echo '<style>.krumo-root{text-align:left;}</style>';
}
include_once(DEBUG_PLUGIN_ASSET_PATH.'krumo-master/class.krumo.php');

function krm($var){
	echo '<style>.krumo-root{text-align:left;}</style>';
	include_once(DEBUG_PLUGIN_ASSET_PATH.'krumo-master/class.krumo.php');
	$_ = func_get_args();
	return call_user_func_array(
		array('krumo', 'dump'), $_
		);
}









function dbg( $var, $die = true, $identifier = false, $textarea = true ) {
    if ( $textarea ) {
        echo '<script src="' . DEBUG_PLUGIN_ASSET_URL . 'autosize-master/dist/autosize.min.js"></script>';
        echo '<script src="' . DEBUG_PLUGIN_ASSET_URL . 'debug-textarea-resize.js"></script>';
        echo '<textarea  id="debug_area"  cols="188">';
    }
    echo '<pre>';
    if ( $identifier ) {
        echo '<strong>' . $identifier . '</strong>';
    }
    var_dump( $var );
    echo '</pre>';
    if ( $textarea ) {
        echo '</textarea></br>';
    }
    if ( $die ) {
        die;
    }
}

function textarea_resize_enqueued() {
    add_action( 'wp_enqueue_scripts', 'load_textarea_resize' );
}

function load_textarea_resize() {
    if ( !wp_script_is( 'sst-textarea-resize', 'enqueued' ) ) {
        wp_register_script( 'sst-textarea-resize', DEBUG_PLUGIN_ASSET_URL . 'autosize-master/dist/autosize.min.js', array( 'jquery' ), '1.0' );
        wp_enqueue_script( 'sst-textarea-resize' );
    }
}
textarea_resize_enqueued();

function debug_textarea_resize_enqueued() {
    add_action( 'wp_enqueue_scripts', 'load_debug_textarea_resize' );
}

function load_debug_textarea_resize() {
    if ( !wp_script_is( 'sst-debug-textarea-resize', 'enqueued' ) ) {
        wp_register_script( 'sst-debug-textarea-resize', DEBUG_PLUGIN_ASSET_URL . 'debug-textarea-resize.js', array( 'jquery' ), '1.0' );
        wp_enqueue_script( 'sst-debug-textarea-resize' );
    }
}
debug_textarea_resize_enqueued();


/**************************************************
 *version 1.0.0
 *this vars if for showing errors
 **************************************************/