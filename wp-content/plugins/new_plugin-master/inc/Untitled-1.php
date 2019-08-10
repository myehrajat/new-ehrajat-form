<?php
$attributes['global']=array('accesskey', 'autocapitalize', 'class', 'contenteditable', 'contextmenu', 'data-*', 'dir', 'draggable', 'dropzone', 'hidden', 'id', 'inputmode', 'is', 'itemid', 'itemprop', 'itemref', 'itemscope', 'itemtype', 'lang', 'slot', 'spellcheck', 'style', 'tabindex', 'title', 'translate');

$attributes['common']=array('autocomplete','autofocus','disabled','form','list','name','readonly','required','type','value');

$attributes['input-specific']['button']=array();
$attributes['input-specific']['checkbox']=array('checked');
$attributes['input-specific']['color']=array();
$attributes['input-specific']['date']=array('valueAsDate', 'valueAsNumber','step', 'min', 'max');
//
$attributes['input-specific']['datetime-local']=array('valueAsNumber');
$attributes['input-specific']['email']=array('maxlength', 'minlength', 'multiple', 'pattern', 'placeholder', 'size');
$attributes['input-specific']['file']=array('accept', 'capture', 'files', 'multiple');
$attributes['input-specific']['hidden']=array();
$attributes['input-specific']['image']=array('alt', 'src', 'width', 'height', 'formaction', 'formenctype', 'formmethod', 'formnovalidate', 'formtarget');
$attributes['input-specific']['month']=array('step');
$attributes['input-specific']['number']=array('placeholder', 'valueAsNumber');
$attributes['input-specific']['password']=array( 'maxlength', 'minlength', 'pattern', 'placeholder', 'size');
$attributes['input-specific']['radio']=array('checked');
$attributes['input-specific']['range']=array('max', 'min', 'step', 'valueAsNumber');
$attributes['input-specific']['reset']=array();
$attributes['input-specific']['search']=array('maxlength', 'minlength', 'pattern', 'placeholder', 'size');
$attributes['input-specific']['submit']=array();
$attributes['input-specific']['tel']=array('maxlength', 'minlength', 'pattern', 'placeholder', 'size', 'selectionStart', 'selectionEnd', 'selectionDirection');
$attributes['input-specific']['text']=array('maxlength', 'minlength', 'pattern', 'placeholder', 'size');

$attributes['input-specific']['time']=array('step', 'valueAsDate', 'valueAsNumber');
$attributes['input-specific']['url']=array('maxlength', 'minlength', 'pattern', 'placeholder', 'size', 'selectionEnd', 'selectionDirection');
$attributes['input-specific']['week']=array('step', 'valueAsDate', 'valueAsNumber');
