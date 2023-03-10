import "../../scss/pages/front-page.scss";

"use strict";

(function ($) {

    let isDesktop = true;
    let isFirstScreen = true;
    let allowSlideUp = false;
    let allowSlideDown = true;

    const $firstScreen = $(".section-first-screen");
    const $sectionGallery = $(".section-gallery");
    const $heroSlider = $(".section-hero");
    const $body = $("body");
    const $header = $("header");


    // Hide $firstScreen on timeout. Start play $heroSlider
    $(window).on("load", function (e) {
        setTimeout(() => {
            $firstScreen.fadeOut("slow");
            $heroSlider.slick("refresh").slick("slickPlay");
            isFirstScreen = false;
            if (!isDesktop) {
                $body.removeClass("fixed");
            }
        }, 5000);
    });

    $(document).ready(function () {

        // Check if mobile
        if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
            || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0, 4))) {
            isDesktop = false
        }

        if (isDesktop) {
            $body.addClass("fixed");
            $sectionGallery.addClass("scroll");
        }

        // Init $heroSlider
        $heroSlider.slick({
            dots: true,
            arrows: false,
            infinite: true,
            speed: 1000,
            fade: true,
            cssEase: "linear",
            autoplay: false,
            autoplaySpeed: 3000,
            pauseOnHover: false,
            pauseOnFocus: false,
            pauseOnDotsHover: false
        });


        // If url has hash #work - hide $firstScreen and move to work section
        if (window.location.hash === "#work" || window.location.hash.startsWith("#lg=")) {
            slideDown(200, window.location.hash === "#work");
            $firstScreen.fadeOut("slow");
            isFirstScreen = false;
            $heroSlider.slick("refresh").slick("slickPlay");
        } else {
            $("html, body").animate({scrollTop: 0}, 100);
            if (!isDesktop) {
                $body.addClass("fixed");
            }
        }


        // Move to work section on click #work link
        $("a[href='/#work']").on("click", function (e) {
            e.preventDefault();
            if (isDesktop) {
                $sectionGallery.animate({scrollTop: 0}, 500);
            }
            allowSlideUp = false;
            allowSlideDown = true;
            slideDown(500);
            window.location.hash = "work";
        })


        // Hide $firstScreen on click close button
        $firstScreen.on("click", ".icon-close", function (e) {
            $(e.delegateTarget).fadeOut("slow");
            $heroSlider.slick("refresh").slick("slickPlay");
            isFirstScreen = false;
            if (!isDesktop) {
                $body.removeClass("fixed");
            }
        })


    });


    $(window).bind("mousewheel", function (e) {
        if (isDesktop && !$body.hasClass("lg-on")) {
            if ((e.originalEvent.detail > 0 || e.originalEvent.wheelDelta < 0) && $(window).scrollTop() === 0 && isFirstScreen === false) {
                slideDown(500);
            }
            if ((e.originalEvent.detail < 0 || e.originalEvent.wheelDelta > 0) && $sectionGallery.scrollTop() === 0) {
                slideUp(500);
            }
        }
    })


    function slideDown(speed, hash = true) {
        if (allowSlideDown) {
            let scrollDest = $(window).height();
            if (!isDesktop) {
                scrollDest = scrollDest - $header.height() + 1;
            }
            $("html, body").animate({scrollTop: scrollDest}, speed);
            if (hash) {
                window.location.hash = "work";
            }
            //$header.addClass("sticky");
            allowSlideDown = false;
            allowSlideUp = true;
        }
    }


    function slideUp(speed) {
        if (allowSlideUp) {
            $("html, body").animate({scrollTop: 0}, speed);
            history.replaceState("", "", location.pathname);
            //$header.removeClass("sticky");
            allowSlideUp = false;
            allowSlideDown = true;
        }
    }


    $(window).on("load resize orientationchange", function () {
        appHeight()
    });


    $(document).ready(function () {
        let i = null;
        $body.on("mousemove scroll", function () {
            clearTimeout(i);
            $header.addClass("sticky");
            i = setTimeout(() => {
                $header.removeClass("sticky");
            }, 3000);
        })
    })


    function appHeight() {
        document.documentElement.style.setProperty("--app-height", `${window.innerHeight}px`)
    }

})(jQuery);

