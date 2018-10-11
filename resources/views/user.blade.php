@extends('layouts.app')

@section('content')
<head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="/js/follow.js"></script>
 <link rel="stylesheet" type="text/css" href="/css/post.css">
<script src="/js/header.js"></script>
<script src="/js/update_entry.js"></script>
 <script type="text/javascript">
   
function add_to_list(id, e){ // add_to_favorite
  type = $(e).attr('data-type');
   $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
}); 
$.ajax({

    //do a call to the list table and add the movie as 
    url: '/favorite/'+type+'/add',
    data: {id:id},
    type: 'POST',
    beforeSend: function(){
      $(e).html('<img src="/img/loadericong.gif"> ');
    }, 
    success: function(i){
 location.reload();
        
    }
    
});
}
 </script>
	<style type="text/css">
  .butons{
    height: 100% !important;
max-height: 48px;
margin-top: 2px;
  }
  .common{
    margin-top: 0% !important;
  }
  .tablinks{
    width: 100px;
  }
		.header{
     
	  background:rgba(0,0,0,0.5);
      background: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.2) ) , url('{{$user['header']}}')
    opacity: 1;
    background-repeat: no-repeat;
    background-size: cover;
    transition: all 0.5s;
    -webkit-transition: all 0.5s;
   -moz-transition: all 0.5s;
	opacity: 0.9;
	overflow: hidden; 
	position: absolute;
	margin: 0 ;
	background-color: white;
	height: 400px;
	margin-top: -80px;
background-size: cover !important;
	z-index: -1;
	width: 100%;
  background: linear-gradient(  rgba(0,0,0,0.5), rgba(0,0,0,0.5) ) , url('{{$user['header']}}')
		}
		.profile_container{
			height: 300px;
			width: 100%;
		}
     .popover-header{

  font-size: 10px;
 }
 .search_poster{
 
 
   font-weight: normal !importantm;
     min-width: 160px;
     margin-top: 60px;
     margin-left: 0px;
}
 .popover-body{
font-size: 12px;
  font-weight: normal !important;
  
 }
 
 a{
 
     color: #003366  !important;
 
  text-decoration: none !important;
}
 a:hover{
 color: rgb(140,180,255) !important;
}

	</style>
  <link rel="stylesheet" type="text/css" href="/css/search.css">
</head>
<script type="text/javascript">
	  
       window.moviex_data_type = 'tv';
       window.moviex_data_sort = 'created_at';
</script>
<?php
$my_id = 0;
if(Auth::check()){
$my_id = Auth::user()->id;
  $class = 'cl';
}
  else
    $class = 'guest';
?>
<input type="hidden" id="user" name="">
<input type="hidden" id="username" value="{{{$user['name']}}}" name="">
 <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-">
    
      <div class="modal-body">
       
      <div class="">
        <div class="twPc-div">
    <a style="background-image: url({{$user['header']}});" class="twPc-bg twPc-block">

       <input onchange="change_header(this)" type='file' style="display: none" id="headerUpload" accept=".png, .jpg, .jpeg" />

       <label for="headerUpload">
    <i style="color: white" class="cursor fas fa-1x fa-camera">  </i>
       </label>

    </a>

  <div>
    <div class="twPc-button">
           
    </div>
<input type="file" name="header" style="display: none">
    <a   class="twPc-avatarLink">

           <div class="avatar-upload">
        <div class="avatar-edit">
            <input onchange="change_pic(this)" type='file' id="imageUpload" accept=".png, .jpg, .jpeg" />
            <label for="imageUpload">
            <i class="  fa fa-file-picture-o" ></i>            </label>
        </div>
        <div class="avatar-preview">
            <div class="twPc- " id="imagePreview" style="background-image: url({{$user['picture']}});">
            </div>
        </div>
    </div>
     
    </a>

    <div class="edits twPc-divUser">
       <div class=" w3-container">
  
<div class="w3-bar edit_bar">
  <button data-indicator="about" onclick="change_edit_section(event, 'about')" class="w3-bar-item btn  btn-link stng_active edit_btn">About Me</button>
  <button data-indicator="links" onclick="change_edit_section(event, 'links')" class="w3-bar-item btn  btn-link edit_btn">Profile Links</button>
  <button data-indicator="favorites" onclick="change_edit_section(event, 'favorites')" class="w3-bar-item btn  btn-link edit_btn">Favorites</button>

      
  
</div>
</div>
    </div>

 
  </div>

<div id="about" class="common2">
  <div id="getting-started col-xs-12 post_s" >

  </div>
  <h2> About Me</h2>
