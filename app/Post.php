<?php

namespace App;
use Iatstuti\Database\Support\CascadeSoftDeletes;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasOne;
 
class Post extends Model
{
    //
       
    
use SoftDeletes, CascadeSoftDeletes;

protected $cascadeDeletes = ['comments', 'likes', 'postcontents', 'wall'];
public  $show_type  ;
protected $dates = ['deleted_at'];
protected $table = 'posts';
 
    public function comments(){
        return $this->HasMany('App\Comment')->with('likes')->with('replies');
    }

 public function user(){
      return $this->belongsTo('App\User');
    }

 public function likes(){
        return $this->hasMany('App\Like', 'post_id')
          ->where('type', 'post');
    }
    
     public function tv(){
        return $this->belongsTo('App\Show', 'show_id')
          ->where('show_type', 'tv');
    }

  public function movies(){
          return $this->belongsTo('App\Show', 'show_id')
          ->where('show_type', 'movie');

    }


   use \Awobaz\Compoships\Compoships;
public function show() {
  return 
  $this
  ->belongsTo(Show::class,  
    ['show_id', 'type'], 
    ['show_id', 'type']
      );
    }



   public function postcontents(){
      return $this->hasMany('App\Postcontent');
    }
   public function wall(){
      return $this->hasOne('App\Wall')->where('type', 'post')
                ;
    }
 

}
