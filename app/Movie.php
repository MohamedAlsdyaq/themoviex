<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    //
    public function post() {
   return $this
    ->hasMany ('App\Post', 'show_id'  )
 ;
}
}
