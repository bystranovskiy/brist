<?php /* Template Name: Contact */ ?>

<?php get_header(); ?>

    <main>

        <div class="section-contact">
            <div class="container-fluid">
                <div class="row">
                    <div class="mb-4 col-lg-7 vc">
                        <div class="greeting-text">
                            <?php echo esc_html__("Hi, there", "brist");?>
                        </div>
                        <p><a href="/services/" class="text-underline"><?php echo esc_html__("Explore our Services", "brist");?></a></p>
                    </div>
                    <div class="col-lg-5 mb-5">
                        <div class="mb-5 vc">
                            <a href="mailto:<?php the_field('email', 'option'); ?>"><?php the_field('email', 'option'); ?></a><br/>
                            <a href="tel:+<?php echo preg_replace('/[^\dxX]/', '', get_field('tel', 'option')); ?>"><?php the_field('tel', 'option'); ?></a>
                        </div>
                        <div class="mb-5 vc">
                            <h4><?php echo esc_html__("Location", "brist");?></h4>
                            <p><?php the_field("location","option"); ?><br/>
                                <a href="<?php the_field("map","option"); ?>" target="_blank"><?php echo esc_html__('Map', 'brist');?></a>
                            </p>
                        </div>
                        <div class="vc">
                            <h4><?php echo esc_html__("Social", "brist");?></h4>
                            <?php wp_nav_menu(array(
                                "theme_location" => "social",
                            )); ?>
                        </div>
                        <div class="sitename-text">
                            <?php echo esc_html__("brist", "brist");?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slash-text">
                <?php echo esc_html__("/", "brist");?>
            </div>
        </div>

    </main>

</div>

<?php wp_footer(); ?>
</body>
</html>
