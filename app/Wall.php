<?php

namespace App;
use Iatstuti\Database\Support\CascadeSoftDeletes;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Wall extends Model
{

use SoftDeletes, CascadeSoftDeletes;

   use \Awobaz\Compoships\Compoships;
    //
  
    protected $guarded = ['deleted_at'];
     public function post(){
        return $this->belongsTo('App\Post')->with('comments.user')
            ->with('postcontents')
            ->with('show')
             ->with('likes')
            ->with('user')  
            ;
    }
         public function user(){
        return $this->belongsTo('App\User');
    }
         public function library(){
        return $this->belongsTo('App\Library', 'post_id') 
             ->with('show')
             ->with('history')
            ->with('user') 
           
            
        ;
    }
         public function follow(){
        return $this->belongsTo('App\Follow', 'post_id');
    } 
}
