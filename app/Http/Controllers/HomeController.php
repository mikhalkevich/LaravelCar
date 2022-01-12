<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\OrderRequest;
use App\Models\Order;
use App\Models\Product;
use App\Models\User;
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
     * @return \Illuminate\Contracts\View\View
     */
    public function index()
    {
        $orders = Order::where('user_id', Auth::user()->id)->get();
        $products = [];
        if(isset($_COOKIE['basket'])){
            $products_array = explode(',',$_COOKIE['basket']);
            foreach($products_array as $one){
                if($one){
                    $product_one = explode(':', $one);
                    $products[] = Product::find($product_one[0]);
                }
            }
        }
        return view('home', compact('orders', 'products'));
    }

    /**
     * @author Mikhalkevich ALexandr
     * @description Вставка данных в таблицу orders
     *
     * @param  \App\Http\Requests\OrderRequest  $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postIndex(OrderRequest $request){
        $request['user_id'] = Auth::user()->id;
        $request['body'] = $_COOKIE['basket'];
        Order::create($request->all());
        setcookie('basket', '', time()-1);
        return redirect()->back();
    }

    public function getUsers(){
        $users = User::where('id', '>', 0)->get()->pluck('email','id');
        dd($users);
    }
}
