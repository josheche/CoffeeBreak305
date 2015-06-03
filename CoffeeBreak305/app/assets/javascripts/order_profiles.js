// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



var main = function(){

  // price-explanation fade-in
  $(".product-cost").mouseover(function(){
    // determines position of mouseover element
    var offsets = $(this).offset();
    var top = offsets.top;
    var left = offsets.left;
    // displays price-explanation div relative to element position
    $('#price-explanation').css({'top':top, 'left':(left + 145)}).fadeIn('slow');
  });

  // price-explanation fade-out
  $(".product-cost").mouseout(function(){
    $('#price-explanation').fadeOut('slow');
  });

  // captures product_id of selected product (via invisible field p['id'])
  $('.selected_product').click(function(){
    selected_prod_id = $(this).parent().next().text();
    $('#test').val(selected_prod_id);
  });

};

$(document).ready(main);