@extends('layouts.app')

@section('content')
<head>
	     <title> {{$group['name']}}| Moviex</title>
  <
	<style type="text/css">
		.header{
	  background:rgba(0,0,0,0.5);
    opacity: 1;
    transition: all 0.5s;
    -webkit-transition: all 0.5s;
   -moz-transition: all 0.5s;
	opacity: 0.9;
	overflow: hidden; 
	position: absolute;
	margin: 0 ;
	background-color: white;
	height: 450px;
	margin-top: -80px;

	z-index: -1;
	width: 100%;

		}
		.profile_container{
			height: 300px;
			width: 100%;
		}
		.cursor{
  cursor: pointer;
}
	</style>

<script src="/js/group_controll.js"></script>

</head>
   <?php
  if(Auth::check())
    $class = 'cl';
  else
    $class = 'guest';
  ?>

<div  class="profile_container ">
<input type="hidden"  id="group_id" value="{{$group['id']}}" name="">



<div style="background-image: url('/header.jpg')" class="header"></div>

<div class="col-sm-12 empty " >.</div>

<div class="account_info row" >
	<div class="col-sm-2 col-xs-4" >
		<img height="100" width="100" src="/groups/av.png">
	</div>
	<div class="col-sm-3 col-xs-4 " >

		<h3 style="color:white" >{{$group['name']}} </h3>
		
		
			 @if( $subscribtion == 0)
   <button id="button_group{{$group['id']}}" onclick="join_group({{$group['id']}}, '', '')" id="follow_button" class="btn follow {{$class}} btn-success">Join</button>
    @endif
        	 @if( $subscribtion == 1)
 <button id="button_group{{$group['id']}}" onclick="leave_group({{$group['id']}}, '', '')"  class="btn custom_dark_btn {{$class}}  -">Leave</button>
         @endif
 
	

	</div>
</div>





</div>
<div class="white_section" >
<div class="tab">
  <button class="current_tab tablinks" onclick="change_section(event, 'activity')">Activity</button>
  <button class="tablinks" onclick="change_section(event, 'members')">members</button>
 
  <button class="tablinks" onclick="change_section(event, 'rules')">Rules</button>
</div>
</div>


<div class="app container">


<div class="row" > 
<div id="activity" class="common">
	 <div class="col-sm-1 col-md-1  col-xs-1" ></div>
<div  class="col-sm-7 col-md-7  col-xs-7  " > 
  @if(Auth::check() )
<div class="create_post_wrapper" > 
            @include('modules.post')
            </div>
            @endif()


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
</div>




<div class="col-sm-4" > 

	<h4 class="panel- " >  About {{$group['name']}} </h4>
	<hr class="no_margin" >
	<p> {{$group['bio']}} <br>

 

	<h6> <small>  <span class="fa fa-info fa-lg"></span></small>   Type: {{$group['type']}}</h6>

	 

<h6>	<small><i class="fa fa-calendar fa-lg"></i> </small>  Created: {{$group['created_at']}}</h6>

<br>
 
<h4 class="panel- " >  Members  </h4>
 
 <hr class="no_margin" >
@foreach($group['groupentries'] as $key=>$entry)
	@if($key == 27)
		@break
	@endif()
	<a style="margin-right: 3% " href="/profile/{{$entry['user']['id']}}" > 
		<img data-toggle="tooltip" title="{{$entry['user']['name']}}!" style="float: left;" height="40" width="40" class="img-circle" src="{{$entry['user']['picture']}}">
	</a>

@endforeach()
</div>
</div>
<div id="members" style="display: none;" class="common" >

