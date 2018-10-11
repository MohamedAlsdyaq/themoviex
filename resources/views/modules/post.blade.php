<head>
 
</head>

<?php  
if(!isset($progress))
  $progress = 0;
?>
<div onclick="post_effect(this)" class="post_thumnail post_padding" >  
  <img class="tolol img-circle" height="40" width="40" src="{{Auth::user()->picture}}"  style="float: left;" >
  <p class="tolol" style="color:#969696; font-weight: 400; font-size: 20px;  " > Post Something .. 
</div>

 <div  style="display:   none" class="  creat_post_content">
  <div class="post_padding">
  <img class="  img-circle" height="40" width="40" src="{{Auth::user()->picture}}"  style="float: left;" >
    <h5 style="font-weight: 600; font-size: 17px; color: #23527c; margin-left: 15px;" > {{Auth::user()->name}} </h5>
      <textarea onkeyup="check_length(this)" maxlength="250" style=" height: 50px; margin-top: 3%; font-weight: 900; line-height: 18px; " data-name="post_counter"  onkeypress="limit(this)" class="form" id="exampleFormControlTextarea1" rows="5"></textarea>
    </div>
      <div style="height: 100px;" id="uploading_section" >
      <div onclick="if(window.arr_uploaded_images_moviex.length > 7){return false; check('You cant upload more than 8 picture at once!')}" style="  float: left;" class="upload-btn-wrapper">
        <button class="upload"> <svg style="float:left;" class="svgIcon-use" width="25" height="25" viewBox="0 0 25 25"><g fill-rule="evenodd"><path d="M4.042 17.05V8.857c0-1.088.842-1.85 1.935-1.85H8.43C8.867 6.262 9.243 5 9.6 5.01L15.405 5c.303 0 .755 1.322 1.177 2 0 .077 2.493 0 2.493 0 1.094 0 1.967.763 1.967 1.85v8.194c-.002 1.09-.873 1.943-1.967 1.943H5.977c-1.093.007-1.935-.85-1.935-1.937zm2.173-9.046c-.626 0-1.173.547-1.173 1.173v7.686c0 .625.547 1.146 1.173 1.146h12.683c.625 0 1.144-.53 1.144-1.15V9.173c0-.626-.52-1.173-1.144-1.173h-3.025c-.24-.63-.73-1.92-.873-2 0 0-5.052.006-5 0-.212.106-.87 2-.87 2l-2.915.003z"></path><path d="M12.484 15.977a3.474 3.474 0 0 1-3.488-3.49A3.473 3.473 0 0 1 12.484 9a3.474 3.474 0 0 1 3.488 3.488c0 1.94-1.55 3.49-3.488 3.49zm0-6.08c-1.407 0-2.59 1.183-2.59 2.59 0 1.408 1.183 2.593 2.59 2.593 1.407 0 2.59-1.185 2.59-2.592 0-1.406-1.183-2.592-2.59-2.592z"></path></g></svg> <span style="line-height: 2.8; float:left; height: 25; vertical-align: center" > Upload </span></button>
        <input accept=".png, .jpg, .jpeg" onchange="upload(this)" type="file" name="myfile" />
     </div>


        <div  id="upload_target" >

        <div> </div>
        </div> </div>
 