<form id="edit_pr_form" >
    <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm">Location</label>
    <div  class="col-sm-9">
       <input onkeypress="check_length_user(this, 'update_profile')" value="{{$user['location']}}" placeholder="Where do you live?" type="text" name="location" class="form-control">
    </div>
  </div>

      <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-3 col-form-label col-form-label-sm">Birthdate</label>
    <div  class="col-sm-9">
       <input onkeypress="check_length_user(this, 'update_profile')" value="{{$user['birthday']}}" placeholder="Where do you live?" type="date" name="birthday" class="form-control">
    </div>
  </div>

  <div class="form-group row">
    <label for="colFormLabelLg" class="col-sm-3 col-form-label col-form-label-lg">Bio</label>
    <div class="col-sm-9">
      <textarea onkeypress="check_length_user(this, 'update_profile')" placeholder="Write something about yourself.." value="{{$user['bio']}}" name="bio" style="; resize: none" class="form-control"  rows="3"></textarea>
    </div>
  </div>
</form>
</div>

<div id="links" class="common2" style="display: none" >
  <h2>Profile Links</h2>
  <div id="social-icons">
<img onclick="link_img_click(this)" data-id="youtube" style="float: left" src="/48/Youtube-Icon.png">
<img onclick="link_img_click(this)" data-id="twitter" style="float: left" src="/48/Twitter-Icon.png">
<img onclick="link_img_click(this)" data-id="devintart" style="float: left" src="/48/Deviantart-Icon.png">
<img onclick="link_img_click(this)" data-id="flicker" style="float: left" src="/48/Flickr-Icon.png">
<img onclick="link_img_click(this)" data-id="facebook" style="float: left" src="/48/facebook-Icon.png">
<img onclick="link_img_click(this)" data-id="evernote" style="float: left" src="/48/Evernote-Icon.png">
<img onclick="link_img_click(this)" data-id="myspace" style="float: left" src="/48/Myspace-icon.png">
<img onclick="link_img_click(this)" data-id="linkedin" style="float: left" src="/48/Linkedin.png">
<img onclick="link_img_click(this)" data-id="instgram" style="float: left" src="/48/Instagram-Icon.png">
<img onclick="link_img_click(this)" data-id="google" style="float: left" src="/48/Google-plus-icon.png">
<img onclick="link_img_click(this)" data-id="path" style="float: left" src="/48/Path-Icon.png">
 
<img onclick="link_img_click(this)" data-id="tumbler" style="float: left" src="/48/Tumblr-Icon.png">
<img onclick="link_img_click(this)" data-id="soundcloud" style="float: left" src="/48/Soundcloud-Icon.png">
<img onclick="link_img_click(this)" data-id="wordpress" style="float: left" src="/48/Wordpress-Icon.png">
<img onclick="link_img_click(this)" data-id="reddit" style="float: left" src="/48/Reddit-Icon.png">
<img onclick="link_img_click(this)" data-id="quora" style="float: left" src="/48/Quora.png">
<img onclick="link_img_click(this)" data-id="blogger" style="float: left" src="/48/Blogger-Icon.png">
<img onclick="link_img_click(this)" data-id="github" style="float: left" src="/48/Github-Icon.png">
<img onclick="link_img_click(this)" data-id="pinterest" style="float: left" src="/48/Pinterest-Icon.png">
<img onclick="link_img_click(this)" data-id="vimeo" style="float: left" src="/48/Vimeo-Icon.png">
<img onclick="link_img_click(this)" data-id="email" style="float: left" src="/48/Email-Icon.png">
<img onclick="link_img_click(this)" data-id="website" style="float: left" src="/48/Share-Icon.png">
</div>
 <h6 style="visibility: hidden; line-height: 50px;" >.</h6>
 <h3> External Source </h3>
<p id="indicator" >

  <div class="input-group mb-3">
  <input id="link_input" type="text" data-target="" class="form-control" placeholder=""  aria-describedby="basic-addon2">
  <div class="input-group-append">
    <button onclick="link()" class="btn btn-outline-secondary" type="button">Save</button>
  </div>
</div>



</div>


<div  id="favorites" class="common2" style="display: none" > 
<h2> Favorites </h2>
<p> Set your favorite shows</p>

<ul class="nav nav-tabs">
  <li class="nav-item">
    <a   onclick="fav_toggle(event, 'fav_movies')" class="nav-link active" href="#">Movies</a>
  </li>
  <li class="nav-item">
    <a onclick="fav_toggle(event, 'fav_tvs')"  class="nav-link" href="#">Series</a>
  </li>
  
</ul>
 <h3>  Search</h3>
      <div id="searchfield">
        <form><input placeholder="Search a show by its name.." type="text" name="currency" class="biginput" id="autocomplete"></form>
      </div> 

      <div class="common3" id="fav_movies">
       @foreach($favs as $fav)
