<?php
/**************************************************
*version 1.0.0
*this function used for getting syntax errors of eval()
**************************************************/
function sst_eval_error($obj){
	return sst_access_protected($obj, 'message') ;
}
function sst_access_protected($obj, $prop) {
  $reflection = new ReflectionClass($obj);
  $property = $reflection->getProperty($prop);
  $property->setAccessible(true);
  return $property->getValue($obj);
}