</div>
<div id="rules" style="font-family: Asap,sans-serif; display: none; width: 90%" class="common container" >

							<h2>Community Rules</h2>

							<h3 style="font-weight: bold;" >Moviex Community Guidelines</h3>

							Everything you need to know to be an awesome community member and leader within our community can be found here. This should help you navigate the dos and don’ts of Moviex.
							<hr>

							<h2>How to behave on Moviex</h2>
							<h4 class="custom_heading" >Civility </h4>
							<p>
							Treat each other respectfully. Of course there will be heated discussions and disagreements; that's normal human emotion interjecting itself into your very rational debate. You can still remain respectful and refrain from personal attacks or harassment. Attack the idea, not the person.
							<h4  class="custom_heading" >Self Expression</h4>
							<p>
							Be creative, exchange ideas, build and join groups around the things you care about, or just read along quietly if you prefer. You're welcome at Moviex so long as you adhere to the very basic rule of being civil. We believe in you. Don't make us tell Mom.
							<h4 class="custom_heading" >Harassment</h4>
							<p>
							Harassment is behavior directed at a specific person that causes substantial emotional distress and serves no legitimate purpose. Do not engage in or provide a platform for harassment of users or groups. Harassment will not be tolerated.

							<h4 class="custom_heading" >Privacy Violations</h4>
							<p>
							Do not post your own or other people's private information, which includes but is not limited to real names, addresses, phone numbers, email addresses, and nonconsensual sexualized images or media (often referred to as “revenge porn”). We are against doxxing regardless of how awful you may think a person is. It can lead to dangerous real life situations and unnecessary legal consequences. Doxxing is a form of harassment, and we're not cool with it.
							<h4 class="custom_heading" >Malicious Speech</h4>
							<p>
							Don't encourage violence or hatred on the basis of things like race, ethnic origin, religion, disability, gender, age, veteran status, sexual orientation, or any other characteristics. We encourage you to dismantle negative speech through discussion rather than censorship.

							You're still welcome to express your opinions, even if they are offensive to some users. We want honest and open discussion to happen on Moviex from all sides. However, these opinions cross the line into malicious speech when they specifically incite violence or hatred, or make people fear you will act against them in a violent manner. We reserve the right to flush anything overtly malicious right down our digital toilet.
							<h4 class="custom_heading" >Harm to Minors</h4>
							<p>
							Be thoughtful when posting anything involving a minor. Don't post or solicit anything relating to minors that is sexually suggestive or violent. Don't bully or harass minors, even if you are one.
							<h4 class="custom_heading" >Promotion or Glorification of Self-Harm </h4>
							<p>
							Do not post content that actively promotes or glorifies self-harm. This includes content that urges or encourages others to: cut or injure themselves; embrace anorexia, bulimia, or other eating disorders; or commit suicide. Online communities can be extraordinarily helpful to people struggling with these difficult conditions, and we welcome communities on these topics that do not actively encourage this kind of behavior. We believe in facilitating awareness, support and recovery.

							<h4 class="custom_heading" >Gore, Mutilation, Bestiality, or Necrophilia </h4>
							<p>
							Don't post the mutilation, torture, or abuse of human beings, animals, or their remains.
							<h4 class="custom_heading" >NSFW Content</h4>
							<p>
							Moviex is home to a diverse population with different standards and needs. Please label not safe for work content accordingly. NSFW content is, in general terms, content that may be inappropriate in a professional environment, including images that are sexually suggestive or contain nudity, news photos or videos that have potentially upsetting or graphic content, excessive explicit language in videos, etc. This allows users to simply scroll past the NSFW content and still allow you the freedom to post it without conflict.
							<h4 class="custom_heading" >Terrorism </h4>
							<p>
							The support of terrorist groups, their propaganda, or recruiting efforts on Moviex is prohibited. We encourage political discourse and a wide breadth of opinions, but not the use of violence and intimidation in the pursuit of political aims.
							<h4 class="custom_heading" >Vote Manipulation
							<p>
							Do not engage in behaviors to drive up artificial traffic or popularity of content. Conversely, do not create artificial opposition to content.
							Deceptive or Fraudulent Links
							<p>
							Don't post deceptive or fraudulent links in your posts. This includes giving links misleading descriptions, putting the wrong “source” field in a post, or embedding links to interstitial or pop-up ads.
							<h4 class="custom_heading" >Group Name Squatting
							<p>
							Group names are a key part of creating a common identity, and we want everyone to be able to get access to the names that suit them best. Please only create communities that you plan on actively participating in so that others can use those names if you will not. Do not squat on Group names.
							<h4 class="custom_heading" >Spam
							<p>
							Sending or posting spam is not allowed. Spam is defined as the use of electronic messaging systems to send unsolicited messages, especially advertising, as well as sending or posting messages or links repeatedly on the same site.
							<h4 class="custom_heading" >Confusion or Impersonation
							<p>
							Don't do things that would cause confusion between you, your community, and a person or company. Satire and parody are acceptable, but you cannot misrepresent yourself as a different person or company.
							<h4 class="custom_heading" >Unlawful Use
							<p>
							Illegal behavior, including but not limited to fraud, phishing, promoting harm to minors, or inciting violence is not acceptable and will result in termination of your account/s.
							<h4 class="custom_heading" >Copyright/Trademark Infringement
							<p>
							Don’t infringe the copyright or trademark of others. If you don’t have the right to use the copyright or trademark owned by someone else, don’t post it on Moviex. We respond to notices of alleged copyright infringement as per the Digital Millennium Copyright Act.
							<h4 class="custom_heading" >Violations </h4>
							<p>
							Any user found violating any of these rules, may be punished at the sole discretion of Moviex through any of the following means: permanent removal from Moviex, partial removal, temporary removal, and/or removal of functionality. Please don’t violate these rules. That’s not fun for anyone.

