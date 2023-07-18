<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\AdminController;
use Illuminate\Http\Request;
use App\Rules\Oldpassword;
use App\Models\UserModel as MainModel;
use App\Http\Requests\UserRequest as MainRequest;
// use Illuminate\Database\Eloquent\Model;

class UserController extends AdminController
{
    public function __construct()
    {
        $this->pathViewController = 'admin.pages.user.';
        $this->controllerName     = 'user';
        $this->model = new MainModel();

        parent::__construct();
    }

    public function save(MainRequest $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();

            $task   = "add-item";
            $notify = "Thêm phần tử thành công!";

            if ($params['id'] !== null) {
                $task   = "edit-item";
                $notify = "Cập nhật phần tử thành công!";
            }
            $this->model->saveItem($params, ['task' => $task]);
            return redirect()->route($this->controllerName)->with("zvn_notify", $notify);
        }
    }

    public function changeLevel(MainRequest $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();
            $this->model->saveItem($params, ['task' => 'change-level-post']);
            return redirect()->route($this->controllerName)->with("zvn_notify", "Thay đổi level thành công!");
        }
    }

    public function changePassword(MainRequest $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();
            $this->model->saveItem($params, ['task' => 'change-password']);
            return redirect()->route($this->controllerName)->with("zvn_notify", "Thay đổi mật khẩu thành công!");
        }
    }

    public function level(Request $request)
    {
        $params["currentLevel"]   = $request->level;
        $params["id"]               = $request->id;
        $this->model->saveItem($params, ['task' => 'change-level']);
        return response()->json([
            'status' => 'success'
        ]);
    }

    public function showUserPassword(Request $request)
    {
        return view($this->pathViewController .  'form_user_password', [
            'params'        => $this->params,
        ]);
    }

    public function changeUserPassword(MainRequest $request)
    {

        if ($request->method() == 'POST') {
            $params = $request->all();
            $item = null;
            $item = $this->model->getItem($params, ['task' => 'get-item']);

            $request->validate([
                'current_password' => ['required', new OldPassword($item['password'])],
            ]);

            $this->model->saveItem($params, ['task' => 'change-password']);
            return redirect()->route($this->controllerName)->with("zvn_notify", "Thay đổi mật khẩu thành công!");
        }
    }
}
