import "../../scss/pages/services-page.scss";

"use strict";

(function ($) {

    $(document).ready(function () {

        $(".project-name").each(function () {
            const self = $(this);
            const words = self.text().split(" ");
            self.empty();
            $.each(words, function (i, v) {
                self.append($("<span>").text(v));
            });
        });

        $(".service-item").each(function () {
            $(this).lightGallery({
                download: false,
                selector: ".project-wrapper",
                hideBarsDelay: 2000,
                galleryId: $(this).find(".service-name").text().replace(/\s+/g, '-').toLowerCase(),
            });
        });

        $(document).on("click", ".go-back", function () {
            $(".lg-close").click();
        });

    })

})(jQuery);