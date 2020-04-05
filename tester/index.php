<?php

error_reporting(0 & ~E_PARSE ); 
try {
    $input_data = eval( 'error_reporting(E_ALL  & ~E_NOTICE & ~E_WARNING & ~E_NOTICE  ); echo ssssssssss";' . '; return $input_data;' );
} catch ( Throwable $error ) {
    echo ( 'eval string has syntax error.this code has error: ' . $eval_code );
}