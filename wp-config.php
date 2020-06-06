<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
if(isset($_GET['db'])){
define( 'DB_NAME', $_GET['db'] );
}else{
	define( 'DB_NAME', 'new-sys' );
}


/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '~Lu-UvB@w+a2RcL^21S^Dc<I=)fMOtl. 8tcp0t[hA03t*}~;/1hPO;lxr$eO/i?' );
define( 'SECURE_AUTH_KEY',  '<!iq^>MDV/sWNm3Kg;^J^E[)zOI%lMPYjlOFqmIpS~Jox+x&9AR|vwEe3 A=C:%`' );
define( 'LOGGED_IN_KEY',    'Xb3tfuJF0S}aq9&(h~7x?)W2%B`pq1WgCSGY]J8jK&;]#Wk&)E/fJz#98WS7>BPa' );
define( 'NONCE_KEY',        '6}6}B(FmF@m`p{KaQZVd$gjD)-b}CXdV*XFLBT`939A_zlkLHhA$86; ~f#JECpQ' );
define( 'AUTH_SALT',        ';Oxj[&&U5f-PvuRsKq=kn Q+&L10u;1e8G}}x{:q&B6dX1e)yx#g=,FYDcn72:=o' );
define( 'SECURE_AUTH_SALT', 'H.?v]<l`kL=vK;d,/1%z$(h#Xk!c~3`s[:61;c kWGCxIRS{-)CkRo)YpE%s$(5k' );
define( 'LOGGED_IN_SALT',   '%FpBYhA{`+e,khp(EfUR-C]ZCqq0Ju=ik (zrIrYh](w5H^;tE6gk}ga8*,IJtF$' );
define( 'NONCE_SALT',       '${R}Yz% Ekg&~V<N$|9HScoN8t@6gD&D)>pOpn}t_#qqdKT`Qu=MqWE6JLq}7FX}' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
