<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use DB;

class ContactModel extends AdminModel
{
    public function __construct()
    {
        $this->table               = 'setting';
        $this->fieldSearchAccepted = ['key_value'];
        $this->crudNotAccepted     = ['_token'];
    }

    public function getItem($params = null, $options = null)
    {
        $result = null;

        $itemGeneral = self::select('value')->where('key_value', 'general')->first()->toArray();
        $itemEmailAccount = self::select('value')->where('key_value', 'email_account')->first()->toArray();
        $itemEmailBcc = self::select('value')->where('key_value', 'email_bcc')->first()->toArray();
        $itemSocial = self::select('value')->where('key_value', 'social')->first()->toArray();
        $result['general'] = json_decode($itemGeneral['value'], true);
        $result['account'] = json_decode($itemEmailAccount['value'], true);
        $result['bcc'] = json_decode($itemEmailBcc['value'], true);
        $result['social'] = json_decode($itemSocial['value'], true);

        // $itemEmailAccount = self::select('value')->where('key_value', 'email_account')->first();
        // $itemEmailAccount = SettingModel::where('key_value', 'email_account')->first()->value;
        // dd($itemEmailAccount);

        // $mail = json_decode(SettingModel::where('key_value', 'email_account')->first()->value, true);
        // dd($mail);

        return $result;
    }
}
