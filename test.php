<?php
$base_route='0-1';
$other_route ='0-1-2';
//echo strlen((string) $base_route)-1;
echo mb_substr($other_route,strlen((string) $base_route),1);
?>
