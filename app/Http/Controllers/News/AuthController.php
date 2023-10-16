<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\AuthLoginRequest as MainRequest;
use App\Models\UserModel;
use Illuminate\Support\Facades\Session;

class AuthController extends Controller
{
    private $pathViewController = 'news.pages.auth.';
    private $controllerName     = 'auth';
    private $params             = [];
    private $model;

    public function __construct()
    {
        view()->share('controllerName', $this->controllerName);
    }

    public function login(Request $request)
    {
        // dd(str_contains('login', url()->previous()));
        if (!str_contains(url()->previous(), 'login')) {
            // dd(url()->previous());
            Session::put('url.intended', url()->previous());
        }
        // dd($request->session()->get('url.intended'));
        return view($this->pathViewController . 'login');
    }

    // middelware

    public function postLogin(MainRequest $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();

            $userModel = new UserModel();
            $userInfo = $userModel->getItem($params, ['task' => 'auth-login']);

            if (!$userInfo) {
                return redirect()->route($this->controllerName . '/login')->with('news_notify', 'Tài khoản hoặc mật khẩu không chính xác!');
            }
            // dd($request->session()->get('url.intended'));
            $request->session()->put('userInfo', $userInfo);
            // return redirect()->route('home');
            return redirect($request->session()->get('url.intended'));
        }
    }

    public function logout(Request $request)
    {
        if ($request->session()->has('userInfo')) $request->session()->pull('userInfo');
        return redirect()->route('home');
    }
}
