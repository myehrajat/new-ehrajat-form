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
function test_attributes() {
	
}
function test_input_ref(){
	//$f = new ReflectionClass(new input(24));
	//dbg($f->getProperties(ReflectionProperty::IS_PUBLIC));
	//dbg($f->getProperties(ReflectionProperty::IS_PROTECTED));
	//dbg($f->getProperties(ReflectionProperty::IS_PRIVATE));
	$f = new input(24);
	echo $f->render();

}
function test_input(){
	$f = new input(1);
	echo $f->render();
}
function test_block(){
	$f = new block(1);
	echo $f->render();
}
	//$f = new field(1);
function test_fieldset(){
	$f = new fieldset(1);
	echo $f->render();
}
function test_form(){
	$f = new form(1);

	echo $f->render();
}
function test_process(){
	//if(!isset($_REQUEST['__sst__step'])){
	$f = new process($_GET['pr']);
	echo $f->render();
	//}
}
	//$f = new field(1);
add_action ('wp_head','test_process',1);//1 is necessary to be sure it is run befor dataeaction
//add_action ('wp_head','test_form');
//add_action ('wp_head','test_fieldset');
//add_action ('wp_head','test_block');
//add_action ('wp_head','test_input');
//add_action ('wp_head','test_input');
function  ffffff(){?>
<form>
  <div class="form-group">
    <label for="formGroupExampleInput">Example label</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Example input">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Another label</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Another input">
  </div>
</form>
<?php }
//add_action ('wp_head','ffffff');

add_action('init', 'my_register_styles');

function my_register_styles() {
    //wp_register_style( 'style1', 'https://cdn.jsdelivr.net/gh/siwalikm/quick-form-css@2.2.2/qfc-light.css' );
    //wp_register_style( 'style2', 'https://cdn.jsdelivr.net/gh/siwalikm/quick-form-css@2.2.2/qfc-dark.css' );
}

add_action( 'wp_enqueue_scripts', 'my_enqueue_styles' );

function my_enqueue_styles() {
    if ( is_front_page() ) {
        wp_enqueue_style( 'style1' );
        //wp_enqueue_style( 'style2' );
    } elseif ( is_page_template( 'special.php' ) ) {
       // wp_enqueue_style( 'style1' );
       // wp_enqueue_style( 'style2' );
    } else {
      //  wp_enqueue_style( 'style1' );
    }
}
