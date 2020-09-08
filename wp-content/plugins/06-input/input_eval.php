<?php

$php = "if(eval(return ('".$_POST['query']."')){return 'php_true';}else{return 'php_false';}";
return eval($php);