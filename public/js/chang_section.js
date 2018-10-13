function change_setting_section(evt, name){
 var i, tabcontent, tablinks;

    tabcontent = document.getElementsByClassName("common2");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    tablinks = document.getElementsByClassName("w3-bar-item");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace("sg_active", "");
    }
    document.getElementById(name).style.display = "block";
    evt.currentTarget.className += " sg_active";
  
}
function fav_toggle(evt, name){
 var i, tabcontent, tablinks;

    tabcontent = document.getElementsByClassName("common3");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    tablinks = document.getElementsByClassName("w3-bar-item");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace("active_fav", "");
    }
    document.getElementById(name).style.display = "block";
    evt.currentTarget.className += " active_fav";
  
}

function change_edit_section(evt, name){
 var i, tabcontent, tablinks;

    tabcontent = document.getElementsByClassName("common2");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    tablinks = document.getElementsByClassName("w3-bar-item");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace("stng_active", "");
    }
    document.getElementById(name).style.display = "block";
    evt.currentTarget.className += " stng_active";
  
}

var api_key = '54f297aa644bf4f27044771fc75cbb64';
function change_section(evt, name) {
 var i, tabcontent, tablinks;

    tabcontent = document.getElementsByClassName("common");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none" ;
    }

    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace("current_tab", "");
    }
    document.getElementById(name).style.display = "block";
    evt.currentTarget.className += " current_tab";
     var movie_id = window.location.href;
  movie_id = movie_id.split('movie/');
 type = 'movie';
  var id = movie_id[1];
     if(window.location.href.indexOf("?") > -1) {
  movie_id = movie_id[1].split('?');
  var id = movie_id[0];
}

   if(window.location.href.indexOf("tv") > -1) // This doesn't work, any suggestions?
    {
       var movie_id = window.location.href;
  movie_id = movie_id.split('tv/');
  var id = movie_id[1];
     if(window.location.href.indexOf("?") > -1) {
  movie_id = movie_id[1].split('?');
  var id = movie_id[0];
}
  type = 'tv';
    }

    if(name != 'summary')
    window[name](id, type);

}
function change_section_user(evt, name, id) {
  if(name == 'activity')
    $('#render').html('<div id="activity" class=" "> <div class="col-sm-1 col-md-1 col-xs-1"></div><div class="col-sm-7 col-md-7 col-xs-7"> <div id="posts_loading"> <div class="col-sm-12 col-md-12 _4-u2 mbm _2iwp _4-u8" > <div class="_2iwo" data-testid="fbfeed_placeholder_story"> <div class="_2iwq"> <div class="_2iwr"></div> <div class="_2iws"></div> <div class="_2iwt"></div> <div class="_2iwu"></div> <div class="_2iwv"></div> <div class="_2iww"></div> <div class="_2iwx"></div> <div class="_2iwy"></div> <div class="_2iwz"></div> <div class="_2iw-"></div> <div class="_2iw_"></div> <div class="_2ix0"></div> </div> </div></div> </div><div class=" "><div class=" "><div id="modal_target"></div><!-- code start --><!-- code end --></div></div></div><div class="col-sm-4 col-md-4 col-xs-4"> <div id="gettin_started"> <h4 class="text-center"> Getting Started on Moviex </h4> <hr style="margin: 2px"><img src="/img/big_ring.gif"  style="width:100px" > </div> <h4 class="panel- "> About Me </h4> <img src="/img/big_ring.gif" style="width:100px" ></div></div>');
    else
     $('#render').html('<img src="/img/big_ring.gif"> ');
 
    $('.current_tab').removeClass('current_tab');
    console.log(this)
  //  evt.currentTarget.className += " current_tab";
$('#'+name+'btn').addClass('current_tab');
    $.ajax({

      url: '/load/section/'+id+'?section='+name,
 
    type: 'GET',
    beforeSend: function(){
    }, 
    success: function(d){
     $('#render').html(d);
    }

    });
    //var stateObj = { foo: "bar" };
history.pushState(null, '' , '/profile/'+id+'/'+name);
 

}
function imageExists(image_url){


 var http = jQuery.ajax({
    type:"HEAD",
    url: image_url,
    async: false
  })
  return http.status == 200;
      // this will return 200 on success, and 0 or negative value on error
}

