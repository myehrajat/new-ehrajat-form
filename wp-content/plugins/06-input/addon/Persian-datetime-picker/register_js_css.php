<?php
function bootstrap4_persian_datetime_scripts() {
	wp_register_script('jquery.md.bootstrap.datetimepicker.js', plugins_url('MD.BootstrapPersianDateTimePicker-master-bs4/src/jquery.md.bootstrap.datetimepicker.js', __FILE__), array('bootstrap.min.js'),'1.1', true);
	wp_enqueue_script('jquery.md.bootstrap.datetimepicker.js', 9999999999999999, 999999999999999999);
	wp_register_style('jquery.md.bootstrap.datetimepicker.style.css', plugins_url('MD.BootstrapPersianDateTimePicker-master-bs4/src/jquery.md.bootstrap.datetimepicker.style.css', __FILE__));
	wp_enqueue_style('jquery.md.bootstrap.datetimepicker.style.css', 9999999999999999, 999999999999999999);
}
add_action( 'wp_enqueue_scripts', 'bootstrap4_persian_datetime_scripts',9999999999, 999999999999999999 );