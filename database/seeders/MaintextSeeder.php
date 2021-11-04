<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
use App\Models\Maintext;

class MaintextSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*
        DB::table('maintexts')->insert([
            'name' => 'Контакты',
            'body' => '+375(29)7639382',
            'url' => 'contact',
            'catalog_id' => 1
        ]);
        */
        $maintext = new Maintext;
        $maintext->name = 'О нас';
        $maintext->body = 'Покупайте машины у нас';
        $maintext->url = 'about';
        $maintext->catalog_id = 2;
        $maintext->save();
    }
}
