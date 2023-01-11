<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'brist' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'p>(v|@Vc*# KK2sZD5Q#8|+|wv#t~ZP=7hI/-D*9VH#u2e^?.Fu#~pMR0d|@7FWR' );
define( 'SECURE_AUTH_KEY',  'roxFA%@2R?8rwca_w=!pGK8SsE?V;>1v{&`I]$I}`xh{F!i:$7K6wzFuppJ yIx[' );
define( 'LOGGED_IN_KEY',    'LL7eh32F.;#[5cbj^J_z{pL[)]aXM[4M>43+~A1<5YT*Z)?B}N,IdSt@Jcgi@hgW' );
define( 'NONCE_KEY',        '0D!,_dpo^8CVq%oF2L&+:y+!H<*<MQhMK=1(t]14@19DpH%OuS@hz,rw2@Z Vnf ' );
define( 'AUTH_SALT',        '#%) cYrjt|j(&$HF1W:*d@?QE%A8@yX2O^N],h=Ry[Il^Yp$NdfV)I>U7] *.lLv' );
define( 'SECURE_AUTH_SALT', 'z1kNDP2oI[JR3W%,r]Tp3ttl3m150pi9SfERDbu07ko@9y&1kD%c)eET#Qg92x`{' );
define( 'LOGGED_IN_SALT',   'Z %In+HhBC7@SyHeuvA@o4{05}ciz!q^Eh~V.]qjUw!2t$`:Yxm*NPYl}IDsM/Hn' );
define( 'NONCE_SALT',       '5=Q?f)E|v/C)Y*w9oF]NP|<nCe4Twsx`-c([OzrYwC`6@4$[:(uiIeCOl}`iBOg2' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
