<?php

namespace App\Http\Controllers;

use App\Favorite;
use Illuminate\Http\Request;
use Auth;

class FavoriteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public static function index($id)
    {
     return Favorite::where('user_id', $id)
            ->with('show')
        ->get();
    }
    public function addTv(Request $request){
        $fav = new Favorite;
        $fav->user_id = Auth::user()->id;
        $fav->show_id = $request['id'];
        $fav->type = 1;
        $fav->save();
        TvController::add($request['id']);
    }
        public function addMovie(Request $request){
        MovieController::add($request['id']);
        $fav = new Favorite;
        $fav->user_id = Auth::user()->id;
        $fav->show_id = $request['id'];
        $fav->type = 0;
        $fav->save();
    }
    public function delete( $id)
    {
         Favorite::findOrFail($id)
            ->delete();
    }
}
