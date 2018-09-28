@extends('layouts.app')

@section('content')
<head>
<style type="text/css">
	.custom_container{
    padding: 0.003% 0 3% 0;
    margin: 5% auto 3% 25%;
    background-color: white;
    width: 50%;
}
	}
</style>
</head>





<div id="target_html" class="custom_container" >




</div>

<div id="user" style="float: ;" >




</div>
 <script type="text/javascript">
   function get_post(id ){
 
  $.ajax({
    type: 'GET',
    url: '/post/get/'+id,
    jsonpCallback: 'testing',
    contentType: 'application/json',
    beforeSend: function(){
      $('#target_html').append('<img id="loader_big" src="/img/ring-alt.gif">');
    },
    success: function(data) {
      data = data.data[0];
 $('#loader_big').remove();
  
 $('._4-u8').remove();
 
 
 content = display_post(data);
   
 $('#target_html').append(content[0]);
 console.log(content[1]);

 $('.gallery'+id).imagesGrid({
    images: content[1],
                align: true
            });
   
$('.comments').each(function(i, item ) { 
    is = $('#'+item.id).attr('data-comment');
    target = '#'+item.id;
    //console.log(id + ' - '+ target)
     display_comments(is, 10, target); 
});
  console.log(id);
 
  } //end success
});
}
get_post({{$id}})
 </script>
@endsection