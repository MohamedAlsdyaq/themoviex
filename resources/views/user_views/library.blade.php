
<?php  $uid = $user['id']; ?>

	<div id="library" style=" " class="common" >
	  <h2> {{$user['name']}}'s Library </h2>

		<div class="col-sm-9 col-md-9 col-lg-9 col-xs-9" >
			
      <input id="search_lib" onkeyup="search_lib($('#search_lib').val(), g_type)" height="50px;" type="text" name="" class="form-control" placeholder="Search this library..." >
			<div class="col-sm-2 col-xs-2">
 			</div>

<div class="col-sm-6 col-xs-6 "></div>

<div class="col-sm-4 col-xs-4">
	<div class="col-xs-1" > </div>
<div class="col-xs-4" ><h6> Sort by </h6> </div>
<div class="col-xs-6" >
	<select class="select">
  <option onclick=" sort = 'shows.show_name' ; 
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1'); "  >Title</option>
  <option onclick=" sort = 'rate' ; 
library('/get/library/{{$uid}}?sort='+sort+status+'&page=1');" >Rating</option>
  <option onclick=" sort = 'shows.show_date' ; 
library('/get/library'+g_type+'/{{$uid}}?'+status+'&page=1'); " >Release Date</option>
  <option onclick=" sort = 'finished_at' ; 
library('/get/library'+g_type+'/{{$uid}}?sort=finished_at'+status+'&page=1'); " >Date Finished</option>
  <option onclick=" sort = 'updated_at' ; 
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1'); " >Date updated</option>
  <option onclick=" sort = 'started_at' ; 
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1'); " >Date Started</option>
</select>
</div>


 </div>

<br>
<div id="set_modals" ></div>
			<div class="libs">
 	
				</div>
       
		</div>


		<div class="col-sm-3 white_box col-md-3 col-lg-3 col-xs-3" >
			<select style="font-size: 15px;"  class="select custom_btns">
  <option onclick=" g_type = 'tv';  
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1');" class="custom_btns">Series</option>
  
  <option onclick=" g_type = ''; 
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1');" class="custom_btns">Movies</option>
</select>
			<button style="opacity: 1" onclick="active_btn(this); status = ''; 
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1');" class="btn custom_btns btn-primary" >All </button>

      <button onclick="active_btn(this);  status = '&status=completed'; 
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1');" class="btn custom_btns btn-warning" >Completed </button>

		<button onclick="active_btn(this);  status = '&status=watching'; 
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1');" class="btn custom_btns btn-info" >Currently watching</button>

			<button onclick="active_btn(this);  status = '&status=watchlist'; 
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1');" class="btn custom_btns btn-success" >Watch-List</button>

			<button onclick="active_btn(this); status = '&status=dropped'; 
library('/get/library'+g_type+'/{{$uid}}?sort='+sort+status+'&page=1');" class="btn custom_btns btn-danger" >Dropped</button>

		</div>

	</div>




<script>
     $.ajax({
          type: 'GET',
          dataType: "json",
          url: '/libraries/get/entries_json',
           
          success: function(e){ 
          window.globla_tv_lib_entry = e[0];
          window.globla_movies_lib_entry = e[1];

        }
          });
 var g_type = 'tv';
 var sort = 'updated_at';
 var status = '';
  function active_btn(e){
  
    $('.custom_btns').css('opacity', '0.2');
    $(e).css('opacity', '1');
  }
