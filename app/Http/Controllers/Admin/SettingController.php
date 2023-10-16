<?php

namespace App\Http\Controllers\Admin;

use Config;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SettingModel as MainModel;


class SettingController extends Controller
{
    private $pathViewController = 'admin.pages.setting.';
    private $controllerName     = 'setting';
    private $params             = [];
    private $model;

    public function __construct()
    {
        $this->model = new MainModel();
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        $params['type'] = $request->input('type', 'general');
        $item = $this->model->getItem($params, null);
        // return view($this->pathViewController .  'index', [
        //     'item' => $item,
        // ]);
        return view(
            $this->pathViewController .  'index',
            compact('item')
        );
    }

    public function save(Request $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();

            $notify = "Cập nhật cấu hình chung thành công!";

            $this->model->saveItem($params);
            return redirect()->route($this->controllerName, ['type' => 'general'])->with("zvn_notify", $notify);
        }
    }

    // public function general(Request $request)
    // {
    //     if ($request->method() == 'POST') {
    //         $params = $request->all();

    //         $notify = "Cập nhật cấu hình chung thành công!";

    //         $this->model->saveItem($params, ['task' => 'general']);
    //         return redirect()->route($this->controllerName, ['type' => 'general'])->with("zvn_notify", $notify);
    //     }
    // }

    // public function emailAccount(Request $request)
    // {
    //     if ($request->method() == 'POST') {
    //         $params = $request->all();
    //         $notify = "Cập nhật cấu hình chung thành công!";

    //         $this->model->saveItem($params, ['task' => 'email_account']);
    //         return redirect()->route($this->controllerName, ['type' => 'email'])->with("zvn_notify", $notify);
    //     }
    // }

    // public function emailBcc(Request $request)
    // {
    //     if ($request->method() == 'POST') {
    //         $params = $request->all();
    //         $notify = "Cập nhật cấu hình chung thành công!";

    //         $this->model->saveItem($params, ['task' => 'email_bcc']);
    //         return redirect()->route($this->controllerName, ['type' => 'email'])->with("zvn_notify", $notify);
    //     }
    // }

    // public function social(Request $request)
    // {
    //     if ($request->method() == 'POST') {
    //         $params = $request->all();
    //         $notify = "Cập nhật cấu hình chung thành công!";

    //         $this->model->saveItem($params, ['task' => 'social']);
    //         return redirect()->route($this->controllerName, ['type' => 'social'])->with("zvn_notify", $notify);
    //     }
    // }
}
