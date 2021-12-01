<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Catalog;


class MenuController extends Controller
{
    public function postIndex( Request $request, Catalog $catalog){
        $obj = new Catalog;
        $obj->parent_id = $catalog->id;
        $obj->name = $request->name ?? '';
        $obj->body = $request->body ?? '';
        $obj->type = $request->type ?? 'main';
        $obj->save();
        return response()->json($obj);
    }
}
