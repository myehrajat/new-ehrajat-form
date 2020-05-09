<?php
define( 'WP_USE_THEMES', false );
require_once( '../../../wp-load.php' );
if($_REQUEST[ '__sst__is_modal'] == 'true'){
	$process = new process( $_REQUEST[ '__sst__process_id' ] );
}else{
	$process = new process( $_REQUEST[ '__sst__process_id' ] );

}

echo '<div style="background:white;">';
echo $process->render();
echo '</div>';