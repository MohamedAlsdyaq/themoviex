<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Favorite extends Model
{use \Awobaz\Compoships\Compoships;
    //
     use SoftDeletes;
 public function show() {
  return 
  $this
  ->belongsTo(Show::class,  
    ['show_id', 'type'], 
    ['show_id', 'type']
      );
    }

 public function user(){
        return $this->belongsTo('App\User');
    }
}
