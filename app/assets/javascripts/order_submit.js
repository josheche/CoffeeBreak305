// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


var main = function(){

var handler = StripeCheckout.configure({
    key: 'pk_test_6pRNASCoBOKtIshFeQd4XMUh',
    token: function(token) {
    $('#stripeToken').val(token.id);
    $('.stripeEmail').val(token.email);
    $('#orderform').submit();
    }
  });

  $('#submitorder').click(function(e){
    console.log('clicked submit');
      handler.open({
      name: 'CoffeeBreak',
      description: 'coffee delivery',
      amount: '100',
    });
    e.preventDefault();
  });

  $(window).on('popstate', function() {
    handler.close();
    });

  // window.addEventListener('popstate', function(){
  //   handler.close();
  //   });




  // $('.form-actions').click(function() {
  //   console.log('click');

  // });
  ;



};
$(document).ready(main);
