$(document).ready(function(){




$('li').first().show();
$('.btn').on('click', function(e){
  e.preventDefault();
  $.post('/guess', { round_id: $('[name="round_id"]').val(), guess: $('[name="user_guess"]').val(), card_id: $('li').find('span').attr('id')})
 

});
// $('li').hide();







});
