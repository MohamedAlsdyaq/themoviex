<?php

namespace App;

use Iatstuti\Database\Support\CascadeSoftDeletes;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Library extends Model
{ use \Awobaz\Compoships\Compoships;
   use SoftDeletes, CascadeSoftDeletes;
       protected $cascadeDeletes = [  'wall'];
	protected $fillable = ['user_id', 'show_id', 'rate', 'status', 'type'];
	 public function user(){
        return $this->belongsTo('App\User');
    }
 public function show() {
  return 
  $this
  ->belongsTo(Show::class,  
    ['show_id', 'type'], 
    ['show_id', 'type']
      );
    }

     	 public function history(){
        return $this->hasMany('App\History');
    }
     public function wall(){
      return $this->hasOne('App\Wall')->where('type', 'library')
        ->with('show')->with('user');;
    }
 
    //
}
