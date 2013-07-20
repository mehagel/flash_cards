$(document).ready(function(){



$('li').first().show();

$('.btn').on('click', function(e){
  e.preventDefault();
  console.log($('li').find('span').attr('id'))
  $.post('/guess', { round_id: $('[name="round_id"]').val(), guess: $('[name="user_guess"]').val(), card_id: $('li').find('span').attr('id')}).done(function(response){
    if (response.guess == "0") {
      console.log(false)
      // $('li').append('<p>You\'re Wrong!!!</p>')
      // $('li').hide();
      // $('li').next().show();
    }
    if (response.guess == "1"){
      console.log(true)
      // $('li').append('<p>You\'re Right!!!</p>')
      //  $('li').hide();
      // $('li').next().show();
    }
  });
  
  

});








});
