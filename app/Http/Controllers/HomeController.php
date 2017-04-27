<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Sattalite;
use App\Categories;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
     //   $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('index');
    }

    public function aboutus()
    {
        return view('aboutus');
    }

    public function browse()
    {   
        $sattalite = Sattalite::all();
        $categories = Categories::all();
        return view('browse',compact('sattalite', 'categories'));
    }

    public function getbrowse($id)
    {
        return view('show');
    }
}
