<footer class="site-footer text-center text-lg-left">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <div class="col-lg-auto">
                <p>
                    <a href="mailto:<?php the_field('email', 'option'); ?>"><?php the_field('email', 'option'); ?></a><br/>
                    <a href="tel:+<?php echo preg_replace('/[^\dxX]/', '', get_field('tel', 'option')); ?>"><?php the_field('tel', 'option'); ?></a>
                </p>
            </div>
            <div class="col-lg-auto">
                <h4><?php echo esc_html__("Location", "brist");?></h4>
                <p><?php the_field("location","option"); ?><br/>
                <a href="<?php the_field("map","option"); ?>" target="_blank"><?php echo esc_html__('Map', 'brist');?></a></p>
            </div>
            <div class="col-lg-auto">
                <h4><?php echo esc_html__("Social", "brist");?></h4>
                <?php wp_nav_menu(array(
                    "theme_location" => "social",
                )); ?>
            </div>
        </div>
        <div class="copyright text-center">© <?php echo date("Y") . " " . get_bloginfo("name") . " " . esc_html__("All Rights Reserved", "brist");?></div>
    </div>
</footer>
</div>

<?php wp_footer(); ?>
</body>
</html>