<!-- set the thumnail of the show -->
<?php
  $url =  $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];
  $url = substr($url,13);
 
  if (strpos($url,'/tv') !== false || strpos($url,'/movie') !== false) {
   ?>
     <div style="width: 100%;min-height: 100px;border-top :1px solid #e5e5e5; " id="posting" style="" >
            
             <div  style="background-color: #fafafa; padding: 1% 2% 0 2%; margin:2% 2% 1% 2%; width: 90% !important;"   class=" show_thumnail  border-  row col-xs-12" >
                <div style="float: left;"> 
                 <img style="max-width: 45px; margin: 4px;" id="" class="poster img-responsive "   src=" ">
               </div>
              <a href="" > 
                    <h4  style="width: 100% margin-left: 0.2%" class ="movie_title" ></h4>
                </a>
                  <h6  style="    margin-top: 2%;" class="bio v_small grey" >
                    </h6>

             </div>
         </div> <?php } 
             if($_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI']  == "themoviex.com"  || $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI']  == "themoviex.com/") { ?>
               
              <input type="hidden" name=" " id="show_type" >
            <div id="linkshow" style="width: 100%; border-top :1px solid #e5e5e5;;  " >
             <input   id="searchlist" onkeyup="basic_search(`listauto`, `searchlist`, `movies_list`, `tv_list`)" style="margin-left: 15px; margin:4px; color: #969696; width: 100%; font-size: 20px; font-weight: 400; margin-left: 2%;float:left"  autocomplete="off" type="text" name="q" class="search" placeholder="Link Post to a show..">

            </div>
         
            <div   style="display: none; 
            width: 70%;
            box-shadow: 5px 5px;
            z-index: 100;
            position: absolute;
            margin-top: 4%;" id="listauto" class="  panel panel-default" style=":  ;">
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

                        <li class="list-group-item">
                            <div class='row'>
                                <div class='col-md-12'>
                                    <div id="movies_list" class=' media-middle'>
                                        <a href='#'>
                                            <img style="float: left;" class='media-object img-circle' src='http://placehold.it/40x40'>
                                          <p style="margin: 10px; float: left;" > Fdds 
                                        </a>
                                    </div>
                             
                                </div>
                            </div>
                        </li>

                          <div style="background-color: rgba(172, 172, 172, 0.11) !important; color: black; font-weight: bold;" id="fav" class="list-group-item">
                            <div class="row">
                                <div id="favorites" class="">
                                    <div class="">
                                         <b style="float: left;" >TV Series</b>
                                             <b style="font-weight: normal; font-size: 12px;  float: right;"><a id="load_tv" href="/search/tv" > load more </a></b>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <li class="list-group-item">
                            <div class='row'>
                                <div class='col-md-12'>
                                    <div id="tv_list" class=' media-middle'>
                                        <a href='#'>
                                            <img style="float: left;" class='media-object img-circle' src='http://placehold.it/40x40'>
                                          <p style="margin: 10px; float: left;" > Fdds 
                                        </a>
                                    </div>
                             
                                </div>
                            </div>
                        </li>


                       
                     
               
                    </ul>

                </div>


 
  <?php } ?>
 
<!-- last section spoiler ep and post -->
<div style="width: 100%; border-top :1px solid #e5e5e5;;  padding: 20px 0px 50px 20px; align-content: center; " class="post_action">

        <div style="float: left;" >
            
      <button onclick="post()"  style="margin-top: -10px; width: 92px; height: 42px;" class="btn btn-success btn-l" disabled > Post </button> 

             </div>
<?php

      if (strpos($url,'tv') !== false || strpos($url,'movie') !==   false) {
       ?>
        <div id="spoiler_box" style="float: left;">
 <label data-toggle="tooltip" data-placement="top" title="Please check the box if your post contains spoilers and specify episode number." style="float: left;" class="checkbox_container"> <p>Spoiler
  <input id="spoiler_checkbox" name="checked" onchange="set_ep(this)" type="checkbox" >
  <span class="checkmark"></span>
</label>

        </div>

          <?php } 

       if (strpos($url,'tv') !== false) {
         ?>
              
      <div id="ep" style="display: none; float:left;  ; " >
             <label style="float: left;margin-right: 10px;" for="checkbox6">Episode </label>
           

        <div style="max-width: 250px" class="form-group">
              <div  class="input-group">
                  <div class="input-group-btn">
                      <button id="down" class="btn btn-default" onclick=" down('0')"><span class="glyphicon glyphicon-minus"></span></button>
                  </div>
                  <input style="height: 28px !important;" type="text" id="myNumber" class="form-control" value="{{$progress}}" />
                  <div class="input-group-btn">
              <button id="up" class="btn btn-default" data-limit="" onclick="up(this)"><span class="glyphicon glyphicon-plus"></span></button>
                  </div>
              </div>
          </div>

      </div>
        <?php
          } 
          ?>
<input type="hidden" class="movie_type" value="" > 
     
               </div>


