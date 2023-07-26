@extends('news.main')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                @foreach ($items as $item)
                    @php
                        $image = 'images/files/' . basename($item);
                    @endphp
                    <div style="display:inline-block; left: 0px; top: 0px; margin: 25px">
                        <a data-fancybox="gallery" href="{{ asset($image) }}"><img src="{{ asset($image) }}"
                                alt="{{ asset($image) }}" width="300"></a>
                    </div>
                @endforeach

            </div>
        </div>
    </div>
@endsection
