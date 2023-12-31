<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    private $table            = 'user';
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $id = $this->id;
        // $task   = $this->task;

        $condAvatar   = '';
        $condUserName = '';
        $condEmail    = '';
        $condPass     = '';
        $condLevel    = '';
        $condStatus   = '';
        $condFullname = '';

        if ($this->task_change_info != null) {
            $condUserName   = "bail|required|between:5,100|unique:$this->table,username,$id";
            $condFullname   = 'bail|required|min: 5';
            $condAvatar     = 'bail|image|max:500';
            $condStatus     = 'bail|in:active,inactive';
            $condEmail      = "bail|required|email|unique:$this->table,email,$id";
        }

        if ($this->task_change_password != null) {
            $condPass = "bail|sometimes|required|between:5,100|confirmed";
        }

        if ($this->task_change_level != null) {
            $condLevel = 'bail|in:admin,member';
        }

        if ($this->task_add != null) {
            $condUserName   = "bail|required|between:5,100|unique:$this->table,username";
            $condEmail      = "bail|required|email|unique:$this->table,email";
            $condFullname   = 'bail|required|min: 5';
            $condPass       = 'bail|required|between:5,100|confirmed';
            $condStatus     = 'bail|in:active,inactive';
            $condLevel      = 'bail|in:admin,member';
            $condAvatar     = 'bail|required|image|max:500';
        }

        // switch ($task) {
        //     case 'add':
        //         $condUserName   = "bail|required|between:5,100|unique:$this->table,username";
        //         $condEmail      = "bail|required|email|unique:$this->table,email";
        //         $condFullname   = 'bail|required|min: 5';
        //         $condPass       = 'bail|required|between:5,100|confirmed';
        //         $condStatus     = 'bail|in:active,inactive';
        //         $condLevel      = 'bail|in:admin,member';
        //         $condAvatar     = 'bail|required|image|max:500';
        //         break;
        //     case 'edit-info':
        //         $condUserName   = "bail|required|between:5,100|unique:$this->table,username,$id";
        //         $condFullname   = 'bail|required|min: 5';
        //         $condAvatar     = 'bail|image|max:500';
        //         $condStatus     = 'bail|in:active,inactive';
        //         $condEmail      = "bail|required|email|unique:$this->table,email,$id";
        //         break;
        //     case 'change-password':
        //         $condPass = "bail|sometimes|required|between:5,100|confirmed";
        //         break;
        //     case 'change-level':
        //         $condLevel = 'bail|in:admin,member';
        //         break;
        //     default:
        //         break;
        // }

        return [
            'username' => $condUserName,
            'email'    => $condEmail,
            'fullname' => $condFullname,
            'status'   => $condStatus,
            'new_password' => $condPass,
            'level'    => $condLevel,
            'avatar'   => $condAvatar
        ];
    }

    public function messages()
    {
        return [
            // 'name.required' => 'Name không được rỗng',
            // 'name.min'      => 'Name :input chiều dài phải có ít nhất :min ký tứ',
        ];
    }
    public function attributes()
    {
        return [
            // 'description' => 'Field Description: ',
        ];
    }
}
