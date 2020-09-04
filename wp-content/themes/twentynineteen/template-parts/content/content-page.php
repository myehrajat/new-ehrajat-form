<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Nineteen
 * @since 1.0.0
 */

?>

	<?php if ( ! twentynineteen_can_show_post_thumbnail() ) : ?>
		<?php get_template_part( 'template-parts/header/entry', 'header' ); ?>
	<?php endif; ?>

	<div class="entry-content">
		<?php
		the_content();

		?>
	</div><!-- .entry-content -->

