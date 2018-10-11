  <!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" type="text/css" href="/css/post.css">
 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Moviex') }}</title>
       <!-- Scripts -->
   <link rel="stylesheet" type="text/css" href="/css/movie.css">    
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
      <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" type="text/css">
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <!-- Styles -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/css/home.css">
    <link rel="stylesheet" type="text/css" href="/css/profile.css">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="/css/bootstrap.min.js">
   
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/chang_section.js"></script>
        <script src="/js/follow.js"></script>
    <script src="/js/basic.js"></script>
     <script src="/js/group_controll.js"></script>
        <script src="/js/prover.js"></script>
<script src="https://unpkg.com/infinite-scroll@3/dist/infinite-scroll.pkgd.js"></script>
    <script src="/js/guest.js"></script>
       <script src="/js/upload.js"></script>
              <script src="/js/post_anchor.js"></script>
        
                 <link rel="stylesheet" href="/css/ajax-bootstrap-select.min.css">
  <script src="/js/ajax-bootstrap-select.min.js"></script>
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js "></script>
 <link href="https://cdnjs.cloudflare.com/ajax/libs/lity/2.2.2/lity.min.css" rel="stylesheet">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/lity/2.2.2/lity.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/images-grid.css">
<script type="text/javascript" src="/js/images-grid.js"></script>
  <script src='https://ksylvest.github.io/jquery-growl/javascripts/jquery.growl.js' type='text/javascript'></script>
  <link href="https://ksylvest.github.io/jquery-growl/stylesheets/jquery.growl.css" rel="stylesheet" type="text/css">
      <style>
    .fa-heart{
      color:  red;
    }
    html{
      min-width: 1299px;
    }
    .heart{
      cursor: pointer;
    }
 .sticky {
   position: -webkit-sticky; /* Safari */
    position: sticky;
    top: 9px;
  
 }
#searc_poster_content{
    z-index: 5; 
    background-repeat: no-repeat !important;
    background-position: 70% 0% !important;
    transition: .5s ease;
    background-size: cover !important;
min-height: 231px;
  min-width: 140px;
  max-width: 160px;
        border-radius: 3px;
}
  #searc_poster_content:after{
  display: none;
  vertical-align: bottom;
  content: '  ';
  text-align: center;
  color: white;
min-height: 231px;
  min-width: 140px;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.5);
         
    
}
#searc_poster_content:hover .bottom{
  display: block;
}

#searc_poster_content:hover:after{
  display: block;
}
. .media-left{
  display: block !important ; 
}
.search_poster{
 
  position: relative;
  float:left;
  text-align: center;
   font-weight: normal;
     min-width: 175px;
     margin-top: 60px;
     margin-left: 0px;
}


.search-container{
  width: 100%;
  margin-left: -35px !important ;
  margin-top:  -30px !important;
  display: block;
 position: relative;
margin-bottom: 30px;

}
 
#color_black{
  color: black !important;
}
.bottom{
  display: none;
  bottom: 40px;
  margin-left: 15px;
  position: absolute;
}
input#search-bar::-webkit-input-placeholder{
      transition: opacity 0.45s ease; 
      opacity: 0;
     }
input#search-bar:-moz-placeholder {
      transition: opacity 0.45s ease; 
      opacity: 0;
     }
 
input#search-bar:-ms-placeholder {
     transition: opacity 0.45s ease; 
     opacity: 0;
     }    
input#search-bar{
  margin: 0 auto;
  width: 105%;

  height: 60px;
  padding: 0 20px;
  font-size: 1rem;
  border: 1px solid #D0CFCE;
  outline: none;
}
.search-icon{
  position: relative;
  float: right;
  width: 75px;
  height: 75px;
  top: -62px;
  
}


