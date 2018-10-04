<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use Iatstuti\Database\Support\CascadeSoftDeletes;

class Reaction extends Model
{
  use \Awobaz\Compoships\Compoships;
        //
 use SoftDeletes, CascadeSoftDeletes;
 protected $cascadeDeletes = ['likes'];
 public function show() {
  return 
  $this
  ->belongsTo(Show::class,  
    ['show_id', 'type'], 
    ['show_id', 'type']
      );
    }
        //
          public function user(){
        return $this->belongsTo('App\User');
    }
              public function likes(){
        return $this->hasMany('App\Like', 'post_id')
          ->where('type', 'reaction');
    }
                  public function comments(){
        return $this->belongsTo('App\Comment');
    }
 
}
