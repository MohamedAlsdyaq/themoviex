<?php

namespace App\Http\Controllers;
use Auth;
use App\History;
use Illuminate\Http\Request;
use App\Wall;
class HistoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public static function add($id, $request, $current, $type = 0)
    {
 
            $type = 1;
  if($request['status'] == 'completed')
            $type = 4;
    if(isset($current->ep_count ) ) {

        if($current->rate != $request['score'])
            $type = 2;
        if($current->status != $request['status'])
            $type = 4;
        if( $current->ep_count == $id->ep_count)
            $type = 3;
        
      }

        $history = new History;
        $history->library_id = $id->id;
        $history->user_id = Auth::user()->id;
        $history->status = $request['status'];
        $history->rate = $request['score'];
        $history->type  = $type;
        $history->save();


   Wall::updateOrCreate([
'user_id' => Auth::user()->id,
 'post_id' => $id->id,
  'type'    => 'library'
       ], [
        'user_id' => Auth::user()->id,      
       'post_id' => $id->id,
        'type'    => 'library'   
    ]);
    


        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\History  $history
     * @return \Illuminate\Http\Response
     */
    public function show(History $history)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\History  $history
     * @return \Illuminate\Http\Response
     */
    public function edit(History $history)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\History  $history
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, History $history)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\History  $history
     * @return \Illuminate\Http\Response
     */
    public function destroy(History $history)
    {
        //
    }
}
