<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\video;

class RelatedVideos extends Component
{
    
     
    public $videos;
    public function __construct(video $video)
    {
    $this->videos = $video->relatedVideos(10);
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.related-videos');
    }
}
