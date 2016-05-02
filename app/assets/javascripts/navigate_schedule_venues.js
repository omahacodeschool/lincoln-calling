// used in events/index.html.erb view

// $("#schedule-prev").click(function(e){
//   var $first_visible = $(".venue_box__text:visible:first");
//   var $first_hidden = $first_visible.prev(".venue_box__text");
//   var $last_visible = $(".venue_box__text:visible:last");

//   var $shows_to_hide = $(".venue_shows--hide-" + $last_visible.data("id"))
//   var $shows_to_reveal = $(".venue_shows--hide-" + $first_hidden.data("id"))
  
//   if ($first_hidden.length > 0){
//     $last_visible.hide();
//     $first_hidden.show();
//     $shows_to_hide.hide();
//     $shows_to_reveal.show();
//   }
// });

// $("#right_tri_box").click(function(e){
//   var $first_visible = $(".venue_box__text:visible:first");
//   var $last_visible = $(".venue_box__text:visible:last");
//   var $first_hidden = $last_visible.next(".venue_box__text");

//   var $shows_to_hide = $(".venue_shows--hide-" + $first_visible.data("id"))
//   var $shows_to_reveal = $(".venue_shows--hide-" + $first_hidden.data("id"))

//   if ($first_hidden.length > 0){
//     $first_visible.hide();
//     $first_hidden.show();
//     $shows_to_hide.hide();
//     $shows_to_reveal.show();
//   }
// });