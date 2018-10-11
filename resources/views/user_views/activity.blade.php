
<script src="/js/load.js"></script>
<head>
       <title>profile</title>
   
 
</head>
<div id="activity" class=" " >
    <div class="col-sm-1 col-md-1  col-xs-1" ></div>
<div class="col-sm-7 col-md-7  col-xs-7"> 
 

<div id="posts_loading"></div>
<div class="col-sm-12 col-md-12  _4-u2 mbm _2iwp _4-u8" >
  <div class="_2iwo" data-testid="fbfeed_placeholder_story">
    <div class="_2iwq">
      <div class="_2iwr"></div>
      <div class="_2iws"></div>
      <div class="_2iwt"></div>
      <div class="_2iwu"></div>
      <div class="_2iwv"></div>
      <div class="_2iww"></div>
      <div class="_2iwx"></div>
      <div class="_2iwy"></div>
      <div class="_2iwz"></div>
      <div class="_2iw-"></div>
      <div class="_2iw_"></div>
      <div class="_2ix0"></div>
    </div>
  </div>
</div>

<div class="col-sm-12 col-md-12_4-u2 mbm _2iwp _4-u8"  >
  <div class="_2iwo" data-testid="fbfeed_placeholder_story">
    <div class="_2iwq">
      <div class="_2iwr"></div>
      <div class="_2iws"></div>
      <div class="_2iwt"></div>
      <div class="_2iwu"></div>
      <div class="_2iwv"></div>
      <div class="_2iww"></div>
      <div class="_2iwx"></div>
      <div class="_2iwy"></div>
      <div class="_2iwz"></div>
      <div class="_2iw-"></div>
      <div class="_2iw_"></div>
      <div class="_2ix0"></div>
    </div>
  </div>
</div>

<div class=" ">
<div class=" ">
<div id="modal_target" ></div>
<!-- code start -->


<!-- code end -->
</div>
</div>
<?php
 $new_or_not = true
 ;
if($has_comments > 0)
  $has_comments = 'step_completed';
if($has_rate > 4)
  $has_rate = 'step_completed';
if($has_follow > 4)
  $has_follow = 'step_completed';
if($has_like > 4)
  $has_like = 'step_completed';

if($has_like == $has_follow && $has_rate == $has_comments)
  $new_or_not = false;
?>

	</div>

<div class="col-sm-4 col-md-4 col-xs-4"> 
 @if(Auth::check() && Auth::user()->active == 0 && Auth::user()->id == $user['id'])
                        <div id="gettin_started" >
 <h4 class="text-center" > Getting Started on Moviex </h4>
         <hr style="margin: 2px" >
    <li class="step {{$has_rate}}">
    <span class="step-status">
  ☑
    </span>
    <span class="step-description">
    Rate 5 movies or series
    </span>
    </li>

        <li class="step {{$has_comments}}">
    <span class="step-status">
  ☑
    </span>
    <span class="step-description">
    Comment on a post
    </span>
    </li>

        <li class="step {{$has_follow}}">
    <span class="step-status">
  ☑
    </span>
    <span class="step-description">
    Follow 5 or more users
    </span>
    </li>

        <li class="step {{$has_like}}">
    <span class="step-status">
  ☑
    </span>
    <span class="step-description">
    Like 5 posts
    </span>
    </li>

                        </div>
  @endif()

	<h4 class="panel- " >  About Me </h4>
	<hr class="no_margin" >
	<p> {{$user['bio']}} <br>

	<h6>    <span class="fa fa-venus-mars fa-lg"></span> Gender:    {{$user['sex']}} </small></h6>

	<h6>    <span class="fa fa-map-marker fa-lg"></span></small>   Location:  {{$user['location']}}  </h6>

	<h6>   <i class="fa fa-birthday-cake fa-lg" aria-hidden="true"></i>
	  Birthdate:   {{$user['birthdate']}}  </h6>

<h6>	 <i class="fa fa-calendar fa-lg"></i>    joining data:   </h6>

<br>
<h4 class="panel-heading" > Favorite Shows </h4>
<button  onclick="$('.common_results').hide(); $('#fav_movie_re').show(); toggle(this, 'thumnail_movies')" class="btn  transparent_btns  active_btn_switcher" >Movies</button>
 <button  onclick="$('.common_results').hide(); $('#fav_tv_re').show(); toggle(this, 'thumbnail_series')" class="btn transparent_btns " >Series</button>