function search_lib(q, g_type = 'tv'){
 
$.ajax({

    //do a call to the list table and add the movie as 
    url: "/search/library"+g_type+"/{{$user['id']}}?q="+q+"&id={{$user['id']}}",
    data: data,
    type: 'GET',
    beforeSend: function(){
  $('.libs').html(' <img class="loader" src="/img/big_ring.gif" > ');

    }, 
    success: function(ajax){
 
$('.loader').remove();  
data = ajax.data; 
 for(var i=0; i<15; i++ ){
 
   lib_entry(data[i]);
 } // end for
  
}
  });

 
}
function lib_entry(data){
 me = ' ' ;
if($('#my_id').val() != {{$user['id']}})
    me = 'disabled';

  content = '<div  style="font-size: 14px !important;" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true" id="lib'+data.id+'"> <div style="width:500px; " class="modal-dialog" role="document"> <div class="modal-content"> <div class="modal-header"> <h2 style=" margin:0px !important; text-align: center;" id="movie_title" > '+data.show.show_name+'<hr style="margin: 0px 0 10px 0; width: 100%" > <div class="" > <div style="padding-left: 10%;" class=" " > <div > <form id="update_form'+data.id+'" style="font-size:14px; font-weight: normal" > <fieldset style="border: none" '+me+'>';
  
 content +='    <input id="entry_id" type="hidden" name="id"  value="'+data.id+'">';
 
  content += ' <div class=" row"> <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Status</label> <div class="col-sm-8"> <select name="status" style="color: black !important" style="" class="butons custom-select mr-sm-2" id="inlineFormCustomSelect"> <option value="watching" name="started" >Currently watching</option> <option value="completed" name="completed" >Completed</option> <option value="dropped" name="dropped" >Dropped</option> </select> </div> </div>';
 
 finished_at = data.finished_at;
  started_at = data.started_at;
  note = data.note;
  progress = data.ep_count;

content += ' <br> <div class="f row"> <label for="colFormLabel" class="col-sm-2 col-form-label">Progress</label> <div class="col-sm-8"> <div class=" "> <input name="progress" style="width:80%;float: left;" type="number" max="'+data.show.ep_count+'" id="number" type="number" class="form-control touchspin" value="'+progress+'"><div style="height: 36px; width: 50px; background-color: #ecf0f1; float: right;" id="of_ep">'+data.show.ep_count+'</div> </div> </div> </div> <br> <div class="f row"> <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg"> </label> <div class="col-sm-8"> <select name="rewatch" style="color: black !important" class="butons selectpicker"> <option data-name="0" >0</option> <option data-name="1" >1</option> <option data-name="2" >2</option> </select> </div> </div> <br> <div class=" row"> <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Started Date</label> <div class="col-sm-8"> <input placeholder="'+started_at+'" name="started_at" type="date" class="form-control " > </div> </div> <br> <div class=" row"> <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Finished Date</label> <div class="col-sm-8"> <input placeholder="'+finished_at+'" value="" name="finished_at" type="date" class="form-control " > </div> </div> <br> <div class=" row"> <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Notes</label> <div class="col-sm-8"> <textarea name="note" style=" resize: none" class="form-control" id="" rows="3"> '+note+' </textarea> </div> </div> </fieldset></form> </div></div><hr style="height: 2px;" ><div style="height: 30px; margin-bottom: 10px;"> <button onclick="delete_entry()" style="float: left" class="btn btn-default"><i class="fa fa-trash"></i> </button> <button onclick="update_entry('+data.id+')" style="float: right" class="btn btn-success"> Save Changes </button>  </div> </div> </div> </div> </div>';

$('#set_modals').append(content);
loader = 0;
if(data.type == 'tv')
var loader = parseInt(data.ep_count) / parseInt(data.show.ep_count) * 100;
anchors = '<div class="bordered_btn"><a href="/'+window.moviex_data_type+'/'+data.show_id+'"><i style="color:grey;margin-top:4px;" class="fa fa-arrow-right" aria-hidden="true"> </i></a></div>';

anchors += '<div  class="bordered_btn" style="width:85px;"><span data-toggle="modal" data-target="#lib'+data.id+'"  > Edit Entry </span></div>';

if($('#my_id').val() != {{$user['id']}}){
  
  anchors = '<a class="btn btn-success dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Add to library </a>  <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4"><li role="presentation"><a role="menuitem" type="button"  type="button"  tabindex="-1" href="#" onclick="add_to_lib('+data.id+','+data.show.show_pic+'`, `'+data.show.show_name+'`, `watching`, null, '+data.show.ep_count+');" >Watching</a> </li>  <li role="presentation"><a role="menuitem" type="button"  type="button"  tabindex="-1" href="#" onclick="add_to_lib('+data.id+','+data.show.show_pic+'`, `'+data.show.show_name+'`, `completed`, null, '+data.show.ep_count+');" >Completed</a> </li>  <li role="presentation"><a role="menuitem" type="button"  tabindex="-1" href="#"  onclick="add_to_lib('+data.id+',' +data.show.show_pic+'`, `'+data.show.show_name+'`, `watchlist`, null, '+data.show.ep_count+');" class="dropdown-item" type="button">watch List</a> </li> </ul>';

}
currentEp = ' ';

if(data.type == 'tv')
  currentEp = '<span style="margin:5px;float:left; color:grey; font-size:10px" > Ep.'+data.ep_count+' </span> <span style="margin:5px;float:right; color:grey; font-size:10px">'+data.rate+'</span>';

  $('.libs').append( '  <div data-toggle="popover" data-placement="right" data-original-title="<h6>'+data.show.show_name + '<span style= &quot;color:#dddddd; &quot; > '+ get_year(data.show.show_date)+'</span></h6><small style= &quot; color: #dddddd; &quot; ><h5><span style=&quot;float:left;color:red;margin-right:2px;;&quot; class=&quot; fa fa-heart&quot; ></span>  popularity: '+Math.round(data.show.show_popularity)+'<sp style=&quot;float:right;&quot; ><span style=&quot;color:yellow;margin:2px;&quot; class=&quot;fa fa-star&quot; ></span>   Av Rating : '+data.show.show_rating+'</sp></small></h5>" data-content="<div ><h6 style= &quot; font-weight:normal !important;  font-size: 12px; &quot;  >'+data.show.show_bio+'</h6></div>" onclick="go_to_page("/movie/'+data.show_id+'")" class="search_poster" style="height: 255px;background-color: #2c3e50;max-width: 110px;margin-left: 7px;border-radius: 3px;"> <div id="searc_poster_content" style=" background-image: url(http://image.tmdb.org/t/p/w154'+data.show.show_pic+');" > <div class="bottom dropdown"> '+anchors+'</div></div> <div id="#p" > <div class="loaded" ><div style="width: '+loader+'%" class="loaded2" ></div></div> </div> '+currentEp+'</div> </div></div>');
}

function library(url, reload=null){
console.log(reload);
if(reload == null)
  $('.libs').html(' ');
 
$.ajax({

    //do a call to the list table and add the movie as 
    url: url,
    
    type: 'GET',
    beforeSend: function(){
  $('.libs').append('<img class="loader" src="/img/loaderIco.gif" style="display:block; margin:auto" > ')
    }, 
    success: function(ajax){
      $('.loader').remove();
window.next_page_number = ajax.next_page_url;
window.moviex_data_global_current = ajax.current_page;
if(ajax.next_page_url !== null)
window.moviex_data_global_next = ajax.next_page_url+status+'&sort='+sort;


data = ajax.data; 
 for(var i=0; i<15; i++ ){
 
   lib_entry(data[i]);
 } // end for
 $('.libs').append(' <div class=" col-xs-12 libs_no " > </div> ');
}
});

}

 

library('/get/library'+g_type+'/{{$user["id"]}}?sort='+sort+status+'&page=1');
 
    //$('.no_more').removeClass('no_more');
  $(window).on(' scroll', function() {

 

   
     if( $('.libs_no').isInViewport() ){

     $('.libs_no').removeClass('libs_no'); 
    library(window.next_page_number+'&sort='+sort+status, 'true'  );
  }

 

});
</script>