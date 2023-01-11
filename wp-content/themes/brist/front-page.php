<?php get_header(); ?>

<main>
    <section class="section-hero">
        <?php
        $featured_posts = get_field("featured_posts", "option");
        foreach ($featured_posts as $post_ID) { ?>
            <div class="hero-item">
                <?php echo get_the_post_thumbnail($post_ID, 'full'); ?>
            </div>
        <?php } ?>
    </section>
    <div class="container-fluid d-flex justify-content-end go-next-wrapper">
        <a href="/#work" class="go-next icon-arrow-down"></a>
    </div>

    <section class="section-gallery" id="work">
        <div class="container-fluid inner-wrapper">
            <div class="row row-thin posts-gallery">

                <?php
                if (have_posts()) :
                    $i = 0;
                    while (have_posts()) :
                        the_post();
                        global $post;
                        $post_name = $post->post_name;
                        $thumbnail_id = get_post_thumbnail_id(get_the_ID());
                        $architects_name = get_field("architects_name");
                        $location = get_field("location");
                        $type = get_field("type");
                        $youtube = get_field("video");
                        $youtube_ID = explode("?v=", $youtube)[1];
                        $mp4 = get_field("mp4");
                        $webm = get_field("webm");
                        $iframe = get_field("iframe");
                        ?>
                        <div class="col gallery-item"
                             data-sub-html="<div class='text-left'><a class='go-back icon-arrow-left h3 cursor-pointer d-none d-md-inline-block mx-n1'></a><?php if ($architects_name) { ?><span class='d-block mb-2 architects-name'><?php echo $architects_name; ?></span><?php } ?><span class='d-block h4 project-name'><?php the_title(); ?></span><?php if ($location) { ?><span class='d-block location'><?php echo $location; ?></span><?php } ?></div>"
                            <?php if ($type === "youtube" && $youtube_ID) { ?>
                                data-src="<?php echo $youtube ?>"
                            <?php } else if ($type === "videofile" && $mp4) { ?>

                                data-html="#video-<?php echo $i; ?>"
                            <?php } else if ($type === "iframe" && $iframe) { ?>
                                data-iframe="true"
                                data-src="<?php echo $iframe; ?>"
                            <?php } else { ?>
                                data-src="<?php echo wp_get_attachment_image_src($thumbnail_id, 'full')[0]; ?>"
                            <?php } ?>
                        >
                            <div class="gallery-item-inner">
                                <?php if ($type === "youtube" && $youtube_ID) { ?>
                                    <div class="responsive-video">
                                        <div class="iframe-video" id="video-<?php echo $i; ?>"
                                             data-video-id="<?php echo $youtube_ID; ?>"></div>
                                    </div>
                                <?php } else if ($type === "videofile" && $mp4) { ?>
                                    <video autoplay loop muted playsinline poster="<?php echo wp_get_attachment_image_src($thumbnail_id, 'large')[0]; ?>" preload="none">
                                        <source data-src="<?php echo $mp4; ?>" type="video/mp4">
                                        <?php if ($webm) { ?>
                                            <source data-src="<?php echo $webm; ?>" type="video/webm">
                                        <?php } ?>
                                        Your browser does not support HTML5 video.
                                    </video>
                                    <div style="display: none;" id="video-<?php echo $i; ?>">
                                        <video class="lg-video-object lg-html5 video-js vjs-default-skin" controls autoplay poster="<?php echo wp_get_attachment_image_src($thumbnail_id, 'large')[0]; ?>" preload="none">
                                            <source src="<?php echo $mp4; ?>" type="video/mp4">
                                            <?php if ($webm) { ?>
                                                <source src="<?php echo $webm; ?>" type="video/webm">
                                            <?php } ?>
                                            Your browser does not support HTML5 video.
                                        </video>
                                    </div>
                                <?php } else { ?>
                                    <?php the_post_thumbnail("xl"); ?>
                                <?php } ?>
                                <span class="project-name"><?php the_title(); ?></span>
                            </div>
                        </div>
                        <?php $i++; endwhile;
                else :
                    echo esc_html__("Nothing to show", "brist");
                endif;
                ?>
            </div>
        </div>
        <?php get_template_part('/footer-content'); ?>
    </section>
    <section class="section-first-screen">
        <div class="container">
            <div class="blockquote-text"><?php the_field('blockquote', 'option'); ?></div>
            <div class="blockquote-author"><?php the_field('author_name', 'option'); ?></div>
        </div>
        <div class="icon-close js--close-screen"></div>
    </section>
</main>

</div>

<?php wp_footer(); ?>
</body>
</html>
