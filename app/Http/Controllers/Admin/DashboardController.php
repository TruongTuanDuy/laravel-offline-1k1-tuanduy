<?php

namespace App\Http\Controllers\Admin;

use Config;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\DashboardModel as MainModel;


class DashboardController extends Controller
{
    private $pathViewController = 'admin.pages.dashboard.';
    private $controllerName     = 'dashboard';
    private $params             = [];
    private $model;

    public function __construct()
    {
        $this->model = new MainModel();
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        $dashboardItems        = Config::get('zvn.template.dashboard');

        $this->params['dashboardItems'] = $dashboardItems;
        $this->params = $this->model->countDashboardItems($this->params, ['task' => 'admin-count-items-group-by-status']);
        // dd($this->params);
        return view($this->pathViewController .  'index', [
            'params'        => $this->params,
        ]);
    }
}
