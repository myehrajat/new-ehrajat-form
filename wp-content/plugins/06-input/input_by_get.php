<?php
define( 'WP_USE_THEMES', false );
require_once( '../../../wp-load.php' );
	$input = new input( $_REQUEST[ '__sst__input_id'] );

echo $input->render();
