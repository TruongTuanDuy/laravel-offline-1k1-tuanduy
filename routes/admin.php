<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
$prefixAdmin = config('zvn.url.prefix_admin');

Route::group(['prefix' => $prefixAdmin, 'namespace' => 'Admin', 'middleware' => ['permission.admin']], function () {

    // ============================== DASHBOARD ==============================
    $prefix         = 'dashboard';
    $controllerName = 'dashboard';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             ['as' => $controllerName,                  'uses' => $controller . 'index']);
    });

    // ============================== SLIDER ==============================
    $prefix         = 'slider';
    $controllerName = 'slider';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             ['as' => $controllerName,                  'uses' => $controller . 'index']);
        Route::get('form/{id?}',                    ['as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                         ['as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                   ['as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',   ['as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
    });

    // ============================== CATEGORY ==============================
    $prefix         = 'category';
    $controllerName = 'category';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 ['as' => $controllerName,                  'uses' => $controller . 'index']);
        Route::get('form/{id?}',                        ['as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             ['as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                       ['as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',       ['as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
        Route::get('change-is-home-{is_home}/{id}',     ['as' => $controllerName . '/isHome',      'uses' => $controller . 'isHome'])->where('id', '[0-9]+');
        Route::get('change-display-{display}/{id}',     ['as' => $controllerName . '/display',     'uses' => $controller . 'display']);
    });

    // ============================== ARTICLE ==============================
    $prefix         = 'article';
    $controllerName = 'article';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 ['as' => $controllerName,                  'uses' => $controller . 'index']);
        Route::get('form/{id?}',                        ['as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             ['as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                       ['as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',       ['as' => $controllerName . '/status',      'uses' => $controller . 'status']);
        Route::get('change-type-{type}/{id}',           ['as' => $controllerName . '/type',        'uses' => $controller . 'type']);
        Route::get('change-category_id-{category_id}/{id}', ['as' => $controllerName . '/category_id',        'uses' => $controller . 'category']);
    });

    // ============================== INFORMATION ==============================
    $prefix         = 'password';
    $controllerName = 'password';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',   ['as' => $controllerName,  'uses' => $controller . 'index']);
        Route::post('change-password',  ['as' => $controllerName . '/change-password',  'uses' => $controller . 'changePassword']);
    });


    // ============================== USER ==============================
    $prefix         = 'user';
    $controllerName = 'user';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                                 ['as' => $controllerName,                  'uses' => $controller . 'index']);
        Route::get('form/{id?}',                        ['as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                             ['as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::post('change-password',                  ['as' => $controllerName . '/change-password',        'uses' => $controller . 'changePassword']);
        Route::post('change-level',                     ['as' => $controllerName . '/change-level',        'uses' => $controller . 'changeLevel']);
        Route::get('delete/{id}',                       ['as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',       ['as' => $controllerName . '/status',      'uses' => $controller . 'status']);
        Route::get('change-level-{level}/{id}',         ['as' => $controllerName . '/level',      'uses' => $controller . 'level']);
        Route::get('show-user-password', ['as' => $controllerName . '/show-user-password', 'uses' => $controller . 'showUserPassword']);
        Route::post('change-user-password', ['as' => $controllerName . '/change-user-password', 'uses' => $controller . 'changeUserPassword']);
    });

    // ============================== RSS ==============================
    $prefix         = 'rss';
    $controllerName = 'rss';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             ['as' => $controllerName,                  'uses' => $controller . 'index']);
        Route::get('form/{id?}',                    ['as' => $controllerName . '/form',        'uses' => $controller . 'form'])->where('id', '[0-9]+');
        Route::post('save',                         ['as' => $controllerName . '/save',        'uses' => $controller . 'save']);
        Route::get('delete/{id}',                   ['as' => $controllerName . '/delete',      'uses' => $controller . 'delete'])->where('id', '[0-9]+');
        Route::get('change-status-{status}/{id}',   ['as' => $controllerName . '/status',      'uses' => $controller . 'status'])->where('id', '[0-9]+');
    });


    // ============================== UPLOAD ==============================
    $prefix         = 'upload';
    $controllerName = 'upload';
    Route::group(['prefix' =>  $prefix], function () use ($controllerName) {
        $controller = ucfirst($controllerName)  . 'Controller@';
        Route::get('/',                             ['as' => $controllerName,                  'uses' => $controller . 'index']);
    });
});

// Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
//     \UniSharp\LaravelFilemanager\Lfm::routes();
// });

Route::group(['prefix' => 'laravel-filemanager'], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});
