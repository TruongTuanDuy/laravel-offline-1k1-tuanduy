<?php

namespace App\Mail;

use App\Models\SettingModel;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Mail;

class MailService
{
    private $fromTitle;
    public function __construct()
    {
        $this->fromTitle = 'Mr. Trương Tuấn Duy';
    }

    public function sendContactConfirm($data)
    {
        // $emailAccount = json_decode(SettingModel::where('key_value', 'email_account')->first()->value, true);
        $emailAccount = SettingModel::where('key_value', 'email_account')->first()->value;
        if (empty($emailAccount)) {
            return false;
        } else {
            Mail::send([], [], function ($message) use ($emailAccount, $data) {
                $message->from($emailAccount['email_account_username'], $this->fromTitle);
                $message->to($data['email'], $data['name']);
                // dd($emailAccount['email_account_username']);
                $message->subject($this->fromTitle . ' - Thông báo gửi liên hệ thành công');
                $content = sprintf('
                <p>Xin chào, %s</p>
                <p>ZendVN đã nhận được thông tin liên hệ từ bạn. Chúng tôi sẽ liên hệ bạn trong thời gian sớm nhất.</p>
                <p>Cám ơn!</p>
                ', $data['name']);
                $message->setBody($content, 'text/html');
            });
            return true;
        }
    }

    public function sendContactInfo($data)
    {
        $emailAccount = json_decode(SettingModel::where('key_value', 'email_account')->first()->value, true);
        if (empty($emailAccount)) {
            return false;
        } else {

            Mail::send([], [], function ($message) use ($data, $emailAccount) {
                $message->from($emailAccount['email_account_username'], $this->fromTitle);
                $bcc = explode(',', SettingModel::where('key_value', 'email_account')->first()->value);
                $message->bcc($bcc);
                $message->to($data['email']);
                $message->subject('Thông tin liên hệ từ' . $data['name']);
                $content = sprintf('
                <p>Name: %s</p>
                <p>Email: %s</p>
                <p>Phone: %s</p>
                <p>Message: %s</p>
                ', $data['name'], $data['email'], $data['phone'], $data['message']);
                $message->setBody($content, 'text/html');
            });
            return true;
        }
    }
}
