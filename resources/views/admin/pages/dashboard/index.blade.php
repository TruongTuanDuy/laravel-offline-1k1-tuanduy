@extends('admin.main')

@php
    $xhtml = null;
    // dd($params['dashboardItems']);
    foreach ($params['dashboardItems'] as $key => $value) {
        if (count($value['itemsStatusCount']) > 0) {
            array_unshift($value['itemsStatusCount'], [
                'status' => 'all',
                'count' => array_sum(array_column($value['itemsStatusCount'], 'count')),
            ]);
        }
    
        $link = route($key);
        $xhtml .= sprintf(
            '
            <a href="%s">
                <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="tile-stats">
                        <div class="icon"><i class="%s"></i></div>
                        <div class="count">%s</div>
                        <h3>%s</h3>
                        <p>Lorem ipsum psdea itgum rixt.</p>
                    </div>
                </div>
            </a>
        ',
            $link,
            $value['icon'],
            $value['itemsStatusCount'][0]['count'],
            $value['name'],
        );
    }
@endphp

@section('content')
    <div class="page-header zvn-page-header clearfix">
        <div style="display: block">
            <h3>Dashboard</h3>
            <br>
            <div class="row top_tiles">
                {!! $xhtml !!}
                {{-- <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="tile-stats">
                        <div class="icon"><i class="fa fa-check-square-o"></i></div>
                        <div class="count">179</div>
                        <h3>Slider Manager</h3>
                        <p>Lorem ipsum psdea itgum rixt.</p>
                    </div>
                </div> --}}
                {{-- <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="tile-stats">
                        <div class="icon"><i class="fa fa-pencil-square"></i></div>
                        <div class="count">179</div>
                        <h3>RSS Manager</h3>
                        <p>Lorem ipsum psdea itgum rixt.</p>
                    </div>
                </div> --}}
            </div>
        </div>
    </div>
    {{-- <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Dashboard</h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li class="pull-right"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <h4>Dashboard</h4>
                </div>
            </div>
        </div>
    </div> --}}
@endsection
