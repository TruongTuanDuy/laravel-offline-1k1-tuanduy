<?php

namespace App\Providers;

use App\Models\SettingModel;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Config;

class MailServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $emailAccount = SettingModel::where('key_value', 'email_account')->first()->value;
        if (empty($emailAccount)) return false;
        else {
            Config::set('mail.username', $emailAccount['email_account_username']);
            Config::set('mail.password', $emailAccount['email_account_password']);
            // (new \Illuminate\Mail\MailServiceProvider(app()))->register();
        }
    }
}
