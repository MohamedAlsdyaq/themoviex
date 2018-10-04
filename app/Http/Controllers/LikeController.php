<?php

namespace App\Http\Controllers;

use App\Like;
use Illuminate\Http\Request;
use Auth;
class LikeController extends Controller
{
 
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Like  $like
     * @return \Illuminate\Http\Response
     */
    public function LikePost($id)
    {
        //
      $user =  PostController::GetUserByPostId($id);
        if(Auth::guest())
            return false;
        $past = Like::where(['type' => 'post', 'user_id' => Auth::user()->id, 'post_id' => $id])->get();

        if($past->count() > 0)
            return false;

        if($user == Auth::user()->id)
             return false;

        $like = new Like;
        $like->user_id = Auth::user()->id;
        $like->post_id = $id;
        $like->type = 'post';
        $like->save();

 NotificationController::store($user, $like);

        return 1;
    }
        public function LikeReply($id)
    {
        //
      $user =  ReplyController::GetUserByPostId($id);
        if(Auth::guest())
            return 0;
        $past = Like::where(['type' => 'reply', 'user_id' => Auth::user()->id, 'post_id' => $id])->get();

        if($past->count() > 0)
            return false;

        if($user == Auth::user()->id)
             return false;
        $like = new Like;
        $like->user_id = Auth::user()->id;
        $like->post_id = $id;
        $like->type = 'reply';
        $like->save();

  NotificationController::store($user, $like);

        return 1;
    }

    public function LikeComment($id)
    {
        //
         $user =  CommentController::GetUserByPostId($id);
        if(Auth::guest())
            return 0;
        $past = Like::where(['type' => 'comment', 'user_id' => Auth::user()->id, 'post_id' => $id])->get();

        if($past->count() > 0)
            return false;

        if($user == Auth::user()->id)
             return false;
        $like = new Like;
        $like->user_id = Auth::user()->id;
        $like->post_id = $id;
        $like->type = 'comment';
        $like->save();
      NotificationController::store($user, $like);
        return 1;
    }

     public function LikeReaction($id)
    {
         $user =  PostController::GetUserByPostId($id);
        //
        if(Auth::guest())
            return 0;
        $like = new Like;
        $like->user_id = Auth::user()->id;
        $like->post_id = $id;
         $like->type = 'reaction';
        $like->save();
       NotificationController::store($user, $like);
       return 1;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Like  $like
     * @return \Illuminate\Http\Response
     */
 public function UnlikePost($id)
    {
        //
 Like::where([
    'user_id' => Auth::user()->id,
     'post_id' => $id ,
     'type' => 'post'
    ])
                ->delete();

        return 1;
    }
 public function UnlikeComment($id)
    {
        //
 Like::where([
    'user_id' => Auth::user()->id,
     'post_id' => $id ,
     'type' => 'comment'
    ])
                ->delete();

        return 1;
    }
 public function UnlikeReply($id)
    {
        //
 Like::where([
    'user_id' => Auth::user()->id,
     'post_id' => $id ,
     'type' => 'reply'
    ])
                ->delete();

        return 1;
    }
}
