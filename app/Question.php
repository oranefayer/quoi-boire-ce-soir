<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'question';


    public function answers()
    {
        return $this->hasMany('App\Answer', 'question_id');
    }

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
}


