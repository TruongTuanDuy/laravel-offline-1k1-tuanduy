@extends('admin.main')

@section('content')
    {{-- @include ('admin.templates.page_header', ['pageIndex' => true])
    @include ('admin.templates.zvn_notify') --}}
    <iframe src="/laravel-filemanager" style="width: 100%; height: 500px; overflow: hidden; border: none;"></iframe>
@endsection