@if($fav['type'] == 1)
  @continue
 @endif
 <div id="fav{{$fav['id']}}" class="fav_container" > 
 <a href="/movie/{{$fav['show_id']}}"" >
  <img style="margin-top: -20px; overflow: hidden; float: left;" class="thumbnail_poster" src="http://image.tmdb.org/t/p/w92{{$fav['show']['show_pic']}}" > 
<h5 style="float: left;" >{{$fav['show']['show_name']}} </h5>
   </a>
<i onclick="delete_fav(this, {{$fav['id']}})" style="float: right;" class="fas fa-window-close"></i>
 
</div>
@endforeach 
      </div>

      <div class="common3" style="display: none" id="fav_tvs">
       @foreach($favs as $fav)
@if($fav['type'] == 0)
  @continue
 @endif
<div id="fav{{$fav['id']}}" class="fav_container" > 
 <a href="/movie/{{$fav['show_id']}}"" >
  <img style="margin-top: -20px; overflow: hidden; float: left;" class="thumbnail_poster" src="http://image.tmdb.org/t/p/w92{{$fav['show']['show_pic']}}" > 
<h5 style="float: left;" >{{$fav['show']['show_name']}} </h5>
   </a>
<i onclick="delete_fav(this, {{$fav['id']}})" style="float: right;" class="fas fa-window-close"></i>
 
</div>
@endforeach 
      </div>



</div>


</div>
      </div>
     
         <p class="v_small">Visit your <a href="/setting/account" >settings </a> page to change your username, email, notification settings, and more.
          <button id="update_profile"  style="float: right !important " class="btn disabled float-right  " >Update Profile</button>
    
      </div>
    </div>
  </div>
</div>


<div  class="profile_container ">



<input type="hidden" value="{{$user['id']}}" id="user_id">
<div   class="header"></div>

 

<div class="account_info row" >
	<div style="margin-left: 70px;float: left" >
		<img style="" class="img-circle" height="100" width="100" src="{{$user['picture']}}">
	</div>
	<div style="margin-left: 20px; float: left" >

		<h3 style="font-weight: 500; font-size: 30px; color:white" >{{{$user['name']}}} </h3>
    @if(Auth::check())
		 @if(  $user['id'] != $my_id && $is_friended == false)
  <button  onclick="follow({{$user['id']}})" type="button" class="cursor btn btn-success btn-block ">Follow</button>
    @endif
         @if(  $user['id'] != $my_id && $is_friended == true)
         <div style="border:1px solid #afafaf; font-weight: 500;" aria-pressed="true" type="button"  class="following edit-btn"> Following  </div>
 
         @endif
    @if(Auth::check() && $user['id'] == Auth::user()->id)
		<div style="border:1px solid #afafaf; font-weight: 500;" aria-pressed="true"   data-toggle="modal" data-target="#edit" type="button" class=" edit-btn"> Edit  </div>
    @endif
  @endif
  @if(Auth::guest())
<b style="color: white; font-size: 12px" > <a href="/register" >Sign up </a> now to start following {{{$user['name']}}} and others.. </b>
  @endif()
	</div>
</div>

<div style="margin: 1%" >
<div style="padding:3%;float: right;bottom: 0;display: block;position: absolute; right: 0; width: 50%;" > 
@foreach($links as $link)
<a href="https://{{$link['link']}}" >
<img style="float: right; margin-right:  5px;" width="38" height="38" class="social_media" data-vendor="{{$link['vendor']}}" src="/48/{{ucfirst($link['vendor'])}}-Icon.png">
</a>
@endforeach()


</div>


</div>


</div>
<div class="white_section2" >
<div class="tab">

<button id="activitybtn" class="current_tab tablinks butons" onclick="change_section_user(event, 'activity', {{$user['id']}})">Activity</button>

<button id="librarybtn" class="tablinks butons" onclick="change_section_user(event, 'library', {{$user['id']}}); ">Library</button>

<button id="reactionbtn" class="tablinks butons" onclick="change_section_user(event, 'reaction', {{$user['id']}}); ">Reactions   </button>

<button id="listbtn" class="tablinks butons" onclick="change_section_user(event, 'list', {{$user['id']}}); ">Lists</button>

<button id="followerbtn" class="tablinks butons" onclick="change_section_user(event, 'follower', {{$user['id']}}); ">Followers </button>

<button id="followingbtn" class="tablinks butons" onclick="change_section_user(event, 'following', {{$user['id']}}); ">Following</button>
<button id="groupbtn" class="tablinks butons" onclick="change_section_user(event, 'group', {{$user['id']}});  ">Groups</button>
</div>
</div>

<div class="app container">

 
<div class="row" > 
  

