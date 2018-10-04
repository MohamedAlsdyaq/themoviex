<head>
  <style type="text/css">
      .custom_dark_btn{
      color: black !important;
      background-color: #fafafa !important;
    }
  </style>
</head>
<script src="/js/search_list.js"></script>

	  <div style="padding-top: 1%;" class="col-sm-7 col-xs-12 white_box" >

	  	<input id="list_search"    onkeyup="         $('#list_search').attr('onkeyup', ' ');  setTimeout(function(){
      search_list($('#list_search').val() );}, 2000); "  class="form-control " type="text" placeholder="Filter .. ">
 
    <button class="btn btn-light" onclick="results_type = '&type=movies';console.log(results_type); search_list($('#list_search').val());" type="radio" name="options" id="option2" autocomplete="off"><i class="fas fa-film"></i> Movies</button>
  </label>
 
    <button class="btn btn-light" onclick="results_type = '&type=tv';console.log(results_type); search_list($('#list_search').val()); " type="radio" name="options" id="option3" autocomplete="off"> <i class="fas fa-tv"></i> Tv series</button>

	  	<hr>

	  	<div class="lists_container">
 

	  	</div>
	  	<br>
	  </div>

  <script type="text/javascript">var results_type = '';
var query = '';
function lists(id){


 
 $.get( '/lists/get/ids', function( arr ) {
  window.arr_global_lists_ids = arr;
         lists_append(id, arr);
              })  ;

}

function lists_append(id, arr){
  $.ajax({
            type: 'GET',
            url: '/lists/get?'+query+''+results_type+'id={{$user["id"]}}&page=1',
 
            beforeSend: function() {
               
              $('.lists_container').html(' ');
        $('.lists_container').append("<img id='loader' src='/img/big_ring.gif' >");
            },
            success: function(ajax) {
              var from = ajax.from;
              from++;
              $('#loader').remove();
              window.moviex_grp_current = ajax.current;
              window.moviex_grp_last_page = ajax.last_page;
       	if(ajax)
           
              if(ajax.next_page_url !== null)
                    window.moviex_grp_next = '/lists/search?query='+query+results_type+'&page='+from;
               
 
             
              data = ajax.data;
              for(var i=0; i<ajax.per_page; i++){


                   button = ' <button id="button_list'+data[i].id+'" data-id="'+data[i].id+'" onclick="join_list('+data[i].id+')" class="btn btn-sm btn-success" > Join this list </button>';
       if(window.arr_global_lists_ids.includes(data[i].list.id)){
        button = ' <button id="button_list'+data[i].id+'" data-id="'+data[i].id+'" onclick="leave_list('+data[i].list.id+')" class="btn btn-sm custom_dark_btn" > Leave this list </button>';
       }


              $('.lists_container').append('<div class="row" > <div class="col-sm-3 col-lg-2 col-xs-4" > <img height="100" width="100" src="/lists/'+data[i].list.picture+'" > </div> <div class="col-sm-9 col-lg-10 col-xs-8" > <h4> '+data[i].list.name+' </h4> <h6>'+data[i].list.bio+' </h6> <div class="row "> <div class="col-sm-6" >  '+button+'        <kdp> '+data[i].list.type+' </kdp> </div> <div class="col-sm-4 col-xs-1"></div> <div class="col-sm-2 col-xs-4">  </div> </div> </div> </div><hr>');
            }
            $('.lists_container').append('<div data-id= "" class="user_nomore no_more_lists">  </div>');
        }

        });
}
 lists(`{{$user['id']}}`);
</script>