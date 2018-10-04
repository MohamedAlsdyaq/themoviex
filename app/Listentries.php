<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Listentries extends Model
{
    //
     use SoftDeletes;
     protected $guarded = ['deleted_at'];
    	 public function list(){
        return $this->belongsTo('App\Laist');
    }
    	    public function shows(){
	  return $this->belongsTo('App\Show', 'show_id');
	}

}