.ellipsis{

   overflow: hidden;
    text-overflow: ellipsis; 
     white-space: nowrap; 
     width: 160px; 
}
.ellipsis > a{
 
    color: #2A364C;
  font-size: 1.2em;
   
  text-decoration: none;
}
h6 {
    font-weight: bold !important;
 
}
.ellipsis > a:hover{
   
    color: rgb(140,180,255);
  
}
    .popover > .arrow{
      border-top-color: #7f8c8d !important; 
      top: 10px !important; 
      right:-20px !important; 
          -webkit-transform: rotate(-90deg) !important;
           
    -moz-transform: rotate(-90deg) !important;
    -o-transform: rotate(-90deg) !important;
    -ms-transform: rotate(-90deg) !important;
    transform: rotate(-90deg) !important;

    }
 .fade{
 opacity: 1 !important;
 }
 .popover .popover-content {

overflow: auto; }
 .popover .fa {

opacity: 0.5; }
 .popover{
  background-color: #7f8c8d;
  padding: 1%;
  color: white;
  font-weight: bold;
  
 }
 .no_more{
  margin-top: 100px;

 }
 .popover-body{
   overflow: hidden;
    text-overflow: ellipsis; 
     
     max-height: 150px; 
  
 }
 .popover-body:before {
    content:'';
    width:100%;
    height:100%;    
    position:absolute;
    left:0;
    top:0;
    background:linear-gradient(transparent 170px, #7f8c8d);
}
 .popover-header > span{
  color: #d3d3d3;
 
 }
  .popover-header > i{
  color: #d3d3d3;
  float: right
 }
 .nav-avatar{
  border: 1.5px solid rgb(204, 204, 204);
margin-top: 7;
margin-left: 20px
 }
body {
   
  background: #f7f7f7;
  min-height: 520px;
}
        .w3-modal{
          background-color: rgba(0,0,0,0.9); height: 100% margin-bottom:30px;
        }
        .slider{
          font-weight: normal !important;
        }
.bordered_btn{
  float: right;
  cursor: pointer;
  border-radius: 2px;
  margin-right: 5px;
  border: 1px grey solid;
  color: grey;
  padding : 0%;
  width: 30px;
  height : 20px;
  text-align: center;
  font-size: 13px;
}
.bordered_btn:hover{
  border: 1px #83b6db solid;
  color: white;
}
.bordered_btn>a{
  text-decoration: none;
  color: black;
}
.navbar-default .navbar-nav > li > a {
  color: #dadede !important;
  font-weight: bold;
  
}
#search_container{
  width: 400px;
}
 
.navbar-default .navbar-nav > .open > a, .navbar-default .navbar-nav > .open > a:focus, .navbar-default .navbar-nav > .open > a:hover, .navbar-default .navbar-nav > li > a:hover {
 
    color: #f6f5f5 !important;
  
}
body{
  padding-top:65px;
  font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif !important;
min-width: 1200px !important;
  font-weight: 400 !important;
  src: url("https://applesocial.s3.amazonaws.com/assets/styles/fonts/sanfrancisco/sanfranciscodisplay-regular-webfont.woff")  !important;
font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif;
}
h1{
  font-family: Asap,sans-serif;
  font-size: 15px;
}
 .bg-dark{color: white !important; transition: .5s ease;
  min-height: 50px; 
  border-radius: 0px !important; background-color: #667273; border: #667273 !important; color: white !important; position: fixed; z-index: 1000 !important;   width: 100%;
}
hr{
  margin-top: 30px;
}

    </style>
    <link rel="icon"   href="https://image.ibb.co/g3qOUU/Untitled.png">
</head>

<body>
 

<div style="display: none; visibility: hidden;" id="detirmine_height"> </div>

