<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Library as Library;
use Illuminate\Http\Request;
use Auth;
class LibraryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function DontRecord($id){
        $id = Library::where( 'show_id' , $id)
        ->select('id')
        ->first();
        $id = $id->id;
        \App\Wall::where(['type' => 'library', 'post_id' => $id])
                ->update(['record' => 'false']);
    }
    public function EntriesJson(){
if(Auth::guest())
    return [[0], [0]];

        $d1 = Library::where(['user_id'=> Auth::user()->id, 'type' => 'tv'])->pluck('show_id')->toJson();
      
        $d2 = Library::where(['user_id'=> Auth::user()->id, 'type' => 'movie'])->pluck('show_id')->toJson(); 
        return [$d1 , $d2];
    }
 
    public static function LibCount($id)
    {
        return Library::where('user_id', Auth::user()->id)
        ->count();
    }

    public static function CurrentTv(){
        return Library::where(['user_id' => Auth::user()->id, 'type' =>'tv', 'status'=> 'watching'])->with('show')->get();
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function AddMovie(Request $request, $id)
    {

         
$current = Library::where([
     'show_id' => $id,
 'user_id' => Auth::user()->id,
 'type' => 'movie'
    ])->first();

    $state = 'new';
 if(!isset($current->ep_count ) ) {
      $state = 'old';
 
 $current = 0;
 }   
 
$id = (int) $id;        
$epsidoes =  MovieController::add(  $id);
 
 
   $lib_id =    Library::updateOrCreate([
     'show_id' => $id,
     'user_id' => Auth::user()->id,
     'type'    => 'movie'
       ], [
       'user_id' => Auth::user()->id,
       'show_id' => $id,
       'status' => $request['status'],
       'rate' => $request['score'],
       'type' => 'movie',
       
       
    ]);
   HistoryController::add(
    $lib_id,
     $request,
      $current);
  
}

     public function AddTv(Request $request, $id)
    {
        $ep_count = 0;

$current = Library::where([
     'show_id' => $id,
 'user_id' => Auth::user()->id,
 'type' => 'tv'
    ])->first();

    $state = 'new';
 if(!isset($current->ep_count ) ) {
      $state = 'old';
 $ep_count = 0;
 $current = 0;
 }   
 else{
    $ep_count = $current->ep_count;
 }
$id = (int) $id;        
$epsidoes =  TvController::add(  $id);
 
if($request['status'] == 'completed')
 $ep_count = (int) $epsidoes;

   $lib_id =    Library::updateOrCreate([
     'show_id' => $id,
     'user_id' => Auth::user()->id,
     'type'    => 'tv'
       ], [
       'user_id' => Auth::user()->id,
       'show_id' => $id,
       'status' => $request['status'],
       'rate' => $request['score'],
       'type' => 'tv',
       'ep_count' => $ep_count
       
    ]);
   HistoryController::add(
    $lib_id,
     $request,
      $current);
  
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function UpdateMovie(Request $request)
    {
           $current = Library::where([
     'id' => $request['id'],
 'user_id' => Auth::user()->id,
    ])->first();


     $entry =   Library::find($request['id']);

     $entry->status = $request['status'];
     $entry->started_at = $request['started_at'];
     $entry->finished_at = $request['finished_at'];
 
     $entry->note = $request['note'];

     $entry->save();
        HistoryController::add(
    $entry,
     $request,
      $current);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function UpdateTv(Request $request)
    {
       $current = Library::where([
     'id' => $request['id'],
 'user_id' => Auth::user()->id,
    ])->first();
       $finaly = \App\Show::where(['type' => 'tv', 'show_id' => $current->show_id])
       ->first()->ep_count;
$progress = $request['progress'];
if($request['status'] == 'completed')
$progress = $finaly;
     $entry =   Library::find($request['id']);
 
     $entry->status = $request['status'];
     $entry->started_at = $request['started_at'];
     $entry->finished_at = $request['finished_at'];
 
     $entry->ep_count = $progress;
     $entry->note = $request['note'];

     $entry->save();

   HistoryController::add(
    $entry,
     $request,
      $current);

    }

        public function DeleteTv(Request $request)
    {
        $entry = Library::find($request['id']);
        if($entry['user_id'] == Auth::user()->id){
            
             Library::findOrFail($request['id'])
            ->delete();
        }
    }


        public function DeleteMovie(Request $request)
    {
        $entry = Library::find($request['id']);
        if($entry['user_id'] == Auth::user()->id){

             Library::findOrFail($request['id'])
            ->delete();
        }
    }
 
    public function CheckSpoiler(Request $request, $id)
    {
        if(Auth::guest())
            return false;

        $ep = Library::select('ep_count')->where('user_id', Auth::user()->id)
                ->where('show_id', $id)
                ->first()->ep_count;

               $e = (int) $request['ep'];
            //   return ($e . $ep);
        if($ep < $e )
            return 1;

        return 0;
    }

        public function GetLibraryMovies(Request $request, $id, $sort='created_at', $status=['watching', 'dropped', 'completed']){
   
         
           if(isset($request['status']) )
            $status = [$request['status'] ];
  if(isset($request['sort']) ){
            $sort = $request['sort'];
        }
        if( $request['sort']  == 'undefined')
            $sort = 'created_at';
//return $sort;
       // if($sort == 'shows.show_name'){
          $q = Library::join('shows', function($q){
            $q->on('libraries.show_id', '=', 'shows.show_id')
            ->where('shows.type', '=', 'movie')
            ->orderBy('shows.show_name', 'DESC');
          })
        ->select('libraries.*' )
        ->where(['libraries.type' =>  'movie','libraries.user_id' => $id])
         ->where('libraries.type', 'movie')
         ->with('show')
         //->select('libraries.*',   'shows.show_name', 'shows.show_id as show_id', 'shows.show_pic', 'shows.ep_count as show_ep_count', 'shows.show_popularity', 'shows.show_bio', 'shows.show_date', 'shows.show_rating' )
        ->orderBy($sort, 'ASC')
         ->whereIn('status', $status)
         
        ->paginate(15);
    
    return $q;
    }
        public function GetLibraryTv(Request $request, $id, $sort='created_at', $status=['watching', 'dropped', 'completed']){
           
           if(isset($request['status']) )
            $status = [$request['status'] ];
  if(isset($request['sort']) ){
            $sort = $request['sort'];
        }
        if( $request['sort']  == 'undefined')
            $sort = 'created_at';
//return $sort;
       // if($sort == 'shows.show_name'){
          $q = Library::join('shows', function($q){
            $q->on('libraries.show_id', '=', 'shows.show_id')
            ->where('shows.type', '=', 'tv')
            ->orderBy('shows.show_name', 'DESC');
          })
        ->select('libraries.*' )
        ->where(['libraries.type' =>  'tv','libraries.user_id' => $id])
         ->where('libraries.type', 'tv')
         ->with('show')
         //->select('libraries.*',   'shows.show_name', 'shows.show_id as show_id', 'shows.show_pic', 'shows.ep_count as show_ep_count', 'shows.show_popularity', 'shows.show_bio', 'shows.show_date', 'shows.show_rating' )
        ->orderBy($sort, 'ASC')
         ->whereIn('status', $status)
         
        ->paginate(15);
    
    return $q;
    }
   
     public function searchLibrarytv(Request $request, $id ){
        $query = $request->input('q') ;
  return Library::join('shows', function($q) use ($query) {
            $q->on('libraries.show_id', '=', 'shows.show_id')
            ->where('shows.type', '=', 'tv')
            ->where('shows.show_name', 'LIKE', "%".$query."%")
            ->orderBy('shows.show_name', 'DESC');
          })
        ->select('libraries.*' )
        ->where(['libraries.type' =>  'tv','libraries.user_id' => $id])
         ->where('libraries.type', 'tv')
         ->with('show')
         //->select('libraries.*',   'shows.show_name', 'shows.show_id as show_id', 'shows.show_pic', 'shows.ep_count as show_ep_count', 'shows.show_popularity', 'shows.show_bio', 'shows.show_date', 'shows.show_rating' )
         
         
        ->paginate(15);
    }
         public function searchLibrary(Request $request, $id ){
        $query = $request->input('q') ;
  return Library::join('shows', function($q) use ($query) {
            $q->on('libraries.show_id', '=', 'shows.show_id')
            ->where('shows.type', '=', 'movie')
            ->where('shows.show_name', 'LIKE', "%".$query."%")
            ->orderBy('shows.show_name', 'DESC');
          })
        ->select('libraries.*' )
        ->where(['libraries.type' =>  'movie','libraries.user_id' => $id])
         ->where('libraries.type', 'movie')
         ->with('show')
         //->select('libraries.*',   'shows.show_name', 'shows.show_id as show_id', 'shows.show_pic', 'shows.ep_count as show_ep_count', 'shows.show_popularity', 'shows.show_bio', 'shows.show_date', 'shows.show_rating' )
         
         
        ->paginate(15);
    }
       

            public static function GetUserEntries($id){
    return Library::where('user_id', $id)
         ->with('show')
         ->with('history')
        ->orderBy('updated_at', 'desc')
        ->get();
    }
 public function QuickUpdate(Request $request){
   $current = Library::whereId($request['id'])
                ->first();
        // $current = Library::whereId($request['id'])
       // ->increment('ep_count');
    $data = Library::whereId($request['id'])->first();
     
 HistoryController::
   add( $data, 
    ['status' => 'watching', 'score' => $current->rate]
    , $current,
     $current->ep_count, 3);
        $current->increment('ep_count');

 }
}
