<?php
class extra extends database {
    var $extra_add_controller;
    var $extra_remove_controller;
    static $script;

    function __construct( $extra, $unique_id ) {
        parent::__construct();
        //$this->jquery_enqueued();
        //$this->extra_enqueued();
        $this->extra_data( $extra, $unique_id );
        $rendered = $this->render_extra_controller($this->extra_add_controller_arr,$this->extra_remove_controller_arr);
		$this->extra_add_controller = $rendered['extra_add_controller'];
		$this->extra_remove_controller=$rendered['extra_remove_controller'];

    }

    function extra_data( $extra, $unique_id ) {
        if ( $extra > 0 ) {
           // $this->extra_add_controller_arr[ 'type' ] = 'image';
            $this->extra_add_controller_arr[ 'src' ] = EXTRA_PLUGIN_ADD_ICON_URL;
            $this->extra_add_controller_arr[ 'max_extra' ] = $extra;
            $this->extra_add_controller_arr[ 'id' ] = $unique_id . '_controller_add';
            $this->extra_add_controller_arr[ 'alt' ] = 'Add New';
            $this->extra_add_controller_arr[ 'style' ] = 'cursor:pointer';

			// $this->extra_remove_controller_arr[ 'type' ] = 'image';
            $this->extra_remove_controller_arr[ 'src' ] = EXTRA_PLUGIN_REMOVE_ICON_URL;
            $this->extra_remove_controller_arr[ 'id' ] = $unique_id . '_controller_remove';
            $this->extra_remove_controller_arr[ 'alt' ] = 'Remove';
            $this->extra_remove_controller_arr[ 'style' ] = 'display: none;cursor:pointer';
           // $this->extra_remove_controller_arr[ 'disabled' ] = 'disabled';

        }
    }

    function render_extra_controller( $extra_add_controller_arr = NULL, $extra_remove_controller_arr = NULL ) {
        if ( !empty( $extra_add_controller_arr )and!empty( $extra_add_controller_arr ) ) {
            $extra_add_controller = '<image ';
            foreach ( $extra_add_controller_arr as $extra_add_controller_attr_name => $extra_add_controller_attr_value ) {
                $extra_add_controller .= $extra_add_controller_attr_name . '="' . $extra_add_controller_attr_value . '" ';
            }
            $extra_add_controller .= '>';

            $extra_remove_controller = '<image ';
            foreach ( $extra_remove_controller_arr as $extra_remove_controller_attr_name => $extra_remove_controller_attr_value ) {
                $extra_remove_controller .= $extra_remove_controller_attr_name . '="' . $extra_remove_controller_attr_value . '" ';
            }
            $extra_remove_controller .= '>';
        }
        if ( !empty( $extra_add_controller_arr )and!empty( $extra_remove_controller ) ) {
            return array( 'extra_add_controller' => $extra_remove_controller, 'extra_remove_controller' => $extra_add_controller );
        }
    }

}

function extra_enqueued() {
    add_action( 'wp_enqueue_scripts', 'load_extra' );
}

function load_extra() {
    if ( !wp_script_is( 'sst-add-remove', 'enqueued' ) ) {
        wp_register_script( 'sst-add-remove', EXTRA_PLUGIN_ASSET_URL . 'extra.js', array( 'jquery' ), '1.0' );
        wp_enqueue_script( 'sst-add-remove' );
    }
}
extra_enqueued();

function jquery_enqueued() {
    add_action( 'wp_enqueue_scripts', 'load_jquery' );
}

function load_jquery() {
    if ( !wp_script_is( 'jquery', 'enqueued' ) ) {
        wp_enqueue_script( 'jquery' );
    }
}
jquery_enqueued();
//extra_enqueued();