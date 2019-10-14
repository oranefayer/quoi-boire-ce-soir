<?php

namespace App\Http\Controllers;

use App;
use App\Category;
use App\Drink;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller as BaseController;
use Log;

class CategoryController extends BaseController
{

    public function getCategory(Request $request) {

        $category = Category::where('id', $request->input('id'))->first();
        if ($request->input('pleaseTheBoss') === true) {
            $possibleDrinks = Category::find($category->id)->drinks()->findOrFail('sell_fast', 1)->inRandomOrder()->get();
            return response()->json(['result' => $category, 'possibleDrink' => $possibleDrinks[0]]);
        }
        $possibleDrinks = Category::find($category->id)->drinks()->inRandomOrder()->get();
        return response()->json(['result' => $category, 'possibleDrink' => $possibleDrinks[0]]);
    }

}
