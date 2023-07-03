@extends('news.main')
@section('content')
    <div class="section-category">
        <div class="content_container container_category">
            <div class="featured_title">
                <div class="container">
                    <div class="row">
                        <!-- Main Content -->
                        <div class="col-lg-9">
                            <div class="text-center text-center">
                                <h1 class="error-number">404</h1>
                                <h2>Sorry but we couldn't find this page</h2>
                                <p>This page you are looking for does not exist <a href="#">Report this?</a>
                                </p>
                                <div class="mid_center">
                                    <a href="/">
                                        <button class="btn btn-round btn-default" type="button">Back!</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Sidebar -->
                        <div class="col-lg-3">
                            <div class="sidebar">
                                <!-- Advertisement -->
                                @include ('news.block.advertisement', ['itemsAdvertisement' => []])

                                <!-- MostViewed -->
                                @include ('news.block.most_viewed', ['itemsMostViewed' => []])

                                <!-- Tags -->
                                @include ('news.block.tags', ['itemsTags' => []])
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
