@extends('admin.main')

@php
    $type = Request::input('type', 'general');
@endphp

@section('content')
    {{-- @include ('admin.templates.page_header', ['pageIndex' => true])
    @include ('admin.templates.zvn_notify') --}}
    <div class="page-header zvn-page-header clearfix">
        <div class="zvn-page-header-title">
            <h3>Quản lý Setting</h3>
        </div>
        <div class="zvn-add-new pull-right">
            <a href="http://proj_news.abc/admin123/category" class="btn btn-success"><i class="fa fa-arrow-left"></i> Quay
                về</a>
        </div>
    </div>

    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_content">
                <div class="" role="tabpanel" data-example-id="togglable-tabs">
                    <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        <li @if ($type == 'general') class="active" @endif><a
                                href="{{ route('setting', ['type' => 'general']) }}" role="tab">General</a>
                        </li>
                        <li @if ($type == 'email') class="active" @endif><a
                                href="{{ route('setting', ['type' => 'email']) }}" role="tab">Email</a>
                        </li>
                        <li @if ($type == 'social') class="active" @endif><a
                                href="{{ route('setting', ['type' => 'social']) }}" role="tab">Social</a>
                        </li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                            @switch($type)
                                @case('general')
                                    @include ('admin.pages.setting.child_index.general')
                                @break

                                @case('email')
                                    @include ('admin.pages.setting.child_index.email_account')
                                    @include ('admin.pages.setting.child_index.email_bcc')
                                @break

                                @case('social')
                                    @include ('admin.pages.setting.child_index.social')
                                @break

                                @default
                                    @include ('admin.pages.setting.child_index.general')
                                @break
                            @endswitch
                        </div>
                    </div>

                </div>
            </div>
        </div>
    @endsection
