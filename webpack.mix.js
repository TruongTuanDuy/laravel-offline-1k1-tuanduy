const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

// mix.js('resources/js/app.js', 'public/js')
//     .postCss('resources/css/app.css', 'public/css', [
//         //
//     ]);

mix
    .styles([
        'public/news/css/bootstrap-4.1.2/bootstrap.min.css',
        'public/news/css/font-awesome-4.7.0/css/font-awesome.min.css',
        'public/news/js/OwlCarousel2-2.2.1/owl.theme.default.css',
        'public/news/js/OwlCarousel2-2.2.1/animate.css',
        'public/news/css/responsive.css',
        'public/news/css/my-style.css',
    ], 'public/css/all.min.css')
    .scripts([
        'public/news/js/jquery-3.2.1.min.js',
        'public/news/css/bootstrap-4.1.2/popper.js',
        'public/news/css/bootstrap-4.1.2/bootstrap.min.js',
        'public/news/js/greensock/TweenMax.min.js',
    ], 'public/js/all.min.js');
