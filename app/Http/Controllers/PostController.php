<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use App\Http\Requests;
use Auth;
use App\Follow;
use Illuminate\Support\Facades\DB;
use App\Wall;
class PostController extends Controller
{
 
 protected $blocked_users  ;
 
 
     public function __construct()
    {
        $this->blocked_users = BlockController::BlockedList();
        $this->blocked_users = [$this->blocked_users];
    }
public function Dedicated($id){

      return View('post')->with([
        'id' => $id
      ]);
}

public function post($id){
    return  Post::with('user')
            ->whereId($id)

            ->with('likes')
            ->with('comments.user')
            
            ->with('postcontents')
             ->orderBy('updated_at', 'desc')
              
          ->paginate(10); 

}
public function GroupPosts($id){
  return Post::with('user')
            ->with('likes')
            ->with('comments.user')
            ->with('postcontents')
            ->with('show')
             ->orderBy('updated_at', 'desc')
             ->where('group_id', $id)
          ->paginate(10); 
}

 public static function GetUserByPostId($id){

  return Post::select('user_id')->whereId($id)->first()->user_id;


 }
  public function globals(){

      return Post::with('likes')
            ->with('comments.user')
            ->with('postcontents')
            ->with('show')
             ->whereIn('user_id',  $this->blocked_users , 'and', true)
            ->with('user')
             ->orderBy('updated_at', 'desc')
          ->paginate(10); 
  }
    public function following(){
      $ids =  Follow::where('user1', Auth::user()->id)
       // ->where('active', 1)
        ->pluck('user2');
      return Post::whereIn('user_id', $ids)
            ->with('likes')
            ->with('comments.user')
            ->with('postcontents')
            ->with('show')
            ->with('user')
             ->orderBy('updated_at', 'desc')
          ->paginate(10); 
  }
    public function movies(){
 return Post::where('type', 'movie')

              ->with('user')
            ->with('likes')
            ->with('comments.user')
            ->with('postcontents')
            ->with('show')

             ->orderBy('updated_at', 'desc')
          ->paginate(10); 
  }
    public function tv(){
      return Post::where('type', 'tv')

              ->with('user')
            ->with('likes')
            ->with('comments.user')
            ->with('postcontents')
            ->with('show')
             ->orderBy('updated_at', 'desc')
          ->paginate(10); 
  }
    public function report(Request $request)
    {
        //
    
        DB::table('reports')->insert(
      [
        'post_id' => $request['id'],
        'comment' => $request['comment'],
        'type'    => $request['type'],
        'reason' => $request['reason'] 
        ]
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
      $show_type = null;
      $group_id = null;
    if($request['group_id'] !== null)
          $group_id = $request['group_id'];
     if($request['movie_id'] !== null){
          if($request['show_type'] == 'tv'){
            TvController::add($request['movie_id']);
            $show_type = 'tv';
          }

          if($request['show_type'] == 'movie'){
             $show_type = 'movie';
            MovieController::add($request['movie_id']);
          }
        }
        $post = new Post;
        $post->user_id = Auth::user()->id;
        $post->show_id = $request['movie_id'];
        $post->type = $request['show_type'];
        $post->content = htmlentities($request['post'], ENT_QUOTES, 'UTF-8', false) ;
        $post->group_id = $group_id;
        $post->spoiler = $request['spoiler'];
        $post->ep_id = $request['ep_id'];
        $post->save();

       $wall = new \App\Wall;
       $wall->post_id = $post->id;
       $wall->type = 'post';
       $wall->user_id = Auth::user()->id;
       $wall->save();
       
 if($request['imgs']){
if(count( $request['imgs'] ) != null );
        PostcontentController::create($request['imgs'], $post->id);
    }
  }

    public function GetPostsForShow($id){
        return Post::where('show_id', $id)
           ->with('comments.user')
            ->with('postcontents')
            ->with('show')
            ->with('likes')
            ->with('user')
             ->orderBy('updated_at', 'desc')
          ->paginate(10); 
             
    }
     public function GetPostsForUser($id){

       return Wall::where('user_id', $id)
            ->with('user')
            ->with('library')
            ->with('follow')
            ->with('post')    
            ->where('record', 'true')     
             ->orderBy('updated_at', 'desc')
         ->paginate(15);
    }
    public static function PostCount($id){
        return Post::where('user_id', Auth::user()->id)
        ->count();
    }

  public static function DeleteAll($id){

        Post::where('user_id', $id)
                ->delete();
    }
    public function delete_parent(Request $request){
    $check =   Post::select('user_id')->whereId($request['id'])->first()->user_id;

     if($check != Auth::user()->id)
return 0;

$post =  Post::find($request['id']);
$post->delete(); 
    }
}
