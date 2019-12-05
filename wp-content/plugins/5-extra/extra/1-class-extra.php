<?php
class extra extends database {
    var $extra_add_controller;
    var $extra_remove_controller;
    static $script;

    function __construct( $extra, $unique_id ) {
        parent::__construct();
        //$this->jquery_enqueued();
        //$this->extra_enqueued();
        $this->extra( $extra, $unique_id );

    }

    function extra( $extra, $unique_id ) {
        if ( $extra > 0 ) {
            $this->extra_add_controller = '<input type="image" src="' . EXTRA_PLUGIN_ADD_ICON_URL . '" max_extra="' . $extra . '" id="' . $unique_id . '_controller_add"  alt="Add New">';
            $this->extra_remove_controller = '<input style="display: none;" type="image" src="' . EXTRA_PLUGIN_REMOVE_ICON_URL . '" id="' . $unique_id . '_controller_remove" alt="Remove">';

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