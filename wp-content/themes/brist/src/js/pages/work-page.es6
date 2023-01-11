import "../../scss/pages/work-page.scss";

"use strict";

(function ($) {

    $(window).on("load", function (e) {

    });


    $(window).on("load resize", function (e) {
        ratio();

        const lazyVideos = [].slice.call(document.querySelectorAll(".gallery-item video"));

        if ("IntersectionObserver" in window) {
            const lazyVideoObserver = new IntersectionObserver(function(entries, observer) {
                entries.forEach(function(video) {
                    if (video.isIntersecting) {
                        for (const source in video.target.children) {
                            const videoSource = video.target.children[source];
                            if (typeof videoSource.tagName === "string" && videoSource.tagName === "SOURCE") {
                                videoSource.src = videoSource.dataset.src;
                            }
                        }
                        video.target.load();
                        lazyVideoObserver.unobserve(video.target);
                    }
                });
            });

            lazyVideos.forEach(function(lazyVideo) {
                lazyVideoObserver.observe(lazyVideo);
            });
        }
    });

    $(document).ready(function () {

        $(".posts-gallery").lightGallery({
            download: false,
            hideBarsDelay: 2000,
            galleryId: "work",
        });

        $(document).on("click",".go-back",function (){
            $(".lg-close").click();
        })

        $(".project-name").each(function (index) {
            const self = $(this);
            const words = self.text().split(" ");
            self.empty();
            $.each(words, function (i, v) {
                self.append($("<span>").text(v));
            });
        });

        $(".iframe-video").each(function () {
            const playerID = $(this).attr("id");
            const videoID = $(this).data("video-id")
            setTimeout(function () {
                onYouTubeIframeAPIReady(playerID, videoID);
            }, 100);
        });


    });

    function ratio() {
        $(".gallery-item-inner").each(function (index) {
            const width = $(this).outerWidth();
            const height = $(this).outerHeight();
            const ratio = width * 56.25 / 100;
            if (height < ratio) {
                $(this).addClass("landscape").removeClass("portrait");
            } else {
                $(this).addClass("portrait").removeClass("landscape");
            }
        });
    }

    function onYouTubeIframeAPIReady(playerID, videoID) {
        const player = new YT.Player(playerID, {
            width: "100%",
            videoId: videoID,
            playerVars: {
                "autoplay": 0,
                "playsinline": 1,
                "controls": 0,
                "rel": 0,
                "fs": 0,
                "loop": 1,
                "mute": 1
            },
            events: {
                "onReady": function (event) {
                    event.target.playVideo();
                }
            }
        });
    }

})(jQuery);

