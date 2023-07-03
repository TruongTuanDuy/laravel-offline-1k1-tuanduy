<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\AdminController;
use Illuminate\Http\Request;

use App\Models\SliderModel as MainModel;
use App\Http\Requests\SliderRequest as MainRequest;


class SliderController extends AdminController
{

    public $pathViewController = 'admin.pages.slider.';  // slider
    public $controllerName     = 'slider';

    public function __construct($pathViewController, $controllerName)
    {
        parent::__construct($pathViewController, $controllerName);
    }

    public function index()
    {
        $this->index(Request $request);
    }
   
}
