<?php

namespace App\Http\Controllers\Admin;

use Config;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\DashboardModel as MainModel;


class UploadController extends Controller
{
    private $pathViewController = 'admin.pages.upload.';
    private $controllerName     = 'upload';
    private $params             = [];
    private $model;

    public function __construct()
    {
        $this->model = new MainModel();
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        return view($this->pathViewController .  'index', [
            'params'        => $this->params,
        ]);
    }
}
