<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Socialite;
use App\User;
use App\Social;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\RegistersUsers;


class SocialController extends Controller
{
 use AuthenticatesUsers;    


       public function redirectToProvider($service)
    {
        return Socialite::driver($service)->redirect();
    }

    public function handleProviderCallback( $provider )
    {

        $user = Socialite::driver( $provider )->user();

        $socialUser = null;

        //Check is this email present
        $userCheck = User::where('email', '=', $user->email)->first();

        $email = $user->email;

        if (!$user->email) {
            $email = 'missing' . str_random(10);
        }

        if (!empty($userCheck)) {

            $socialUser = $userCheck;

        }
        else {

            $sameSocialId = Social::where('social_id', '=', $user->id)
                ->where('provider', '=', $provider )
                ->first();
            if (empty($sameSocialId)) {

dd(  $user );
                //There is no combination of this social id and provider, so create new one
                $newSocialUser = new User;
                $newSocialUser->email   = $email;
                $newSocialUser->name = $user->name;
                $newSocialUser->password = bcrypt(str_random(16));
                $newSocialUser->token = str_random(64);
                $newSocialUser->picture = $user->avatar_original;
 $newSocialUser->header = $user->user['cover']['coverPhoto']['url'];
                $newSocialUser->save();


                $socialData = new Social;
                $socialData->social_id = $user->id;
                $socialData->provider= $provider;
                $newSocialUser->social()->save($socialData);

                // Add role

                $socialUser = $newSocialUser;

            }
            else {

                //Load this existing social user
                $socialUser = $sameSocialId->user;

            }

        }

        auth()->login($socialUser, true);

        return redirect()->action('HomeController@index');



    
}

}
