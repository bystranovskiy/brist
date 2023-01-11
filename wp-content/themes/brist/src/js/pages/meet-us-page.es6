import "../../scss/pages/meet-us-page.scss";

"use strict";

(function ($) {

    $(window).on("load resize", function (event) {
        $(".career-title").css("height", "auto").equalHeight();
        $(".career-description").css("height", "auto").equalHeight();
    });

    $.fn.equalHeight = function () {
        let maxHeight = 0;
        return this.each(function (index, box) {
            const boxHeight = $(box).height();
            maxHeight = Math.max(maxHeight, boxHeight);
        }).height(maxHeight);
    };

})(jQuery);

