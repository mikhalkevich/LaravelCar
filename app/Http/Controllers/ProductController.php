<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{

    /**
     * @author Mikhalkevich Alexandr
     * @description {
     *  Метод возвращает объект продукта
     * }
     *
     * @param $product
     *
     * @return \Illuminate\Contracts\View\View
     */
    public function getOne(Product $product)
    {
        return view('product', compact('product'));
    }

}
