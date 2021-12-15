<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Product;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $orders = Order::where('user_id', Auth::user()->id)->get();
        $products_array = explode(',',$_COOKIE['basket']);
        $products = [];
         foreach($products_array as $one){
             if($one){
                 $product_one = explode(':', $one);
                 $products[] = Product::find($product_one[0]);
             }

         }
        return view('home', compact('orders', 'products'));
    }
    public function postIndex(Request $request){
        $request['user_id'] = Auth::user()->id;
        Order::create($request->all());
        return redirect()->back();
    }
}
