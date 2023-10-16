<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ContactModel as MainModel;
use App\Mail\MailService;

class ContactController extends Controller
{
    private $pathViewController = 'news.pages.contact.';  // slider
    private $controllerName     = 'contact';
    private $params             = [];
    private $model;

    public function __construct()
    {
        $this->model = new MainModel();
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        $item = $this->model->getItem(null, null);
        return view($this->pathViewController .  'index', [
            'item' => $item,
            // 'item' => compact('item')
        ]);
    }

    public function postContact(Request $request)
    {

        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'message' => $request->message,
        ];

        // dd($data);

        $mailService = new MailService();
        $mailService->sendContactConfirm($data);
        // $mailService->sendContactInfo($data);
        $notify = "Cám ơn bạn đã gửi thông tin liên hệ. Chúng tôi sẽ liên hệ bạn trong thời gian sớm nhất.";
        return redirect()->route($this->controllerName . '/index')->with("news_notify", $notify);
    }
}
