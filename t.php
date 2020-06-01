<?php
$a = array('a'=>'aa','b'=>'bb');
$b = array('a'=>'cc','b'=>'dd');

echo '<pre>';
var_dump(array_merge($a,$b));
var_dump(array_merge($b,$a));
echo '</pre>';
