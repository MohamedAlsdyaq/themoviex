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
    public function EntriesJson(){
if(Auth::guest())
    return [0, 0];

        $d1 = Library::where(['user_id'=> Auth::user()->id, 'type' => 'tv'])->pluck('show_id')->toJson();
      
        $d2 = Library::where(['user_id'=> Auth::user()->id, 'type' => 'movie'])->pluck('show_id')->toJson(); 
        return [$d1 , $d2];
    }
    public function DontRecord($id){
        if(Auth::guest())
            return false;

         $entry =   Library::where(['show_id' => $id, 'user_id' => Auth::user()->id]);  
     $entry->type = 'tv'; 
     $entry->save();
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

         MovieController::add($request, $id);

      $id =  Library::updateOrCreate([
 'user_id' => Auth::user()->id,
 'show_id' => $request['movie_id']
       ], [
      
       'user_id' => Auth::user()->id,
       'show_id' => $request['movie_id'],
       'status' => $request['status'],
       'rate' => $request['score'],
       'type' => 0
       
    ]);
      
  HistoryController::add( $id->id, $request);
  
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
 if(isset($current->ep_count ) ) {
      $state = 'old';
 $ep_count = 0;
 $current = 0;
 
 }   
$id = (int) $id;        
$epsidoes =  TvController::add(  $id);
 
if($request['status'] == 'completed')
 $ep_count = (int) $epsidoes;

   $lib_id =    Library::updateOrCreate([
     'show_id' => $id,
     'user_id' => Auth::user()->id,
       ], [
       'user_id' => Auth::user()->id,
       'show_id' => $id,
       'status' => $request['status'],
       'rate' => 0,
       'type' => 'tv',
       'ep_count' => $ep_count
       
    ]);

  HistoryController::add( $lib_id, $request, $current);
   
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function UpdateMovie(Request $request)
    {
    
     $entry =   Library::find($request['id']);

     $entry->status = $request['status'];
     $entry->started_at = $request['started_at'];
     $entry->finished_at = $request['finished_at'];
 
     $entry->note = $request['note'];

     $entry->save();
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
     'show_id' => $id,
 'user_id' => Auth::user()->id,
    ])->first();

     $entry =   Library::find($request['id']);
 
     $entry->status = $request['status'];
     $entry->started_at = $request['started_at'];
     $entry->finished_at = $request['finished_at'];
 
     $entry->ep_count = $request['progress'];
     $entry->note = $request['note'];

     $entry->save();

      HistoryController::add( $entry, $request, $ep_count, $current);

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
        if($ep < $request['ep'])
            return 1;

        return 0;
    }

    public function GetLibraryMovies($id){
        return Library::where(['type' =>  'movie','user_id' =>  $id])
        ->orderBy('updated_at', 'desc')
          ->with('show')
        ->paginate(15);
    }
        public function GetLibraryTv(Request $request, $id, $sort='created_at', $status=['watching', 'dropped', 'completed']){
           
           if($request['status'])
            $status = [$request['status'] ];
          if(isset($request['sort']))
            $sort = $request['sort'];
 
        return Library::where(['type' =>  'tv','user_id' => $id])
            
         ->join('shows', 'shows.show_id', '=', 'libraries.show_id')
         ->select('libraries.*',   'shows.show_name', 'shows.show_id as show_id', 'shows.show_pic', 'shows.ep_count as show_ep_count', 'shows.show_popularity', 'shows.show_bio', 'shows.show_date', 'shows.show_rating' )
         ->where('shows.show_type', 'tv')
        ->orderBy($sort, 'ASC')
         ->whereIn('status', $status)
        ->orderBy('shows.show_name', 'ASC')

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

         Library::whereId($request['id'])
            ->increment('ep_count');
        $data = Library::find($request['id'])->first();
         //    HistoryController::add( $request['id'], $data, 'ep_seen');
 }
}
