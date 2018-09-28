<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
class History extends Model
{
use \Awobaz\Compoships\Compoships;
    //    }
    	 public function library(){
        return $this->belongsTo('App\Library');
    }
}
