$(document).ready(function(){



var li_shown = $('li').first();
li_shown.show();
$('.btn').on('click', function(e){
  e.preventDefault();
  $.post('/guess', { round_id: $('[name="round_id"]').val(), guess: $('[name="user_guess"]').val(), card_id: $('li').find('span').attr('id')}).done(function(response){
    if (response.guess == false) {
      li_shown.append('<p>You\'re Wrong!!!</p>')
    }
    if (response.guess == true){
      li_shown('<p>You\'re Right!!!</p>')
    }
  });
  
  li_shown.hide();
  li_shown.next().show();
  li_shown = li_shown.next();

});








});
