<?php

namespace App;
use Auth;

use Iatstuti\Database\Support\CascadeSoftDeletes;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
class User extends Authenticatable
{use \Awobaz\Compoships\Compoships;
    use Notifiable;
use SoftDeletes, CascadeSoftDeletes;
       protected $cascadeDeletes = ['follower', 
       'followeing','posts','comments', 'likes', 'postcontents', 'wall', 'groups', 'reactions','laist'];
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

  
        public function follower()
    {
        return $this->hasMany('App\Follow', 'user1');
        # code...
    }
            public function followeing()
    {
        return $this->hasMany('App\Follow', 'user2');
        # code...
    }
       
    public function groups(){
        return $this->hasMany('App\Groups');
    }
        public function laist(){
        return $this->hasMany('App\Laist');
    }

       public function posts(){
        return $this->hasMany('App\Post');
    }
        public function comments(){
        return $this->hasMany('App\Comment');
    }

     public function review(){
        return $this->hasMany('App\Review');
    }
        public function Notification(){
        return $this->hasMany('App\Notification');
    }
    public function reactions(){
        return $this->hasMany('App\Reaction');
    }
       
}
