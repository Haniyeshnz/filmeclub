<?php

namespace App\Http\Controllers;

use App\Http\Requests\storeVideosRequest;
use App\Http\Requests\updateVideoRequest;
use App\Models\category;
use Illuminate\Http\Request;
use App\Models\video;
use Illuminate\Support\Facades\Auth;

class videoController extends Controller
{
    public function create()
    {
        $categories = category::all();
        return view('videos.create', compact('categories'));
    }
    public function store(storeVideosRequest $request)
    {
    //  dd($request->user());
       $request->user()->videos()->create($request->all());  
        // video::create($request->all());
        // video::create($request->all());

        return redirect()->route('index')->with('alert', __('message.success'));
    }
    public function show(Request $request, video $video)
    {
        return view('videos.show', compact('video'));
    }

    public function edit(video $video)
    {
        $categories = category::all();
        return view('videos.edit', compact('video','categories'));
        
    }

    public function update(updateVideoRequest $request, video $video)
    {
        $video->update($request->all());
        return redirect()->route('videos.show', $video->slug)->with('alert', __('message.video_edited'));
    }
    
}