@if(Auth::check())
<input type="hidden" value="{{Auth::user()->id}}" id="my_id">
@endif
   <div id="">

  <header style="padding-left:50px; margin-top: -65px" class="bg-dark nav-header">
 <ul class="main-nav">
        <li> <a href="/" ><img style="width: auto; margin: 12px; height: 25px;" src="https://image.ibb.co/g03ow9/LO.png"> </a></li>
       <li class="dropdown">   
         <a class="list-item-anchor " href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
            
          Browse <span class="caret"></span>
        </a>

        <ul class="dropdown-menu" role="menu">
          <li>
             <a href="/search/movies">
                Explore Movies
                </a>

            </li>  
            
              <li>
             <a href="/search/tv">
                Explore TV Series
                </a>

            </li>  
            
            
            
        </ul>
      </li>

          <li>     <a class="list-item-anchor " href="/group"  >
          Groups 
        </a></li>
          <li> <a class="list-item-anchor " href="/list"  >
      Lists 
    </a></li>
          

          <li>
               <div class="header-item  " id="search_container" >
                 <div>
                                  <!-- Default panel contents -->
                  <div class=""> 
                      <a>      
                                    <form id="nav-search" action="/search" method="get" role="search">
                                  <div class="search">

                                    <input id="searchText" onkeyup="basic_search('autolist', 'searchText', 'movies_results', 'tv_results')" style="color:#fafafa ; font-weight: normal;   margin-top: 13px; "  autocomplete="off"
                                 type="text" name="q" class="search" placeholder="Search">
                                  

                                  </div>
                                     </form>
                                       </a>


                                       
                                          
                                      
                     </div>
                
                  <div   style="display: none; width:450px; z-index: 900;" id="autolist" class="  panel panel-default" style=":  ;">
                                          <!-- List group -->
                                          <ul class="list-group">
                                              <div id="autocompleteTest">


                                              </div>
                                              
                                                <div style="background-color: rgba(172, 172, 172, 0.11) !important; color: black; font-weight: bold;" id="fav" class="list-group-item">
                                                  <div class="row">
                                                      <div id="favorites" class="">
                                                          <div class="">
                                                               <b style="float: left;" >Movies</b>
                                               <b style="font-weight: normal; font-size: 12px; float: right;"><a id="load_movies" href="/search/movies" > load more </a></b>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>

                                              <li class="list-group- ">
                                                  <div class='row'>
                                                      <div class='col-md-12'>
                                                          <div id="movies_results" class=' media-middle'>
                                                              <a href='#'>
                                                                  <img style="float: left;" class='media-object img-circle' src='https://placehold.it/40x40'>
                                                                <p style="margin: 10px; float: left;" > Fdds 
                                                              </a>
                                                          </div>
                                                   
                                                      </div>
                                                  </div>
                                              </li>

                                                <div style="background-color: rgba(172, 172, 172, 0.11) !important; color: black; font-weight: bold;" id="fav" class="list-group-item ">
                                                  <div class="row">
                                                      <div id="favorites" class="">
                                                          <div class="">
                                                               <b style="float: left;" >TV Series</b>
                                                                   <b style="font-weight: normal; font-size: 12px;  float: right;"><a id="load_tv" href="/search/tv" > load more </a></b>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </div>

                                              <li class="list- -item">
                                                  <div class='row'>
                                                      <div class='col-md-12'>
                                                          <div id="tv_results" class=' media-middle'>
                                                              <a href='#'>
                                                                  <img style="float: left;" class='media-object img-circle' src='https://placehold.it/40x40'>
                                                                <p style="margin: 10px; float: left;" > Fdds 
                                                              </a>
                                                          </div>
                                                   
                                                      </div>
                                                  </div>
                                              </li>
                              <h6 style="float:right: margin:1%; color: " > <a href="/search/movies" > advanced search      </a> </h6>
                                          </ul> </div>
                  </div>

                        
    </div> 
          </li>


          <div style="margin-left: 30%;" class="main-nav" >

         @if (Auth::guest())
  <li class="navs"><a class="list-item-anchor" href="{{ url('/login') }}">Login</a></li>
  <li class="navs"><a class="list-item-anchor" href="{{ url('/register') }}">Register</a></li>
@else

 <li class=" -   ">
     <a  class="list-item-anchor" href="{{ url('/') }}" >
    
         Home
         
     </a>
    
</li>  


 <li class="header-item  " >
        <li class=" dropdown">
          <a style="margin-top: 7px" class="list-item-anchor " style=" " s href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            <i onclick="setTimeout(function(){ all_seen( ); }, 2500);" class="far fa-bell"></i>  </a>
          <ul class="dropdown-menu notify-drop">
            <div class="notify-drop-title">
              <div class="row">
                <div style="color: black; margin: 0 0 0 4%;" class=" "> <a href="/notifications" >NOTIFICATIONS (<b class="far fa-bell" > </b>) </a> </div>
               
              </div>
            </div>
            <!-- end notify title -->
            <!-- notify content -->
            <div class="drop-content">
            <div id="notification_body"></div>
 
            </div>
            <div class="notify-drop-footer text-center">
              <a onclick="all_seen( )" href="#"><i class="fa fa-eye"></i> Mark all seen</a>
            </div>
          </li>
        </li>
      </ul>
<span id="n_count" class="badge"></span></a>

        </li>
    
 
    
 <li class="header-item  ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
    
   <img class="nav-avatar img-circle" src="{{ Auth::user()->picture }}"  height="35px"  width="35px" >
    <span style="float: right;" class="caret"></span>
</a>

<ul class="dropdown-menu" role="menu">
    <li>
     <a href="{{ url('profile/'.Auth::user()->id) }}">
       <i class="fa fa-user" aria-hidden="true"></i>
        My Profile
        </a>

    </li>
    
    <li>
     <a href="{{ url('profile/'.Auth::user()->id).'/library' }}">
       <i class="fa fa-list-ul" aria-hidden="true"></i>
        My Library
        </a>

    </li>
        <li>
        <a href="{{ url('/setting/account') }}"
            >
         <i class="fa fa-gear" aria-hidden="true"></i>
            Settings
        </a>

        
    </li>

    <li>
        <a href="{{ url('/logout') }}"
            onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
         <i class="fa fa-sign-out" aria-hidden="true"></i>
            Logout
        </a>

        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
            {{ csrf_field() }}
        </form>
    </li>
