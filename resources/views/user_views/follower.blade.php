


	<div id="followers"  class="common" >
	
 


	</div>

	<script type="text/javascript">

function follower(id){
$('#followers').html(' ');

   $.get( '/get/follower/'+id, function( data ) {
 
 $('#followers').append(' <h2> {{$user["name"]}}\'s Followers </h2>' );
if(data.length < 1){
  $('#followers').append('<div style="padding:50px; margin-top:10px;" class="no_posts">        Hmm, there doesn`t seem to be anything here yet.      </div>');
}
      for(var i=0; i<data.length; i++ ){
      	button = '<button  onclick="follow('+data[i].id+')" type="button" class="cursor btn btn-success -lg btn-block">Follow</button>';
if($('#my_id').val() == data[i].id)
	button = "<h5 class='text-center' > This is You </h5>";

 $('#followers').append('   <div class="col-sm-3 col-md-3 col-lg-3 col-xs-6 box"><header2><div class="vv"><canvas style="background-image: url('+data[i].header+');" class="img-responsive header-bg" width="" height="70" id="header-blur"></canvas><div class=""></div></div><div class="avatarcontainer"><a href="/user/'+data[i].id+'" ><img src="'+data[i].picture+'" alt="avatar" height="50px" height="50px" class="av img-circle "></a></div></header2><div style="margin-top: 5%; padding: 5%" class="content">'+button+'</div></div>');
         
          }
        
              })  ;
}
follower(`{{$user['id']}}`);
</script>