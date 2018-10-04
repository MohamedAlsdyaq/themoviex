<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
 
class Show extends Model
{
    use \Awobaz\Compoships\Compoships;
    
    protected $guarded = [];
 
	    public function library(){
	  return $this->hasMany('App\Library', 'show_id')
	  			 ; 
	}


public function post() {
   return
    $this 
    ->HasMany ('Post', 
     ['show_type', 'show_id'], 
     ['show_id', 'show_id'] )
 ;

}public function favorite() {
   return
    $this 
    ->HasMany ('Post', 
     ['show_type', 'show_id'], 
     ['show_id', 'show_id'] )
 ;
}
 
			    public function listentry(){
	  return $this->hasOne('App\Listentries');
	}
		    public function reaction(){
	  return $this->hasOne('App\Reaction');
	}
		    public function list(){
	  return $this->belongsTo('App\Laist', 'show_id');
	}
}
