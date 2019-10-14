<?php

namespace App\Http\Controllers;

use App;
use App\Http\Controllers\Controller as BaseController;
use Log;

class MainController extends BaseController
{

    public function home() {
        return view('home', [
            'name' => 'home',
        ]);
    }

    public function error404() {
        return view('404-not-found', [
            'name' => '404',
        ]);
    }

    public function legal() {

    }

}