<div class=" " id="render" >

</div>
  


  
</div>
</div>




</div>


  <div id="modal_" class="w3-modal">
    <div class="w3-modal-content">
      <div id="lib_modal" class="w3-container">
        <span onclick="document.getElementById('modal_').style.display='none'" class=" w3-display-topright">&times;</span>
       
      </div>
    </div>
  </div>

@endsection 
 <script >
document.addEventListener('DOMContentLoaded', function(){ 
  var path = location.pathname.substring(1);
  path = path.split('/');
  console.log(path);
   if( typeof path[2] !== 'undefined' ) {
    change_section_user(document.getElementById("activity_btn"), path[2], {{$user['id']}});
}else{
  change_section_user(document.getElementById("activity_btn"), 'activity', {{$user['id']}});
$('#activity_btn').addClass('current_tab');
}
 
    //$('.no_more').removeClass('no_more');
  $(window).on(' scroll', function() {

 
 
     
});

});
 




function following(id){
  $('#following').html(' ');

    $.get( '/get/follower/'+id, function( data ) {
 
 $('#following').append(' <h2> {{$user["name"]}}\'s Following </h2>');
      for(var i=0; i<data.length; i++ ){

 $('#following').append('   <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6 box"><header2><div class="vv"><canvas style="background-image: url('+data[i].header+');" class="img-responsive header-bg" width="" height="70" id="header-blur"></canvas><div class=""></div></div><div class="avatarcontainer"><a href="/user/'+data[i].id+'" ><img src="'+data[i].picture+'" alt="avatar" height="50px" height="50px" class="av img-circle "></a></div></header2><div style="margin-top: 5%; padding: 5%" class="content"><button  onclick="follow('+data[i].id+')" type="button" class="cursor btn btn-success -lg btn-block">Follow</button></div></div>');
         
          }
        
              })  ;
}



function toggle(e, c){
	$('.transparent_btns').removeClass('active_btn_switcher');
	$(e).addClass('active_btn_switcher');
	$('.th').hide();
	$('.'+c).show();

}
function change_pic(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {

             data = {
              image:   e.target.result
            };
                        $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
}); 
$.ajax({

    //do a call to the list table and add the movie as 
    url: '/profile/update_picturer',
    data: data,
    type: 'POST',
    beforeSend: function(){
      
    }, 
    success: function(d){
$('#imagePreview').css('background-image', 'url('+e.target.result +')');
            $('#imagePreview').hide();
            $('#imagePreview').fadeIn(650);
  
        
    }
    
});
        
      };
        reader.readAsDataURL(input.files[0]);
    }
}
   function change_header(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
           
             data = {
              header:   e.target.result
            };
            $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
}); 
$.ajax({

    //do a call to the list table and add the movie as 
    url: '/profile/UpdateHeader',
    data: data,
    type: 'POST', 
    beforeSend: function(){
      
    }, 
    success: function(d){
       $('.twPc-bg').css('background-image', 'url('+data.header +')');
       $('.twPc-bg').hide();
       $('.twPc-bg').fadeIn(650);
        
    }
    
});
        };
        reader.readAsDataURL(input.files[0]);
    }
}
 
 function save_changes(){

  active = $('.stng_active').attr('data-indicator');
  var data = $('#edit_pr_form').serialize();

   $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
}); 
$.ajax({

    //do a call to the list table and add the movie as 
    url: '/profile/update_info',
    data: data,
    type: 'POST',
    beforeSend: function(){
      $(this).html('<img src="/img/loadericong.gif"> ');
    }, 
    success: function(d){
  cehck('updates has been saved!');
        
    }
    
});


 }

 function link(){
  var data = {
      vendor:   $('.active_social').attr('data-id'),
      link: 'www.'+ $('.active_social').attr('data-id') + '.com/user/'+$('#link_input').val()
  }

   $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
}); 
$.ajax({

    //do a call to the list table and add the movie as 
  url: '/profile/add_link',
    data: data,
    type: 'POST',
    beforeSend: function(){
      $(this).html('<img src="/img/loadericong.gif"> ');
    }, 
    success: function(d){
  cehck('Link has been saved!');
        
    }
    
});
 }
 
 function check_length_user(e, title){
 
  if ( $.trim( $(e).val() ).length > 1 ){
     $('#'+title).replaceWith('   <button id="update_profile" onclick="save_changes()" style="float: right !important " class="btn float-right btn-success" >Update Profile</button>');
     $('#'+title).removeClass('disabled');
     $('#'+title).addClass('btn-success');
     

  } 

 }
 function delete_fav(e, div){

 $.get( "/favorites/delete/"+div, function( ajax ) {
    $('#fav'+div).fadeOut();
 });

}

 

</script>
