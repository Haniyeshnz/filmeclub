<?php
namespace App\Http\Controllers;

use App\Models\video;
use Illuminate\Http\Request;

class indexController extends Controller
{
    public function index(){
        // $videos=video::latest()->take(6)->get();
        $mostPopularvideos=video::all()->random(6);
        $mostViewevideos=video::all()->random(6);
        return view('index',compact('mostPopularvideos','mostViewevideos'));
    }
}
