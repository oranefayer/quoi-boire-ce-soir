<?php

namespace App\Http\Controllers;

use App;
use App\Question;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller as BaseController;
use Log;

class QuestionController extends BaseController
{

    public function questions() {

        $questions = Question::all();
        $answers = [];
        foreach ($questions as $currentQuestion) {
            $answersforQuestion = Question::find($currentQuestion->id)->answers()->inRandomOrder()->get();
            $answers[$currentQuestion->id] = $answersforQuestion;
        }
        return response()->json(['questions' => $questions, 'answers' => $answers]);
    }

    public function error404() {

    }

    public function legal() {

    }

}
