<?php
define( 'WP_USE_THEMES', false );
require_once( '../../../wp-load.php' );
//$_REQUEST['__sst__regenerate_input' ];
$process = new process( $_REQUEST[ '__sst__process_id' ] );
//krumo($process);
echo '<div style="background:white;">';
echo $process->render();
echo '</div>';