</div> <!-- Post  hidden content  -->


 

 
<script >
  $(document).ready(function(event) {
    $('input[type=checkbox]').removeAttr('checked');
  $('#target').on('keydown',function() {

  if( $.trim( $('.input-block-level').val() ).length > 2 )
      search($.trim( $('.input-block-level').val() ), 'here');
    });
  });

  function post_effect(e){

$('.creat_post_content').show();
$('.tolol').hide();
$('.post_thumnail').css('height', '0px');
$('.creat_post_content').css('height', 'auto');
$('.create_post_wrapper').css()
  }
  function post_done(e){

$('.creat_post_content').hide();
$('.tolol').show();
$('.post_thumnail').css('height', 'Auto');
$('.creat_post_content').css('min-height', 'auto');
  }
function add_to_list(id, e){
 
tv = null ;
movie = null;
if($(e).attr('data-type') ==  'tv'){
t = '<input type="hidden" value="'+tv+'" class="movie_id" > ';
ty = 'tv';
content = ' <div id="spoiler_box" style="float: left;"> <label data-toggle="tooltip" data-placement="top" title="Please check the box if your post contains spoilers." style="float: left;" class="checkbox_container"> <p>Spoiler   <input  onchange="set_ep(this)" id="spoiler_checkbox"  type="checkbox" >  <span class="checkmark"></span></label>        </div>       <div id="ep" style="display: none; float:left; ; " > <label style="float: left;margin-right: 10px;" for="checkbox6">Episode </label> <div style="max-width: 250px" class="form-group"> <div class="input-group"> <div class="input-group-btn"> <button id="down" class="btn btn-default" onclick=" down(0)"><span class="glyphicon glyphicon-minus"></span></button> </div> <input style="height: 28px !important;" type="text" id="myNumber" class="form-control" value="{{$progress}}" /> <div class="input-group-btn"> <button id="up" class="btn btn-default" data-limit="" onclick="up(this)"><span class="glyphicon glyphicon-plus"></span></button> </div> </div> </div> </div> ';
}
if($(e).attr('data-type') ==  'movie')
{t = '<input type="hidden" value="'+movie+'" class="movie_id" > ';
ty = 'movie';
content = ' <div id="spoiler_box" style="float: left;"> <label data-toggle="tooltip" data-placement="top" title="Please check the box if your post contains spoilers." style="float: left;" class="checkbox_container"> <p>Spoiler   <input   id="spoiler_checkbox"  type="checkbox" >  <span class="checkmark"></span></label>          ';
}
$('#listauto').append(t);
 $('#searchlist').html(' ');
$('#listauto').hide();
     $('#show_type').val(ty);

var url = 'https://api.themoviedb.org/3/'+ty+'/'+id+'?api_key=54f297aa644bf4f27044771fc75cbb64 ';

$.ajax({
            type: 'GET',
            url: url,
 
            beforeSend: function() {
      //  $('#load').attr("src", "img/ring.gif");
            },
            success: function(ajax) {

$('.post_action').append(content);

if(ajax.original_title)
{  name = ajax.original_title;
  movie_type = 'tv';
}
if(ajax.original_name){
  name = ajax.original_name;
  movie_type = 'movie';
}
     $('.movie_id').val(ajax.id);


$('#searchlist').replaceWith(' <div   id="posting" class=" " style="width: 100%;min-height: 100px;border-top :1px solid #e5e5e5; " >   <div  style="background-color: #fafafa; padding: 1% 2% 0 2%; margin:2% 2% 1% 2%; width: 90% !important;"   class=" show_thumnail   -dark row col-xs-12" >   <div style="float: left;">   <img style="max-width: 45px; margin: 4px;" id="" class="poster img-responsive "   src="http://image.tmdb.org/t/p/w92/'+ajax.poster_path+'"> </div>  <a href="" >  <h4  style=" margin-left: 0.2%; width:100;" id="movie_title" >'+name+'</h4> </a>      <h6  style="    margin-top: 2%;" class="bio v_small grey" >'+ajax.overview+'  </h6>  </div>    </div> ');
 }
          });
}

function set_ep(e){
      if(e.checked == true){
  $('#ep').show();
    }else{
$('#ep').hide();
   }
}
function check_length(e){

if($(e).val().length > 3)
  $('.btn-l').removeAttr('disabled' );
  else
$('.btn-l').attr('disabled', 'disabled' );    
}
</script>