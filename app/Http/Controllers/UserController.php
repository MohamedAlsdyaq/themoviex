<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
 use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image as Image;
use App\Post;
use App\User;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    //
        public static function getId($name)
    {
        
        return User::where('name', $name)->first()->id ;
    }
    
    public static function GetUsersById($ids){
        return User::whereIn('id', $ids)
            ->get();
    }
    public function Settings(){
        $blocked = BlockController::BlockedList( );
        $blocked = User::whereIn('id', $blocked)->get();

         return view('settings')->with('blocks', $blocked);
    }
    public function index($id)
    {

    	/*$postcount = PostController::PostCount($id);
    	$librariescount = LibraryController::LibCount($id);
    	$groupscount = GroupentriesController::GroupCount($id);
    	$listcount = LaistController::listcount($id);
    	$followingcount = FollowController::followingcount($id);
    	$followercount = FollowController::followercount($id);
    	$reactioncount = ReactionController::reactioncount($id);*/
        $favs = FavoriteController::index($id);
    	$user = User::whereId($id)->first() ;
    	$links=\App\Link::where('user_id', $id)->get();	
        $is_friended = false;
        if(Auth::check())	
    	$is_friended = \App\Follow::where(['user1' => Auth::user()->id, 'user2' => $id])->first();

        if( $is_friended )
            $is_friended = true;
        else
            $is_friended = false;


    	return View('user')->with([
    		'user' => $user,
    		 'favs' => $favs,
             'links' => $links,
             'section' => 'false',
             'section_name' => 'none',
             'is_friended' => $is_friended
    		]);
    }
    public function LoadSection(Request $request,$id){
        $user = User::whereId($id)->first() ;
        if($request['section'] !== 'activity'){
         return View('user_views.'.$request['section'])->with([
            'user' => $user,
            'section' => 'true',
            'section_name' =>$request['section']
            ])->render();
        }

      $has_comment = \App\Comment::where('user_id', $id)->count();
      $has_follow = \App\Follow::where('user1', $id)->count();
      $has_like = \App\Like::where('user_id', $id)->count();
      $has_rate = \App\Library::where('user_id', $id)->count();
   



        $favs = FavoriteController::index($id);
        $links=\App\Link::where('user_id', $id)->get(); 
        $is_friended = false;
        if(Auth::check())   
        $is_friended = \App\Follow::where(['user1' => Auth::user()->id, 'user2' => $id])->first();

        if($is_friended = false && $is_friended->count())
            $is_friended = true;
        else
            $is_friended = false;


      return View('user_views.'.$request['section'])->with([
            'user' => $user,
             'favs' => $favs,
             'links' => $links,
             'is_friended' => $is_friended,
             'section' => 'true',
             'section_name' =>$request['section'],
             'has_comments' => $has_comment,
             'has_rate'    => $has_rate,
             'has_like'    => $has_like,
             'has_follow'  => $has_follow
            ])->render();
    }
    public function destroy(){

            //    ItemController::DeleteAll(Auth::user()->id);

        PostController::DeleteAll(Auth::user()->id);

        ReactionController::DeleteAll(Auth::user()->id);

        LaistController::DeleteAll(Auth::user()->id);

        CommentController::DeleteAll(Auth::user()->id);

         User::findOrFail(Auth::user()->id)
            ->delete();
    }

     public function UpdatePicture(Request $request)
    {
        $now = new \DateTime();
        //
      if(!File::exists(public_path('users/'.Auth::user()->id) )) {
            File::makeDirectory(public_path('users/'.Auth::user()->id),0777,true);
            }

          if($request['image']){
            $path = '/users/'.Auth::user()->id;
          $filename = $now->getTimestamp().'.jpg';
       

            Image::make($request['image'])->fit(200, 200)->save(public_path($path. '/' . $filename));
 



            $user =  \App\User::find(Auth::user()->id);
            $user->picture = $path.'/'.$filename;
            $user->save();
     
        }

       
       
    }

    public function UpdateHeader(Request $request){
           $now = new \DateTime();
        //
      if(!File::exists(public_path('users/'.Auth::user()->id) )) {
            File::makeDirectory(public_path('users/'.Auth::user()->id),0777,true);
            }
           if($request['header']){
            $path = '/users/'.Auth::user()->id;
          $filename = $now->getTimestamp().'.jpg';
       

            Image::make($request['header'])->fit(600, 200)->save(public_path($path. '/' . $filename));
 



            $user =  \App\User::find(Auth::user()->id);
            $user->header = $path.'/'.$filename;
            $user->save();
     
        }
    }

 
     public function UpdateProfile(Request $request)
    {
        //

     $validator = Validator::make($request->all(), [
           'uname' => 'string|max:15',
            'email' => 'string|email|max:255|unique:users,email,'.Auth::user()->id
        ]);

        if ($validator->fails()) {
            return $validator 
                        ->withErrors($validator)
                        ->withInput();
        }

    
          

         User::where('id', Auth::user()->id)->update([
            'email' => htmlentities($request['email'], ENT_QUOTES, 'UTF-8', false) ,  
            'name' => htmlentities($request['uname'], ENT_QUOTES, 'UTF-8', false)   
        ]);
    }

      public function UpdateInfo(Request $request)
    {
        //       
         User::whereId( Auth::user()->id)->update([
            'location' => $request['location'],
              'bio' => $request['bio'],
            'birthday' =>$request['birthday']   
        ]);
    }

public function rules()
{
    return [
         'uname' => 'bail|string|max:255',
            'email' => 'bail|string|email|max:255|unique:users',
    ];
}
public function messages()
{
    return [
        'title.required' => 'A title is required',
        'body.required'  => 'A message is required',
    ];
}
public function CreateLink(Request $request)
{

    \App\Link::updateOrCreate([
'user_id' => Auth::user()->id, 'vendor' => $request['vendor']
],[
'user_id' => Auth::user()->id, 'vendor' => $request['vendor'], 'link' => $request['link']
]);
}

 public function delete_parent(Request $request){
    $check =   User::select('user_id')->whereId($request['id'])->first()->id;

     if($check != Auth::user()->id)
return 0;

$post =  User::find($request['id']);
$post->delete(); 
    }

}