</ul>
</li>
@endif
 
  </div>
    </div>
 
 
   

          </div>


      </ul>
  </header> 















 
@yield('content')
 
 <div id="target_modals" ></div>
<input type="hidden" id="write_on_me" value="">
 
<script>

 
    function formatDate(date) {

      time = new Date;
      
      date = date.toString().split(" ");

 
     
       

       b = date[0].split("-");
      //console.log(b);
       
        if(time.getFullYear() > b[0]) // check yrs
          return  time.getFullYear() - b[0] + 'years ago';
        if(time.getMonth()+1 > b[1]) // check months
          return time.getMonth()+1 - b[1] +' months ago';
         if(time.getDate() > b[2]) // check days
          return time.getDate() - b[2] +' days ago';

        d = date[1].split(":");
            //console.log(d);
         if(  time.getHours() > d[0]) // check hourse
          return time.getHours() - d[0] +' hourse ago';
        if(time.getMinutes() > d[1]) // check minutes
          return time.getMinutes()  - d[1] +' minutes ago';

         return 'a few seconds ago'; 
      
      
      date = date[0].toString().split("-");


  var monthNames = [
    "Jan", "Frb", "Mar",
    "April", "May", "June", "July",
    "Aug", "Sep", "Oct",
    "Nov", "Dec"
  ];

 if(date[1][0] == 0)
    date[1] = date[1].slice(1);
   
date[1] = monthNames[date[1]];
 
  return date[2] + '-' + date[1];
}

/**
 * Created by Mitko on 9/8/2016.
 */
function basic_search(e, i,movieshtml, tvshtml){
  if($('#'+i).val().length >= 3){
        $("#"+e).css('display', 'block');

        if(e == 'autolist')
          $('#'+e).css('position', 'absolute');

      $('.media-middle').html('<img style="display: block;margin-left: auto;margin-right: auto;" src="/img/loaderIco.gif" >') ; 
      search_movie( $('#'+i).val(),  search_tv ,movieshtml, tvshtml );
      
      }
  else
      $("#"+e).css('display', 'none');
      
    } 
    function search_movie(query, callback, movieshtml, tvshtml){
      $('#load_movies').attr('href', '/search/movies?q='+query);
      var url = 'https://api.themoviedb.org/3/',
mode = 'search/movie?query=',
input,
query,
key = '&api_key=54f297aa644bf4f27044771fc75cbb64&language=en';

$.ajax({
            type: 'GET',
            url: url + mode + query + key,
            async: true,
            jsonpCallback: 'testing',
            contentType: 'application/json',
            dataType: 'jsonp',
            success: function(ajax) {
        //console.log(ajax);
                $('#'+movieshtml).html('');
                j=0;
              for (var i = 0; j <=3; i++) {
                 j++;
                if(ajax.results[i].original_language != "en"){
                       j--;
                  continue;
                }
                //console.log(j);
               $('#'+movieshtml).append("  <div data-type='movie' data-movie='"+ajax.results[i].id+"' data-type='movie' onclick='add_to_list("+ajax.results[i].id+", this)' class='one_result col-md-12' style='width: 100%' ><a   href='/movie/"+ajax.results[i].id+"'>                                            <img style='max-width: 45px; float: left;' class='media-object img-'   src='https://image.tmdb.org/t/p/w92"+ajax.results[i].poster_path+"'>  <p class='search_elipsis' style='margin: 10px; float: left;' > "+ajax.results[i].original_title+"                                        </a></div><br>");
              
              }

               callback(query, tvshtml);
            }

          });



    }
     function search_tv(query, tvshtml){
       $('#load_tv').attr('href', '/search/tv?q='+query);
      var url = 'https://api.themoviedb.org/3/',
input,
query,
key = '&api_key=54f297aa644bf4f27044771fc75cbb64&language=en-US';



$.ajax({
            type: 'GET',
            url: url + 'search/tv?query=' + query + key,
            async: true,
            jsonpCallback: 'testing',
            contentType: 'application/json',
            dataType: 'jsonp',
            success: function(ajax) {
              j = 0;
              if(ajax.results.length <= 0)
                 $('#'+tvshtml).html('<p> No results found');
              //console.log(ajax);
                $('#tv_results').html('');
              for (var i = 0; j <=3; i++) {
                j++;
                if(ajax.results[i].original_language !== 'en'){
                  j--;
                  continue;
                }
               $('#'+tvshtml).append("  <div data-type='tv' data-movie='"+ajax.results[i].id+"' onclick='add_to_list("+ajax.results[i].id+", this)' class='one_result live_result col-md-12' style='width: 100%' ><a  href='/tv/"+ajax.results[i].id+"'>                                            <img style='float: left;max-width: 45px;' class='media-object -circle'   src='https://image.tmdb.org/t/p/w92"+ajax.results[i].poster_path+"'>  <p class='search_elipsis' style='margin: 10px; float: left;' > "+ajax.results[i].name+"                                        </a></div><br>");

             
              }
            }

          });

    }
 


 
            $.ajax({
          type: 'GET',
          dataType: "json",
          url: '/notifications/count',
           
          success: function(e){
            if(!e == 0)
        $('.fa-bell').append(e);
          }
        });

             $.ajax({
          type: 'GET',
          dataType: "json",
          url: '/notifications/get',
           
          success: function(e){
for(i=0; i<e.length; i++){
  
  style = 'style';

  action = '';
  if(e[i].type == "comment")
    action = ' left a comment on your post';
  if(e[i].type == "mention")
    action = 'mentioned you ';

  if(e[i].type == "like")
    action = 'liked your comment';

 $('#notification_body').append( '<div class="col-xs-12 noti'+e[i].saw+' '+style+'" style=" width: 100%; color:black; padding: 2%" id=" color_black" > <div style="" > <div style="float:left "><div class="notify-img"><a href="/profile/'+e[i].user.name+'"><img style="margin: 2%" width="40" height="40" src="'+e[i].user.picture+'" alt=""></a></div></div> <div style="width : 80%; margin-left: 4%;float:left "><a href="/profile/'+e[i].user.name+'">'+e[i].user.name+'</a>  '+action+'           <p style="color: #999" class="time">'+formatDate(e[i].created_at)+'</p>             </div> </div><br><br> </div>');
 }
          }
        });

    function all_seen(){
$.ajax({
          type: 'GET',
          dataType: "json",
          url: '/notifications/saw',
          success: function(e){
            $('.fa-bell').html('');    
            $('.noti0').removeClass('noti0');
          }
        });

    }
    function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}
