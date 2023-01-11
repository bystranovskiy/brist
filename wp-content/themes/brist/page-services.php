<?php /* Template Name: Services */ ?>

<?php get_header(); ?>

    <main>
        <?php if (have_rows('services')): ?>
            <section class="section-services">
                <div class="container-fluid">
                    <?php $i = 1;
                    while (have_rows('services')): the_row();
                        // Service info
                        $layout = get_sub_field("layout");
                        $title = get_sub_field("title");
                        $description = get_sub_field("description");

                        // Project 1
                        $project_1_image = get_sub_field("project_1_image");
                        $project_1_name = get_sub_field("project_1_name");
                        $project_1_architects_name = get_sub_field("project_1_architects_name");
                        $project_1_location = get_sub_field("project_1_location");
                        $project_1_url = get_sub_field("project_1_url");
                        ?>
                        <div class="row row-thin mb-3 service-item vc">
                            <div class="col-12 service-title">
                                <span class="num"><?php echo 0 . $i; ?></span><span
                                        class="service-name"><?php echo $title; ?></span>
                            </div>
                            <div class="col-12 row mx-0 px-0">
                                <div class="col-image mt-2 mt-md-0 col-<?php echo $layout === '1' ? 'md-8' : ($layout === '3' ? 'md-4' : '12'); ?>">
                                    <div class="project-wrapper"
                                         data-iframe="true"
                                         data-src="<?php echo $project_1_url; ?>"
                                         data-sub-html="<div class='text-left'><a class='go-back icon-arrow-left h3 cursor-pointer d-none d-md-inline-block mx-n1'></a><?php if ($project_1_architects_name) { ?><span class='d-block mb-2 architects-name'><?php echo $project_1_architects_name; ?></span><?php } ?><span class='d-block h4 project-name'><?php echo $project_1_name; ?></span><?php if ($project_1_location) { ?><span class='d-block location'><?php echo $project_1_location; ?></span><?php } ?></div>">
                                        <?php echo wp_get_attachment_image($project_1_image, "xl"); ?>
                                        <div class="project-name"><?php echo $project_1_name; ?></div>
                                    </div>
                                </div>
                                <?php if ($layout !== "2"):
                                    // Project 2
                                    $project_2_image = get_sub_field("project_2_image");
                                    $project_2_name = get_sub_field("project_2_name");
                                    $project_2_architects_name = get_sub_field("project_2_architects_name");
                                    $project_2_location = get_sub_field("project_2_location");
                                    $project_2_url = get_sub_field("project_2_url");
                                    ?>
                                    <div class="col-image mt-2 mt-md-0 col-<?php echo $layout === "1" ? 'md-4' : 'md-8'; ?>">
                                        <div class="project-wrapper"
                                             data-iframe="true"
                                             data-src="<?php echo $project_2_url; ?>"
                                             data-sub-html="<div class='text-left'><a class='go-back icon-arrow-left h3 cursor-pointer d-none d-md-inline-block mx-n1'></a><?php if ($project_2_architects_name) { ?><span class='d-block mb-2 architects-name'><?php echo $project_2_architects_name; ?></span><?php } ?><span class='d-block h4 project-name'><?php echo $project_2_name; ?></span><?php if ($project_2_location) { ?><span class='d-block location'><?php echo $project_2_location; ?></span><?php } ?></div>">
                                            <?php echo wp_get_attachment_image($project_2_image, "xl"); ?>
                                            <div class="project-name"><?php echo $project_2_name; ?></div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            </div>
                            <?php if ($description): ?>
                                <div class="col-12 service-description">
                                    <p><?php echo $description; ?></p>
                                </div>
                            <?php endif; ?>
                        </div>
                        <?php $i++; endwhile; ?>
                </div>
            </section>
        <?php endif; ?>
    </main>

<?php
get_footer();
