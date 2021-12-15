<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Maintext;
use App\Models\Product;

class BaseController extends Controller
{
    public function getIndex()
    {
        $products = Product::where('price','>', 0)->simplePaginate(6);
        return view('welcome', compact('products'));
    }

    public function getStatic($url = null)
    {
        $maintext = Maintext::where('url', $url)->first();
        return view('static', compact('maintext'));
    }

    public function getIndexApi(){
      $obj = Maintext::all();
      return response()->json($obj);
    }
}
