<?php
function bootstrap4_persian_datetime_scripts() {
	wp_register_script('jquery.md.bootstrap.datetimepicker.js', plugins_url('MD.BootstrapPersianDateTimePicker-master-bs4/src/jquery.md.bootstrap.datetimepicker.js', __FILE__),array('jquery'));
	//krumo(plugins_url('MD.BootstrapPersianDateTimePicker-master-bs4/src/jquery.md.bootstrap.datetimepicker.js', __FILE__));
	wp_enqueue_script('jquery.md.bootstrap.datetimepicker.js');
	wp_register_style('jquery.md.bootstrap.datetimepicker.style.css', plugins_url('MD.BootstrapPersianDateTimePicker-master-bs4/src/jquery.md.bootstrap.datetimepicker.style.css', __FILE__));
	//krumo(plugins_url('MD.BootstrapPersianDateTimePicker-master-bs4/src/jquery.md.bootstrap.datetimepicker.style.css', __FILE__));
	wp_enqueue_style('jquery.md.bootstrap.datetimepicker.style.css');
}
add_action( 'wp_enqueue_scripts', 'bootstrap4_persian_datetime_scripts',999999999 );