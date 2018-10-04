<head>
  <style type="text/css">
      .custom_dark_btn{
      color: black !important;
      background-color: #fafafa !important;
    }
  </style>
</head>
	<div id="groups"   class=" " >

	  <div style="padding-top: 1%;" class="col-sm-7 col-xs-12 white_box" >
      
      <input id="group_search" onkeydown="   setTimeout(function(){ groups($('#group_search').val()) }, 1000);"  class="form-control " type="text" placeholder="Filter .. ">
 
    <button class="btn btn-light" onclick="results_type = '&type=movies';  groups($('#group_search').val());" type="radio" name="options" id="option2" autocomplete="off"><i class="fas fa-film"></i> Movies</button>
  </label>
 
    <button class="btn btn-light" onclick="results_type = '&type=tv'; groups($('#group_search').val()); " type="radio" name="options" id="option3" autocomplete="off"> <i class="fas fa-tv"></i> Tv series</button>

      <hr>

      <div class="groups_container">
 

      </div>
      <br>
      <p href="#" style="text-align: center;" >Back to Top
    </div>
	</div>

  <script type="text/javascript">var results_type = '';
var query = '';
function groups(id){


 
 $.get( '/groups/get/ids', function( arr ) {
  window.arr_global_groups_ids = arr;
         groups_append(id, arr);
              })  ;

}

function groups_append(id, arr){
  $.ajax({
            type: 'GET',
            url: '/groups/get?'+query+''+results_type+'id={{$user["id"]}}&page=1',
 
            beforeSend: function() {
               
              $('.groups_container').html(' ');
        $('.groups_container').append("<img id='loader' src='/img/big_ring.gif' >");
            },
            success: function(ajax) {
              var from = ajax.from;
              from++;
              $('#loader').remove();
              window.moviex_grp_current = ajax.current;
              window.moviex_grp_last_page = ajax.last_page;
       
           
              if(ajax.next_page_url !== null)
                    window.moviex_grp_next = '/groups/search?query='+query+results_type+'&page='+from;
               
 
             
              data = ajax.data;
              for(var i=0; i<ajax.per_page; i++){


                   button = ' <button id="button_group'+data[i].id+'" data-id="'+data[i].id+'" onclick="join_group('+data[i].id+')" class="btn btn-sm btn-success" > Join this Group </button>';
       if(window.arr_global_groups_ids.includes(data[i].group.id)){
        button = ' <button id="button_group'+data[i].id+'" data-id="'+data[i].id+'" onclick="leave_group('+data[i].group.id+')" class="btn btn-sm custom_dark_btn" > Leave this Group </button>';
       }


              $('.groups_container').append('<div class="row" > <div class="col-sm-3 col-lg-2 col-xs-4" > <img height="100" width="100" src="/groups/'+data[i].group.picture+'" > </div> <div class="col-sm-9 col-lg-10 col-xs-8" > <h4> '+data[i].group.name+' </h4> <h6>'+data[i].group.bio+' </h6> <div class="row "> <div class="col-sm-6" >  '+button+'        <kdp> '+data[i].group.type+' </kdp> </div> <div class="col-sm-4 col-xs-1"></div> <div class="col-sm-2 col-xs-4">  </div> </div> </div> </div><hr>');
            }
            $('.groups_container').append('<div data-id= "" class="user_nomore no_more_groups">  </div>');
        }

        });
}
 groups(`{{$user['id']}}`);
</script>