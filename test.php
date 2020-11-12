<?php
function test($ecode){
    $numargs = func_num_args();
    $arg_list = func_get_args();
    for ($i = 1; $i < $numargs; $i++) {
        ${$arg_list[$i][0]} = $arg_list[$i][1];
    }
    echo $eeeeeeeee;
}
test('ssssssss',array('eeeeeeeee','fffff'));