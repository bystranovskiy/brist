<?php /* Template Name: Meet us */ ?>

<?php get_header(); ?>

    <main>

        <?php
        $blockquote = get_field("blockquote");
        $description = get_field("description");
        if ($blockquote || $description):?>
            <div class="section-content">
                <div class="container-fluid">
                    <div class="row">
                        <?php if ($blockquote): ?>
                            <div class="col-<?php echo $description ? 'md-6' : '12' ?> vc">
                                <div class="h3 mb-4 mb-md-0"><?php echo $blockquote; ?></div>
                            </div>
                        <?php endif; ?>
                        <?php if ($description): ?>
                            <div class="col-<?php echo $blockquote ? 'md-6' : '12' ?> vc">
                                <?php echo $description; ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        <?php endif; ?>

        <?php if (have_rows('team')): ?>
            <section class="section-team">
                <div class="container-fluid">
                    <div class="h4 mb-4 vc"><?php echo esc_html__("Team", "brist"); ?></div>
                    <div class="row mx-0 team-list">
                        <?php while (have_rows('team')): the_row(); ?>
                            <div class="col-sm-6 col-lg-3 mb-4 px-0 team-member vc">
                                <div class="team-member-photo">
                                    <?php echo wp_get_attachment_image(get_sub_field("photo"), "large", false, array("class" => "img-responsive")); ?>
                                </div>
                                    <div class="team-member-info">
                                    <div class="team-member-name h5 font-primary mb-2"><?php the_sub_field('name'); ?></div>
                                    <div class="team-member-position"><?php the_sub_field('position'); ?></div>
                                </div>
                            </div>
                        <?php endwhile; ?>
                    </div>
                </div>
            </section>
        <?php endif; ?>


        <?php if (have_rows('careers')): ?>
            <section class="section-careers">
                <div class="container-fluid">
                    <div class="h4 vc"><?php echo esc_html__("Careers", "brist"); ?></div>
                    <p class="vc"><?php echo esc_html__("Let’s grow together", "brist"); ?></p>
                    <div class="row mt-5 row-thin">
                        <?php while (have_rows('careers')): the_row(); ?>
                            <div class="col-md-6 col-xl-3 mb-3 vc">
                                <div class="careers-item">
                                    <div class="career-title mb-5 h4"><?php the_sub_field('job_vacancy'); ?></div>
                                    <p class="career-description mb-5"><?php the_sub_field('job_description'); ?></p>
                                    <p><a href="mailto:<?php the_field('email','option');?>?subject=<?php echo esc_html__("Careers", "brist"); ?>&body=Applying%20for%20a%20<?php echo str_replace(' ', '%20', get_sub_field('job_vacancy')); ?>"><?php echo esc_html__("Apply", "brist"); ?></a></p>
                                </div>
                            </div>
                        <?php endwhile; ?>
                    </div>
                </div>
            </section>
        <?php endif; ?>

    </main>

<?php
get_footer();