</div>

</div>

</div>

</div>

<?php $id = $group['id']; ?>
<script type="text/javascript">
	
function get_post(id){
if(id == null)
  return false;
var content = ' ';
  $.ajax({
    type: 'GET',
    url: id,
    jsonpCallback: 'testing',
    contentType: 'application/json',
    beforeSend: function(){
      $('#posts_loading').append('<img id="loader_big" src="/img/ring-alt.gif">');

    },
    success: function(ajax) {
 $('#loader_big').remove();
data = ajax.data;
window.moviex_global_next_page = ajax.next_page_url;
window.moviex_data_paginate_limit = ajax.last_page;
 $('._4-u8').remove();
 for(i=0; i<data.length; i++){
 
 content = display_post(data[i]);
   
 $('#posts_loading').append(content[0]);
 console.log(content[1]);
 $('.gallery'+data[i].id).imagesGrid({
    images: content[1],
                align: true
            });
   } // end for
$('.comments').each(function(i, item ) { 
    is = $('#'+item.id).attr('data-comment');
    target = '#'+item.id;
    //console.log(id + ' - '+ target)
     display_comments(is, 10, target); 
});
  console.log(id);
$('#posts_loading').append('<div class="col-xs-12 no_more" > </div>');
  } //end success
});


}
 url = {{$id}};

get_post('/group/retrive_posts/'+url);

function members(){
$.get( '/get/follower/ids', function( data ) {
	var arr = data;  following({{$group['id']}}, arr);   })  ;

}

function following(id, arr){
  $('#members').html(' ');

    $.get( '/group/users/'+id, function( data ) {
console.log(data);
  
      for(var i=0; i<data.length; i++ ){
 button = '<button id="follow'+data[i].user.id+'" onclick="follow('+data[i].user.id+')" type="button" class="cursor btn btn-success -lg btn-block">Follow</button>';
if(arr.includes(data[i].user.id)){
button = '<button id="unfollow'+data[i].user.id+'" onclick="unfollow('+data[i].user.id+')" type="button" class="btn cursor   unfollow  - btn-block">Unfollow</button>';
}
if($('#my_id').val() == data[i].user.id)
	button = "<h5 class='text-center' > This is You </h5>";

 $('#members').append('   <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6 box"><header2><div class="vv"><canvas style="background-image: url('+data[i].user.header+');" class="img-responsive header-bg" width="" height="70" id="header-blur"></canvas><div class=""></div></div><div class="avatarcontainer"><a href="/user/'+data[i].user.id+'" ><img src="'+data[i].user.picture+'" alt="avatar" height="50px" height="50px" class="av img-circle "></a></div></header2><div style="margin-top: 5%; padding: 5%" class="content">'+button+'</div></div>');
         
          }
        
              })  ;

}
document.addEventListener('DOMContentLoaded', function(){ 


 $(window).on('scroll', function() {



      var paginatr = window.moviex_global_next_page;
      paginatr = paginatr.split("=");
      paginatr = paginatr[1];
      console.log(paginatr);
     
        /* Check the location of each desired element */
  if( $('.no_more').isInViewport() ){
    $('.no_more').removeClass('no_more');
    get_post(window.moviex_global_next_page);
  
  }
    
    });

    });

</script>
@endsection 