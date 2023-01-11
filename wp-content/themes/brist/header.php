<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <title><?php wp_title(); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <style>
        .preloader {
            position: fixed;
            z-index: 1000;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .preloader .spinner {
            width: 100px;
            height: 50px;
            position: absolute;
            top: 0;
            bottom: 0;
            right: 0;
            left: 0;
            margin: auto;
            text-align: center;
        }

        .preloader .spinner .ball {
            width: 20px;
            height: 20px;
            background-color: #353535;
            border-radius: 50%;
            display: inline-block;
            -webkit-animation: motion 3s cubic-bezier(0.77, 0, 0.175, 1) infinite;
            animation: motion 3s cubic-bezier(0.77, 0, 0.175, 1) infinite;
        }

        .preloader p {
            font-family: 'Equinox', sans-serif;
            color: #353535;
            margin-top: 5px;
            letter-spacing: 3px;
            font-size: 16px;
        }

        @-webkit-keyframes motion {
            0% {
                transform: translateX(0) scale(1);
            }
            25% {
                transform: translateX(-50px) scale(0.3);
            }
            50% {
                transform: translateX(0) scale(1);
            }
            75% {
                transform: translateX(50px) scale(0.3);
            }
            100% {
                transform: translateX(0) scale(1);
            }
        }

        @keyframes motion {
            0% {
                transform: translateX(0) scale(1);
            }
            25% {
                transform: translateX(-50px) scale(0.3);
            }
            50% {
                transform: translateX(0) scale(1);
            }
            75% {
                transform: translateX(50px) scale(0.3);
            }
            100% {
                transform: translateX(0) scale(1);
            }
        }
    </style>
    <?php wp_head(); ?>
</head>

<body <?php body_class();?>>
<div class="preloader">
    <div class="spinner">
        <div class="ball">
        </div>
        <p>LOADING</p>
    </div>
</div>
<?php wp_body_open(); ?>
<div id="page" class="site">
    <header class="site-header">
        <?php wp_nav_menu(array(
            'theme_location' => 'main-menu',
            'container_class' => 'container-fluid'
        )); ?>
    </header>
