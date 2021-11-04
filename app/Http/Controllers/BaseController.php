<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Maintext;

class BaseController extends Controller
{
    public function getIndex()
    {
        return view('welcome');
    }

    public function getStatic($url = null)
    {
        $maintext = Maintext::where('url', $url)->first();
        //return view('static')->with('maintext', $maintext);
        return view('static', compact('maintext'));
    }
}