$(document).ready(function(){
   
   $(document).click(function(e){
 
 if(e.target.offsetParent.id != "search_container"){
      $('#autolist').hide();
    }

    }); 
});
function encodeHTML(s) {
    return s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/"/g, '&quot;');
}
$.fn.isInViewport = function() {
var win = $(window);

var viewport = {
    top : win.scrollTop(),
    left : win.scrollLeft()
};

viewport.right = viewport.left + 1;
viewport.bottom = viewport.top + 1;


var elemtHeight = this.height();// Get the full height of current element
elemtHeight = Math.round(elemtHeight);// Round it to whole humber

var bounds = this.offset();// Coordinates of current element
bounds.top =    bounds.top ;
bounds.bottom =   bounds.bottom;
bounds.right = bounds.left + this.outerWidth();
console.log('Win Height '+ $('body').innerHeight()+'viewport.bottom '+ viewport.bottom + ' &bounds.top '+ bounds.top +'viewport top '+viewport.top + ' bounds.bottom '+bounds.bottom );

return (!( $('body').innerHeight() -  viewport.top  > 700  ));

};
$(function() { 

    $('a[href="#toggle-search"], .navbar-bootsnipp .bootsnipp-search .input-group-btn > .btn[type="reset"]').on('click', function(event) {
    event.preventDefault();
    $('.navbar-bootsnipp .bootsnipp-search .input-group > input').val('');
    $('.navbar-bootsnipp .bootsnipp-search').toggleClass('open');
    $('a[href="#toggle-search"]').closest('li').toggleClass('active');

    if ($('.navbar-bootsnipp .bootsnipp-search').hasClass('open')) {
      /* I think .focus dosen't like css animations, set timeout to make sure input gets focus */
      setTimeout(function() { 
        $('.navbar-bootsnipp .bootsnipp-search .form-control').focus();
      }, 100);
    }     
  });

  $(document).on('keyup', function(event) {
    if (event.which == 27 && $('.navbar-bootsnipp .bootsnipp-search').hasClass('open')) {
      $('a[href="#toggle-search"]').trigger('click');
    }
  });
    
});
  
</script>
 
</body>
</html>
