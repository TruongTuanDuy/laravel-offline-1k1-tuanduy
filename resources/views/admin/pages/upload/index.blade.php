@extends('admin.main')

@section('content')
    {{-- @include ('admin.templates.page_header', ['pageIndex' => true])
    @include ('admin.templates.zvn_notify') --}}
    <div class="page-header zvn-page-header clearfix">
        <div class="zvn-page-header-title">
            <h3>Quản lý Upload</h3>
        </div>
    </div>
    <iframe src="/laravel-filemanager" style="width: 100%; height: 600px; overflow: hidden; border: none;"></iframe>
@endsection
