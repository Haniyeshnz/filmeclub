@extends('layout')
@section('content')
           <x-Latest-videos></x-Latest-videos>
                <h1 class="new-video-title"><i class="fa fa-bolt"></i> پربازدیدترین ویدیوها</h1>
                <div class="row">
                @foreach ($mostViewevideos as $video)
                <x-video-box :video="$video"/>
                    @endforeach
                </div>

            <h1 class="new-video-title"><i class="fa fa-bolt"></i> محبوب‌ترین‌ها</h1>
            <div class="row">
            @foreach ($mostPopularvideos as $video)
            <x-video-box :video="$video"/>
                    @endforeach
            </div>
@endsection