function gallery(id, type){


  var url = 'https://api.themoviedb.org/3/'+type+'/'+id+'/images?api_key='+api_key;
    $.ajax({
        type: 'GET',
        url: url,
        jsonpCallback: 'testing',
  
       beforeSend: function() {
         $('#gallery').html('<img class="loading" src="/img/big_ring.gif" >');
            },
        success: function(ajax) {
           $('#gallery').html('<h4> Gallery </h4>');
            console.log(ajax);
              var images = ajax.posters;
             $('.loading').hide();


   

            for(i=0; i<images.length; i += 1){
              $('#gallery').append('<a href="http://image.tmdb.org/t/p/w500'+images[i].file_path+'" data-lity  ><img class="max" src="http://image.tmdb.org/t/p/w185'+images[i].file_path+'"></a>');
                 }
          if(images.length == 0)
            $('#gallery').html('<spa');
 }
            //
         
              });
}
 

function recommendation(id, type){
 
   
  var url = 'https://api.themoviedb.org/3/'+type+'/'+id+'/recommendations?api_key='+api_key+'&language=en-US&include_image_language=en&page=1';
   console.log(url);
 
    $.ajax({
        type: 'GET',
        url: url,
        jsonpCallback: 'testing',
        contentType: 'application/json',
        dataType: 'jsonp',
            xhrFields: {
        withCredentials: true
    },
       beforeSend: function() {
         $('#recommendation').html('<div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> <div class="custom_card2">  <img style="background-color: lightgrey" width="110" height="190" src="ht">   <h5  class="text-center"><small>         <small><h5></div> ');   },
        success: function(ajax) {
         console.log(ajax);
              $('#recommendation').html(' ');
    var data = ajax.results;
    if(type == 'movie' ){
    for(i=0; i<20; i++){
          if(data[i].original_language != 'en')
      continue;
      bio = data[i].overview.replace(/"/g, '`');
        $('#recommendation').append('<div data-toggle="popover" data-placement="left" data-original-title="<h6>'+data[i].title + '<span> '+ get_year(data[i].release_date)+'</span></h6><h6><span style=&quot;float:left;color:red;margin-right:2px;;&quot; class=&quot; fa fa-heart&quot; ></span>  popularity: '+Math.round(data[i].popularity)+'<sp style=&quot;float:right;&quot; ><span style=&quot;color:yellow;margin:2px;&quot; class=&quot;fa fa-star&quot; ></span>   Av Rating : '+data[i].vote_average+'</sp></h6>" data-content="<div ><h6>'+bio+'</h6></div>" onclick="go_to_page("/movie/'+data[i].id+'")" class="search_poster"> <div id="searc_poster_content" style=" background-image: url(http://image.tmdb.org/t/p/w154'+data[i].poster_path+');" > <div class="bottom dropdown"> <a class="btn btn-success dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Add to library </a>  <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4"> <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="recommended_add(`'+type+'`,'+data[i].id+', `http://image.tmdb.org/t/p/w154'+data[i].poster_path+'`, `'+data[i].title+'`, `completed`, null);" >Completed</a> </li>  <li role="presentation"><a role="menuitem" tabindex="-1" href="#"  onclick="recommended_add(`'+type+'`,'+data[i].id+', `http://image.tmdb.org/t/p/w154'+data[i].poster_path+'`, `'+data[i].title+'`, `watchlist`, null);" class="dropdown-item" type="button">watch List</a> </li> </ul></div></div><div class="ellipsis"><a href="/movie/'+data[i].id+'"><h6>'+data[i].title+'</h6></a></div></div>');
    }
  }
        if(type == 'tv' ){
    for(i=0; i<20; i++){
          if(data[i].original_language != 'en')
      continue;
      bio = data[i].overview.replace(/"/g, '`');
        $('#recommendation').append('<div data-toggle="popover" data-placement="left" data-original-title="<h6>'+data[i].original_name + '<span> '+ get_year(data[i].first_air_date)+'</span></h6><h6><span style=&quot;float:left;color:red;margin-right:2px;;&quot; class=&quot; fa fa-heart&quot; ></span>  popularity: '+Math.round(data[i].popularity)+'<sp style=&quot;float:right;&quot; ><span style=&quot;color:yellow;margin:2px;&quot; class=&quot;fa fa-star&quot; ></span>   Av Rating : '+data[i].vote_average+'</sp></h6>" data-content="<div ><h6>'+bio+'</h6></div>" onclick="go_to_page("/movie/'+data[i].id+'")" class="search_poster"> <div id="searc_poster_content" style=" background-image: url(http://image.tmdb.org/t/p/w154'+data[i].poster_path+');" > <div class="bottom dropdown"> <a class="btn btn-success dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Add to library </a>  <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4"><li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="recommended_add(`'+type+'`,'+data[i].id+', `http://image.tmdb.org/t/p/w154'+data[i].poster_path+'`, `'+data[i].original_name+'`, `watching`, null);" >Watching</a> </li>  <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="recommended_add(`'+type+'`,'+data[i].id+', `http://image.tmdb.org/t/p/w154'+data[i].poster_path+'`, `'+data[i].original_name+'`, `completed`, null);" >Completed</a> </li>  <li role="presentation"><a role="menuitem" tabindex="-1" href="#"  onclick="recommended_add(`'+type+'`,'+data[i].id+', `http://image.tmdb.org/t/p/w154'+data[i].poster_path+'`, `'+data[i].original_name+'`, `watchlist`, null);" class="dropdown-item" type="button">watch List</a> </li> </ul></div></div><div class="ellipsis"><a href="/tv/'+data[i].id+'"><h6 >'+data[i].original_name+'</h6></a></div></div>');
    }
  }



          }
              });
}

function staff(id, type){
  
  var url = 'https://api.themoviedb.org/3/'+type+'/'+id+'/credits?api_key='+api_key+'&language=en-US&include_image_language=en';
 
    $.ajax({
        type: 'GET',
        url: url,
        jsonpCallback: 'testing',
        contentType: 'application/json',
        dataType: 'jsonp',
            xhrFields: {
        withCredentials: true
    },
       beforeSend: function() {
           $('#staff').html('<img class="loading" src="/img/big_ring.gif" >');
            },
        success: function(ajax) {
              $('.loading').hide();
            console.log(ajax);
              var crew = ajax.crew;
              var cast = ajax.cast;
            
              if(crew){
                $('#staff').append('<h4> Staff </h4>');
              for(i=0; i<cast.length / 2; i++){
                image_url = "http://image.tmdb.org/t/p/w154"+cast[i].profile_path+"";
                if(imageExists(image_url))
                 $('#staff').append(' <div class="app-img-wrapper"><img src="http://image.tmdb.org/t/p/w154'+cast[i].profile_path+'" class="img-responsive app-img" alt="App"><h4 class="app-img-text">'+cast[i].character + ' (<small>'+cast[i].name+'</small>)'+'</h4></div> ');
                else
                  continue;
                 }

$('#staff').append('<h4> Crew </h4>');
              for(i=0; i<crew.length / 2; i++){
                image_url = "http://image.tmdb.org/t/p/w154"+crew[i].profile_path+"";
                if(imageExists(image_url))
                  $('#staff').append('<div class="app-img-wrapper">  <img src="http://image.tmdb.org/t/p/w154'+crew[i].profile_path+'" class="img-responsive app-img" alt="App"><h4 class="app-img-text">'+crew[i].name + ' (<small>'+crew[i].job+'</small>)'+'</h4></div> ');
                else
                 {
 $('#crew').append('<h3 class="text-center" >No Data Avaliable</h3>');
                  continue;

                }
                   }
            }
          }
              });
}
