<?php

/*
	    <link rel="stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/aqua/theme.css" title="Aqua" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/calendar-blue.css" title="winter" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/calendar-blue2.css" title="blue" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/calendar-brown.css" title="summer" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/calendar-green.css" title="green" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/calendar-win2k-1.css" title="win2k-1" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/calendar-win2k-2.css" title="win2k-2" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/calendar-win2k-cold-1.css" title="win2k-cold-1" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/calendar-win2k-cold-2.css" title="win2k-cold-2" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/skins/calendar-system.css" title="system" />
	    
	    
		<!-- import the Jalali Date Class script -->
		<script type="text/javascript" src="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/jalali.js"></script>
		
		<!-- import the calendar script -->
		<script type="text/javascript" src="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/calendar.js"></script>
		
		<!-- import the calendar script -->
		<script type="text/javascript" src="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/calendar-setup.js"></script>
		
		<!-- import the language module -->
		<script type="text/javascript" src="http://localhost/wp-content/themes/twentyten/inc/setup/JalaliJSCalendar-1.4/lang/calendar-fa.js"></script>
        */
		//$JalaliJSCalendar_url = sst_get_option('JalaliJSCalendar_url');
?>
	    <link rel="stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/aqua/theme.css" title="Aqua" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/calendar-blue.css" title="winter" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/calendar-blue2.css" title="blue" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/calendar-brown.css" title="summer" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/calendar-green.css" title="green" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/calendar-win2k-1.css" title="win2k-1" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/calendar-win2k-2.css" title="win2k-2" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/calendar-win2k-cold-1.css" title="win2k-cold-1" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/calendar-win2k-cold-2.css" title="win2k-cold-2" />
		<link rel="alternate stylesheet" type="text/css" media="all" href="<?php echo plugins_url('',__FILE__); ?>/skins/calendar-system.css" title="system" />
	    
<?   /*
    * This example will work at least on WordPress 2.6.3, 
    * but maybe on older versions too.
    */
  // add_action( 'admin_init', 'my_plugin_admin_init' );
  // add_action( 'admin_menu', 'my_plugin_admin_menu' );
   
//   function my_plugin_admin_init() {
       /* Register our stylesheet. */
     //  wp_register_style( 'css1', plugins_url('/skins/aqua/theme.css', __FILE__) );
    /*(   wp_register_style( 'css2', plugins_url('/skins/aqua/theme.css', __FILE__) );
       wp_register_style( 'css3', plugins_url('/skins/aqua/theme.css', __FILE__) );
       wp_register_style( 'myPluginStylesheet', plugins_url('/skins/aqua/theme.css', __FILE__) );
       wp_register_style( 'myPluginStylesheet', plugins_url('/skins/aqua/theme.css', __FILE__) );
       wp_register_style( 'myPluginStylesheet', plugins_url('/skins/aqua/theme.css', __FILE__) );
       wp_register_style( 'myPluginStylesheet', plugins_url('/skins/aqua/theme.css', __FILE__) );
	   */
  // }
   
  // function my_plugin_admin_menu() {
       /* Register our plugin page */
   //    $page = add_submenu_page( 'edit.php', 
    //
	//                             __( 'My Plugin', 'myPlugin' ),
     //                            'administrator',
      //                           __FILE__, 
       //                          'my_plugin_manage_menu' );
  
       /* Using registered $page handle to hook stylesheet loading */
     //  add_action( 'admin_print_styles-' . $page, 'my_plugin_admin_styles' );
   //}
   
 //  function my_plugin_admin_styles() {
       /*
        * It will be called only on your plugin admin page, enqueue our stylesheet here
        */
   //    wp_enqueue_style( 'css1' );
 //  }
  // function my_plugin_manage_menu() {
       /* Output our admin page */
  // }
  ?>	    
		<!-- import the Jalali Date Class script -->
		<script type="text/javascript" src="<?php echo plugins_url('',__FILE__); ?>/jalali.js"></script>
		
		<!-- import the calendar script -->
		<script type="text/javascript" src="<?php echo plugins_url('',__FILE__); ?>/calendar.js"></script>
		
		<!-- import the calendar script -->
		<script type="text/javascript" src="<?php echo plugins_url('',__FILE__); ?>/calendar-setup.js"></script>
		
		<!-- import the language module -->
		<script type="text/javascript" src="<?php echo plugins_url('',__FILE__); ?>/lang/calendar-fa.js"></script>
