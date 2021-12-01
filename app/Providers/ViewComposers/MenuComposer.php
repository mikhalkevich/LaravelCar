<?php

namespace App\Providers\ViewComposers;
use Illuminate\Contracts\View\View;
use App\Models\Catalog;
class MenuComposer
{
    public function compose(View $view)
    {
        $menu_main = Catalog::whereNull('parent_id')->where('type', 'main')->get();
        $view->with('menu_main', $menu_main);
    }
}