<hr style="margin-top: -2px;" >
<?php $tv_countrt = $movie_countrt = 0; ?>
<div class="th thumnail_movies" >
 
  <?php $indicator = true; ?>
 

@foreach($favs as $fav)
@if($fav['type'] == 'tv')
<?php $tv_countrt = $tv_countrt + 1 ?>
  @continue
 @endif
 <?php $indicator = false; ?>
 <a id="fav{{$fav['id']}}" href="/movie/{{$fav['show_id']}}"" ><img class="thumbnail_poster" src="http://image.tmdb.org/t/p/w92{{$fav['show']['show_pic']}}" >  </a>

@endforeach

@if(Auth::check() && Auth::user()->id == $user['id'])    
 <button style="margin-top: 10px;" onclick="format_favorite(this, 'movie')" class="btn btn-success btn-block" >Add Movies to your favorites</button>
@endif()
</div>
  <?php $indicator = true; ?>
 

<div style="display: none;" class="th thumbnail_series" >

 
@foreach($favs as $fav)
@if($fav['type'] == 'movie')
<?php $movie_countrt = $movie_countrt + 1 ?>
  @continue
 @endif
 <?php $indicator = false; ?>
 <a id="fav{{$fav['id']}}" href="/tv/{{$fav['show_id']}}"" ><img class="thumbnail_poster" src="http://image.tmdb.org/t/p/w92{{$fav['show']['show_pic']}}" >  </a>

@endforeach
  @if(Auth::check() && Auth::user()->id == $user['id'])    
 <button   style="margin-top: 10px;" onclick="format_favorite(this, 'tv')" class="btn btn-success btn-block" >Add Series to your favorites</button>
  @endif()
</div>

 


 

<div   style="display: none; width: 100% " id="fav_list" class="  panel panel-default" style=":  ;">
                    <!-- List group -->
                    <ul class="list-group">
                        <div id="autocompleteTest">


                        </div>
                        
                      <div class="common_results" id="fav_movie_re" >
                           <div style="background-color: rgba(172, 172, 172, 0.11) !important; color: black; font-weight: bold;width:auto" id="fav" class="list-group-item">
                            <div class="row">
                                <div id="favorites" class="">
                                    <div class="">
                                         <b style="float: left;" >Movies</b>
                         <b style="font-weight: normal; font-size: 12px; float: right;"><a id="load_movies" href="/search/movies" > load more </a></b>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <li style="list-style: none">
                            <div class='row'>
                                <div class='col-md-12'>
                                    <div id="fav_movie_results" class=' media-middle'>
                                        <a href='#'>
                                            <img style="float: left;" class='media-object img-circle' src='http://placehold.it/40x40'>
                                          <p style="margin: 10px; float: left;" > Fdds 
                                        </a>
                                    </div>
                             
                                </div>
                            </div>
                        </li>
                       </div>
                          <div class="common_results" id="fav_tv_re" > <!-- NO FAVS TVS -->
                          <div style="background-color: rgba(172, 172, 172, 0.11) !important; color: black; font-weight: bold;width:auto" id="fav" class="list-group-item">
                            <div class="row">
                                <div id="favorites" class="">
                                    <div class="">
                                         <b style="float: left;" >TV Series</b>
                                             <b style="font-weight: normal; font-size: 12px;  float: right;"><a id="load_tv" href="/search/tv" > load more </a></b>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <li style="list-style: none">
                            <div class='row'>
                                <div class='col-md-12'>
                                    <div id="fav_tv_results" class=' media-middle'>
                                        <a href='#'>
                                            <img style="float: left;" class='media-object img-circle' src='http://placehold.it/40x40'>
                                          <p style="margin: 10px; float: left;" > Fdds 
                                        </a>
                                    </div>
                             
                                </div>
                            </div>
                        </li>
                       </div>
                       
                     
                 <h6 style="float:right: margin:1%; color: " > <a href="/search/movies" > advanced search      </a> </h6>
                    </ul>

                </div>

 

</div>


</div>

<script type="text/javascript">
// library('/get/library'+g_type+'/{{$user["id"]}}?sort='+sort+status+'&page=1');
//document.addEventListener('DOMContentLoaded', function(){ 
 
    //$('.no_more').removeClass('no_more');
  $(window).on(' scroll', function() {

 

      if( $('.no_activity').isInViewport() ){

     $('.no_activity').removeClass('no_activity'); 
    activity_feed(window.next_page_activity  );
  }


 

});
   $('title').html('{{$user["name"]}} Activities');
</script>