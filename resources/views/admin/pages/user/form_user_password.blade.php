@php
    use App\Helpers\Form as FormTemplate;
    use App\Helpers\Template;
    
    $formInputAttr = config('zvn.template.form_input');
    $formLabelAttr = config('zvn.template.form_label_edit');
    $item = session()->get('userInfo');
    
    $inputHiddenID = Form::hidden('id', @$item['id']);
    // $inputHiddenTask = Form::hidden('task_change_password', 'change-password');
    
    $elements = [
        [
            'label' => Form::label('current_password', 'Current Password', $formLabelAttr),
            'element' => Form::password('current_password', $formInputAttr),
        ],
        [
            'label' => Form::label('new_password', 'New Password', $formLabelAttr),
            'element' => Form::password('new_password', $formInputAttr),
        ],
        [
            'label' => Form::label('new_password_confirmation', 'Password Confirmation ', $formLabelAttr),
            'element' => Form::password('new_password_confirmation', $formInputAttr),
        ],
        [
            // 'element' => $inputHiddenID . $inputHiddenTask . Form::submit('Save', ['class' => 'btn btn-success']),
            'element' => $inputHiddenID . Form::submit('Save', ['class' => 'btn btn-success']),
            'type' => 'btn-submit-edit',
        ],
    ];
@endphp

@extends('admin.main')

@section('content')
    @include ('admin.templates.page_header', ['pageIndex' => false])
    @include ('admin.templates.error')

    <div class="col-md-6 col-sm-12 col-xs-12">
        <div class="x_panel">
            @include('admin.templates.x_title', ['title' => 'Form Change Password'])
            <div class="x_content">
                {{ Form::open([
                    'method' => 'POST',
                    'url' => route("$controllerName/change-user-password"),
                    'accept-charset' => 'UTF-8',
                    'enctype' => 'multipart/form-data',
                    'class' => 'form-horizontal form-label-left',
                    'id' => 'main-form',
                ]) }}
                {!! FormTemplate::show($elements) !!}
                {{ Form::close() }}
            </div>
        </div>
    </div>
@endsection


{{-- @extends('admin.main') --}}

{{-- @section('content')
    <div class="page-header zvn-page-header clearfix">
        <div style="display: block">
            <h3>Form Change Password</h3>
            <br>
            <div class="row top_tiles">
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Form Change Password</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li class="pull-right"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <form method="POST" action="http://proj_news.abc/admin123/user/change-password"
                                accept-charset="UTF-8" enctype="multipart/form-data" class="form-horizontal form-label-left"
                                id="main-form"><input name="_token" type="hidden"
                                    value="PwWyyMuqI7LxFQ6nc6xr0KfFDinEXJRqpEDqS0BT">
                                <div class="form-group">
                                    <label for="current_password" class="control-label col-md-4 col-sm-3 col-xs-12">Current
                                        Password</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input class="form-control col-md-6 col-xs-12" name="current_password"
                                            type="password" value="" id="current_password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="new_password" class="control-label col-md-4 col-sm-3 col-xs-12">New
                                        Password</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input class="form-control col-md-6 col-xs-12" name="new_password" type="password"
                                            value="" id="new_password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="new_password_confirmation"
                                        class="control-label col-md-4 col-sm-3 col-xs-12">Password
                                        Confirmation </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input class="form-control col-md-6 col-xs-12" name="new_password_confirmation"
                                            type="password" value="" id="new_password_confirmation">
                                    </div>
                                </div>
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-4">
                                        <input name="id" type="hidden" value="4"><input
                                            name="task_change_password" type="hidden" value="change-password"><input
                                            class="btn btn-success" type="submit" value="Save">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection --}}
