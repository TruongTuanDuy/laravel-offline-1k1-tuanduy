@extends('news.main')

@php
    // dd($item);
@endphp

@section('content')
    <div class="container">
        <div class="mm-page mm-slideout" id="mm-0">
            <div class="wrapper">
                <style>
                    .menu_bar_home2 .icon-cart-mobile a {
                        right: 130px;
                        top: 14px;
                    }

                    .icon-cart-mobile a::before {
                        content: "";
                        height: unset;
                        background: unset;
                    }

                    .icon-cart-mobile a i {
                        height: unset;
                        background: unset;
                        font-size: 24px;
                    }

                    .icon-cart-mobile a span {
                        height: unset;
                        background: unset;
                        border-radius: 50%;
                        font-size: 11px;
                        height: 17px;
                        line-height: 17px;
                        position: absolute;
                        text-align: center;
                        width: 17px;
                        right: 0px;
                        top: 8px;
                        background-color: #192675;
                    }
                </style>
                <section class="our-contact">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 col-lg-4">
                                <div class="contact_localtion text-center">
                                    <div class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                                    <h4>Địa chỉ</h4>
                                    <p>{{ $item['general']['address'] }}</p>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4">
                                <div class="contact_localtion text-center">
                                    <div class="icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                                    <h4>Hotline</h4>
                                    <p class="mb0"> <a
                                            href="tel:{{ $item['general']['hotline'] }}">{{ $item['general']['hotline'] }}</a><br>
                                    </p>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4">
                                <div class="contact_localtion text-center">
                                    <div class="icon"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
                                    <h4>Email</h4>
                                    <p><a
                                            href="mailto:{{ $item['account']['email_account_username'] }}">{{ $item['account']['email_account_username'] }}</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="h600 overflow-hidden" id="map-canvas">{!! $item['general']['map'] !!}</div>
                            </div>
                            <div class="col-lg-2"></div>
                            <div class="col-lg-5 form_grid">
                                <h4 class="mb5">Gửi tin nhắn cho chúng tôi</h4>
                                <p style="line-height: 25px">Bạn chỉ đầy đủ thông tin cá nhân và vấn đề trao đổi với ZendVN
                                    vào form bên dưới, sau khi nhận được thông tin này chúng tôi sẽ liên hệ với các bạn
                                    trong thời gian sớm nhất.</p>
                                <form class="contact_form" id="contact_form" name="contact_form"
                                    action="lien-he/post-contact" method="post" novalidate="novalidate">
                                    @csrf
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group"><label for="exampleInputName">Họ tên</label><input
                                                    id="form_name" name="name" class="form-control" type="text">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group"><label for="exampleInputEmail">Email</label><input
                                                    id="form_email" name="email" class="form-control email"
                                                    type="email"></div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group"><label for="exampleInputPhone">Phone</label><input
                                                    id="form_phone" name="phone" class="form-control" type="text">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group"><label for="exampleInputEmail1">Lời nhắn</label>
                                                <textarea id="form_message" name="message" class="form-control" rows="5"></textarea>
                                            </div>
                                            <div class="form-group ui_kit_button mb0"><button type="submit"
                                                    class="btn dbxshad btn-md btn-thm circle white">Gửi ngay</button></div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <br>

                    </div>
                </section>
                <script>
                    window.fbAsyncInit = function() {
                        FB.init({
                            appId: 674639999916418,
                            xfbml: true,
                            version: 'v7.0'
                        });
                    };

                    (function(d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) return;
                        js = d.createElement(s);
                        js.id = id;
                        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));
                </script>
                <style>
                    #fb-root .fb_iframe_widget iframe {
                        right: 40px !important;
                        left: unset !important;
                        bottom: 100px !important;
                        top: unset !important;
                    }

                    #fb-root .fb_dialog .fb_dialog_content iframe {
                        right: 32px !important;
                        left: unset !important;
                        bottom: 30px !important;
                        top: unset !important;
                    }
                </style>
                <style>
                    .box-title {
                        position: fixed;
                        top: 40%;
                        right: 0;
                        z-index: 99;
                    }

                    .box-title .box-title__item {
                        margin-bottom: 3px;
                    }

                    .box-title .box-title__item a {
                        width: 45px;
                    }

                    .box-title .box-title__item a i {
                        color: #fff;
                    }
                </style>
            </div>
        </div>
    @endsection
