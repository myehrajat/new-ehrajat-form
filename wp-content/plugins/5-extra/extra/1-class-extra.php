<?php
class extra extends database {
	var $extra_add_controller;
	var $extra_remove_controller;
	static $script;
    function __construct( $tag_name,$extra,$unique_id ) {
        parent::__construct();	
        $this->jquery_enqueued();
        $this->extra(  $tag_name,$extra ,$unique_id );
		
    }
	
    function extra($tag_name, $extra ,$unique_id) {
        if ( $extra > 0 ) {
			//dbg($unique_id);
            $this->extra_add_controller = '<input type="image" src="' . EXTRA_PLUGIN_ADD_ICON_URL . '" max_extra="'.$extra.'" id="' . $unique_id . '_controller_add"  alt="Add New">';
            $this->extra_remove_controller = '<input style="display: none;" type="image" src="' . EXTRA_PLUGIN_REMOVE_ICON_URL . '" id="'  . $unique_id . '-controller_remove" alt="Remove">';
			$GLOBALS['sst_scripts'] .= 
<<<SCRIPT

SCRIPT;
			
	
		}
	}
	function jquery_enqueued() {
		add_action( 'wp_enqueue_scripts', 'load_jquery' );
	}
}

function load_jquery() {
    if ( !wp_script_is( 'jquery', 'enqueued' ) ) {
        wp_enqueue_script( 'jquery' );
    }
}

function add_remove_script() {
    wp_register_script('add-remove',EXTRA_PLUGIN_ASSET_URL. 'add-remove.js', array('jquery'),'1.0', true);
    wp_enqueue_script('add-remove');
} 
add_action( 'wp_enqueue_scripts', 'add_remove_script' );
function ssaaaaaaaaaaa(){
	echo $GLOBALS['sst_scripts'];
}
add_action( 'wp_footer', 'ssaaaaaaaaaaa', 999 ); 
