<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use DB;

class SettingModel extends AdminModel
{
    protected $casts = [
        'value' => 'array',
    ];
    public function __construct()
    {
        $this->table               = 'setting';
        $this->fieldSearchAccepted = ['key_value'];
        $this->crudNotAccepted     = ['_token', 'task'];
    }

    public function saveItem($params = null, $options = null)
    {
        $result = null;

        $value = json_encode($this->prepareParams($params));
        // dd($value);
        self::where('key_value', $params['task'])->update(['value' => $value]);
    }

    public function getItem($params = null, $options = null)
    {
        $result = null;

        // if ($params['type'] == 'general') {
        //     $item = self::select('value')->where('key_value', 'general')->first()->toArray();
        //     $result = json_decode($item['value'], true);
        // }

        if ($params['type'] == 'email') {
            // $result = self::select('key_value', 'value')->whereIn('key_value', ['email_account', 'email_bcc'])->get();
            $result = self::select('key_value', 'value')->whereIn('key_value', ['email_account', 'email_bcc'])->get()->pluck('value', 'key_value');
            // dd($result);
        } else {

            $result = self::select('value')->where('key_value', $params['type'])->first()->value;
            // $result = json_decode($item['value'], true);
        }

        // if ($params['type'] == 'social') {
        //     $item = self::select('value')->where('key_value', 'social')->first()->toArray();
        //     $result = json_decode($item['value'], true);
        // }
        // dd($result);
        return $result;
    }
}
