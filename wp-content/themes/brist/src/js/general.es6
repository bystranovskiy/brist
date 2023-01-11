"use strict";

(function ($) {

    $(window).on("load", function (e) {

        $(".gallery-item-inner video").each(function (index) {
            $(this).find("source").each(function (index) {
                $(this).attr("src", $(this).attr("data-src"));
            })
        })

        $("body").addClass("loaded");
        $(".preloader").fadeOut("slow");
        $(".vc").viewportChecker();

    });

    $(window).on("scroll", function () {
        if ($(window).scrollTop() >= 10) {
            //$("header").addClass("sticky");
        } else {
            //$("header").removeClass("sticky");
        }
    });


})(jQuery);