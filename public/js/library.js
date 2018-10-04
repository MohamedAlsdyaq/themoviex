function add_to(e){
	$('#'+e).hide();
add_to_lib( );
$('#rating_section').css('display', 'block');
if(e == 'completed')
$('.butons').hide();
if(e == 'watching')
	$('#watchlist').hide();
	//ajax call
$('.add-to-library').html('Add Rating');
}

function watchList(e){
add_to_list('WatchList', 0);
$('.butons').hide();
$('#rating_section').show();
  $(e).hide();
	$('.add-to-library').html('Edit Entry');
	//action taken // 
}
function started(e){
add_to_list('started', 0);
$('.butons').hide();
$('#rating_section').show();
  $(e).hide();
  $('.add-to-library').html('Edit Entry');
  //action taken // 
}
