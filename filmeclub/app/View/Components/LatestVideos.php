<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use app\models\video;

class LatestVideos extends Component
{
    /**
     * Create a new component instance.
     */
    public $videos;
    public function __construct()
    {
       $this->videos=video::latest()->take(6)->get();
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.Latest-videos');
    }
}
