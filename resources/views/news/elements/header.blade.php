@php
    // use App\Helpers\URL;
    
    $query = DB::table('menu')
        ->select('id', 'name', 'url', 'type_open', 'type')
        ->where('status', '=', 'active')
        ->orderBy('ordering', 'asc');
    $itemsMenu = $query->get()->toArray();
    
    $xhtmlMenu = '';
    $xhtmlMenuMobile = '';
    
    if (count($itemsMenu) > 0) {
        $currenturl = implode('', request()->segments());
        foreach ($itemsMenu as $item) {
            $classActive = $currenturl == $item->url ? 'active' : '';
            $arrayType = explode('_', $item->type);
            if (strpos($arrayType[0], 'category') !== false) {
                $query = DB::table($item->type)
                    ->select('id', 'name')
                    ->where('status', '=', 'active');
                // ->orderBy('ordering', 'asc');
                $itemsMenuTwo = $query->get()->toArray();
    
                if (count($itemsMenuTwo) > 0) {
                    $xhtmlMenu .= sprintf(
                        '
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            %s
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        ',
                        ucfirst($arrayType[1]),
                    );
                    foreach ($itemsMenuTwo as $item) {
                        $xhtmlMenu .= sprintf(
                            '
                            <a class="dropdown-item" href="#">%s</a>
                            ',
                            $item->name,
                        );
                    }
                    $xhtmlMenu .= '</div></li>';
                }
            } else {
                $xhtmlMenu .= sprintf(
                    '
                    <li class="nav-item %s">
                        <a class="nav-link" href="%s" target="%s">%s</a>
                    </li>
                    ',
                    $classActive,
                    $item->url,
                    $item->type_open,
                    $item->name,
                );
            }
    
            // $xhtmlMenuMobile .= sprintf('<li class="menu_mm"><a href="%s">%s</a></li>', $link, $item['name']);
        }
    
        // $xhtmlMenu .= sprintf('<li><a href="%s">Tin tức tổng hợp</a></li>', route('rss/index'));
        // $xhtmlMenu .= sprintf('<li><a href="%s">Hình ảnh</a></li>', route('image/index'));
        // $xhtmlMenuMobile .= sprintf('<li class="menu_mm"><a href="%s">Hình ảnh</a></li>', route('rss/index'));
        // $xhtmlMenuMobile .= sprintf('<li class="menu_mm"><a href="%s">Tin tức tổng hợp</a></li>', route('image/index'));
    
        if (session('userInfo')) {
            $xhtmlMenuUser = sprintf('<li><a class="nav-link" href="%s">%s</a></li>', route('auth/logout'), 'Logout');
        } else {
            $xhtmlMenuUser = sprintf('<li><a class="nav-link" href="%s">%s</a></li>', route('auth/login'), 'Login');
        }
    
        $xhtmlMenu .= $xhtmlMenuUser . '</ul></nav>';
        // $xhtmlMenuMobile .= $xhtmlMenuUser . '</ul></nav>';
    }
@endphp

<header class="header">

    <!-- Header Content -->
    <div class="header_content_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="header_content d-flex flex-row align-items-center justfy-content-start">
                        <div class="logo_container">
                            <a href="{!! route('home') !!}">
                                <div class="logo"><span>ZEND</span>VN</div>
                            </a>
                        </div>
                        <div class="header_extra ml-auto d-flex flex-row align-items-center justify-content-start">
                            <a href="#">
                                <div class="background_image"
                                    style="background-image:url({{ asset('news/images/zendvn-online.png') }});background-size: contain">
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Header Navigation & Search -->
    <div class="header_nav_container" id="header">
        <div class="container">
            <div class="row">
                <div class="col">

                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <a class="navbar-brand" href="#">Navbar</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavDropdown">
                            <ul class="navbar-nav">

                                {!! $xhtmlMenu !!}

                            </ul>
                        </div>
                    </nav>

                    <div class="header_nav_content d-flex flex-row align-items-center justify-content-start">

                        <!-- Logo -->
                        <div class="logo_container">
                            <a href="#">
                                <div class="logo"><span>ZEND</span>VN</div>
                            </a>
                        </div>

                        <!-- Navigation -->
                        {{-- {!! $xhtmlMenu !!} --}}

                        <!-- Hamburger -->
                        <div class="hamburger ml-auto menu_mm"><i class="fa fa-bars  trans_200 menu_mm"
                                aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>

{{-- <div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
    <div class="menu_close_container">
        <div class="menu_close">
            <div></div>
            <div></div>
        </div>
    </div>

    {!! $xhtmlMenuMobile !!}


</div> --}}
