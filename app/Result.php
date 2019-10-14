<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Result extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'result';

    public function user()
    {
        return $this->hasOne('App\User', 'user_id');
    }

    public function drink()
    {
        return $this->hasOne('App\Drinks', 'drinks_id');
    }

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
}
