<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tv extends Model
{
    //
  protected $guarded = [];
  protected $table = 'tvs';
        //
public function post() {
   return $this
    ->hasMany ('App\Post', 'show_id'  )
 ;
}
          public function reactions(){
        return $this->hasMany('App\Reaction');
    }
              public function reviews(){
        return $this->hasMany('App\Review');
    }
                  public function library(){
        return $this->belongsTo('App\Library');
    }
                  public function list(){
        return $this->belongsTo('App\Laist');
    }
}
