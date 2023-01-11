<?php

/**
 * Definition of global variables
 */

defined("THEME_URI") || define("THEME_URI", get_template_directory_uri());
defined("THEME_DIR") || define("THEME_DIR", get_template_directory());


if (!defined("_S_VERSION")) {
    define("_S_VERSION", "1.0.0");
}


/**
 * Init ACF theme option page
 */

function init_acf_option()
{
    if (function_exists("acf_add_options_page")) {

        acf_add_options_page(array(
            "page_title" => esc_html__("Theme General Settings", "brist"),
            "menu_title" => esc_html__("Theme Settings", "brist"),
            "menu_slug" => "theme-general-settings",
            "capability" => "edit_posts",
            "redirect" => false,
        ));

    }
}

add_action("acf/init", "init_acf_option");


function brist_setup()
{
    add_theme_support("menus");
    add_theme_support("post-thumbnails");

    register_nav_menus(
        array(
            "main-menu" => esc_html__("Main menu", "brist"),
            "social" => esc_html__("Social", "brist"),
        )
    );

    add_theme_support(
        "html5",
        array(
            "search-form",
            "comment-form",
            "comment-list",
            "gallery",
            "caption",
            "style",
            "script",
        )
    );

    add_theme_support(
        "custom-logo",
        array(
            "height" => 42,
            "width" => 95,
            "flex-width" => true,
            "flex-height" => true,
        )
    );

    add_image_size("xl", 1512, 9999);
    add_image_size("xxl", 2560, 9999);

}

add_action("after_setup_theme", "brist_setup");


/**
 * Enqueue theme global css and js
 */

function brist_scripts()
{
    wp_enqueue_style("font-luxora-grotesk", THEME_URI . "/src/fonts/luxora-grotesk/stylesheet.css", array(), _S_VERSION);
    wp_enqueue_style("font-equinox", THEME_URI . "/src/fonts/equinox/stylesheet.css", array(), _S_VERSION);
    wp_enqueue_style("brist-icons", THEME_URI . "/src/fonts/brist-icons/css/brist-icons.css", array(), _S_VERSION);
    wp_enqueue_style("main-styles", THEME_URI . "/build/main.min.css", array(), _S_VERSION);

    wp_enqueue_script("viewportChecker", THEME_URI . "/src/vendors/jquery.viewportchecker.min.js", array("jquery"), _S_VERSION);
    wp_enqueue_script("main-scripts", THEME_URI . "/build/main.min.js", array("jquery"), _S_VERSION);


    if (is_page_template("page-services.php") || is_front_page()) {
        // lightGallery
        wp_enqueue_script("lightGallery", THEME_URI . "/src/vendors/lightGallery/js/lightgallery.min.js", array("jquery"), _S_VERSION);
        wp_enqueue_script("lg-video", THEME_URI . "/src/vendors/lightGallery/js/lg-video.min.js", array("jquery"), _S_VERSION);
        wp_enqueue_script("lg-hash", THEME_URI . "/src/vendors/lightGallery/js/lg-hash.min.js", array("jquery"), _S_VERSION);

        wp_enqueue_style("lightGallery", THEME_URI . "/src/vendors/lightGallery/css/lightgallery.min.css", array(), _S_VERSION);
    }

    if (is_front_page()) {

        // Slick
        wp_enqueue_script("slick", THEME_URI . "/src/vendors/slick/slick.min.js", array("jquery"), _S_VERSION);
        wp_enqueue_style("slick", THEME_URI . "/src/vendors/slick/slick.css", array(), _S_VERSION);

        // Front Page
        wp_enqueue_script("front-page", THEME_URI . "/build/front-page.min.js", array("jquery"), _S_VERSION);
        wp_enqueue_style("front-page", THEME_URI . "/build/front-page.min.css", array(), _S_VERSION);

        // Youtube iframe api
        wp_enqueue_script("youtube_iframe_api", "https://www.youtube.com/iframe_api", array(), _S_VERSION);

        // Work Page
        wp_enqueue_script("work-page", THEME_URI . "/build/work-page.min.js", array("jquery"), _S_VERSION);
        wp_enqueue_style("work-page", THEME_URI . "/build/work-page.min.css", array(), _S_VERSION);

    }


    if (is_page_template("page-services.php")) {
        wp_enqueue_script("services-page", THEME_URI . "/build/services-page.min.js", array("jquery"), _S_VERSION);
        wp_enqueue_style("services-page", THEME_URI . "/build/services-page.min.css", array(), _S_VERSION);
    }

    if (is_page_template("page-meet-us.php")) {
        wp_enqueue_script("meet-us-page", THEME_URI . "/build/meet-us-page.min.js", array("jquery"), _S_VERSION);
        wp_enqueue_style("meet-us-page", THEME_URI . "/build/meet-us-page.min.css", array(), _S_VERSION);
    }

    if (is_page_template("page-contact.php")) {
        wp_enqueue_style("contact-page", THEME_URI . "/build/contact-page.min.css", array(), _S_VERSION);
    }


    remove_action("wp_head", "wp_print_scripts");
    remove_action("wp_head", "wp_print_head_scripts", 9);
    remove_action("wp_head", "wp_enqueue_scripts", 1);
    remove_action("wp_head", "wp_print_styles", 99);
    remove_action("wp_head", "wp_enqueue_style", 99);

    add_action("wp_footer", "wp_print_scripts", 5);
    add_action("wp_footer", "wp_enqueue_scripts", 5);
    add_action("wp_footer", "wp_print_head_scripts", 5);
    add_action("wp_head", "wp_print_styles", 30);
    add_action("wp_head", "wp_enqueue_style", 30);
}

add_action("wp_enqueue_scripts", "brist_scripts");


add_action("admin_head", "custom_styles");
function custom_styles()
{
    echo "
<style>
    .acf-admin-single-field-group .acf-field-object-flexible-content .acf-is-subfields .acf-field-object .acf-label, 
    .acf-admin-single-field-group .acf-field-object-flexible-content .acf-is-subfields .acf-field-object .acf-input, 
    .post-type-acf-field-group .metabox-holder.columns-1 #acf-field-group-fields, 
    .post-type-acf-field-group .metabox-holder.columns-1 #acf-field-group-options, 
    .post-type-acf-field-group .metabox-holder.columns-1 .meta-box-sortables.ui-sortable, 
    .post-type-acf-field-group .metabox-holder.columns-1 .notice, 
    .post-type-acf-field-group.columns-1 .notice {
        max-width: 100%;
    }
    .post-type-acf-field-group .acf-field-setting-name .acf-tip {
        left: auto;
        right: 0;
    }
</style>
";
}


add_filter("wp_nav_menu_items", "brist_logo_menu_item", 10, 2);
function brist_logo_menu_item($items, $args)
{
    if ($args->theme_location == "main-menu") {
        $logo = get_theme_mod( "custom_logo" );
        $logo_attr = wp_get_attachment_image_src($logo, "large");
        $items .= '
            <li
                class="menu-item menu-item-type-logo menu-item-object-logo"
            >
                <a 
                    title="' . get_bloginfo("name") . '" 
                    class="site-logo" 
                    href="' . get_home_url() . '"
                >
                    <img 
                        src="' . $logo_attr[0] . '"
                        width="' . round($logo_attr[1] / 4) . '"
                        height="' . round($logo_attr[2] / 4) . '"
                        alt="' . get_bloginfo("name") . " - " . esc_html__('site logo', 'brist') . '"
                    />
                </a>
            </li>';
    }
    return $items;
}