<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class ImageController extends Controller
{
    private $pathViewController = 'news.pages.image.';  // slider
    private $controllerName     = 'image';
    private $params             = [];
    private $model;

    public function __construct()
    {
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        view()->share('title', 'Hình ảnh');

        $imagePath = public_path('images/files'); // Path to the images directory
        $images = File::files($imagePath);

        return view($this->pathViewController .  'index', [
            'items'   => $images
        ]);
    }
}
