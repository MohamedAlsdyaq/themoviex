@extends('layouts.app')

@section('content')
<head>
<style type="text/css">
	.reaction_target{
margin: 0% 0 0 20%;
width: 100%;
}
	}
</style>
</head>



<div class="container" >


<div class="reaction_target" >




</div>


<div id="user" style="float: ;" >




</div>


{{$user['id']}}
</div>

<script type="text/javascript">
  

function reaction(id){
    $('.reaction_target').html(' ');
 $.get( "/reaction/get/"+id, function( ajax ) {
 if(ajax.data.length < 1)
  $('#reaction_target').html('<h5 class="text-center" > Seems there nothing here yet! </h5>');
  if(data.length < 1){
  $('.libs').append('<div style="padding:50px; margin-top:10px;" class="no_posts">        Hmm, there doesn`t seem to be anything here yet.      </div>');
}
 for(var i=0; i<ajax.data.length; i++ ){
  me = '<li> <a data-toggle="modal" data-target="#report_modal" class="dropdown-item" onclick=" report( '+data[i].id+'); document.getElementById("modal_dest").value = "reaction" ">Report Reaction</a></li> ';
  data = ajax.data;
 eligibility = 1;
  for(j=0; j<data[i].likes.length; j++){
    if(data[i].likes[j].user_id == {{Auth::user()->id}})
      eligibility = 0;
        break;
  }
 if($('#my_id').val() ==  data[i].user['id'] )
 me = '<li> <a class="dropdown-item" onclick="delete_post('+data[i].id+', "reaction")">Delete Reaction</a></li> ';
var rea = 'reaction';
  $('.reaction_target').append( '   <div id="reaction_'+data[i].id+'" style="  background-repeat: no-repeat !important;    background-size: cover !important; background: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.5) ) , url(http://image.tmdb.org/t/p/w500'+data[i].show.show_header+') !important ;" class="col-sm-4 col-md-4 col-lg-4 col-xs-6 reaction_container" style="" ><span class="like_reaction cursor stat-item"> <i onclick="like_entry('+data[i].id+',`reaction`)" style=" class="fa heart fa-heart-o"> LIKE </i><i  data-counter="'+data[i].likes.length+'" data-eligibility="'+eligibility+'" id="reaction_likes_counter'+data[i].id+'"> '+data[i].likes.length+'</i></span>    <div class="">  <div style="margin-left:5%; float: right" class="  dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span style="color: #e8e8e8;" class="fas fa-ellipsis-h" ></span> </div> <div class="dropdown-menu"> <li> <a class="dropdown-item" onclick="copy_link( '+data[i].id+',reaction)">Copy Reaction link</a></li> '+me+' </div></div> <br><div class="reaction_info" ><p> '+data[i].show.show_name+' <span class="grey" > </span> <h5>'+data[i].reaction+'</h5>  </div></div>');
  

 $('#user').append('   <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6 box"><header2><div class="vv"><canvas style="background-image: url('+data[i].user.header+');" class="img-responsive header-bg" width="" height="70" id="header-blur"></canvas><div class=""></div></div><div class="avatarcontainer"><a href="/user/'+data[i].user.id+'" ><img src="'+data[i].user.picture+'" alt="avatar" height="50px" height="50px" class="av img-circle "></a></div></header2><div style="margin-top: 5%; padding: 5%" class="content"><button  onclick="follow('+data[i].user.id+')" type="button" class="cursor btn btn-success -lg btn-block">Follow</button></div></div>');
 }
});

}
$(document).ready(function(){
reaction({{$user['id']}})
});
</script>
 
@endsection