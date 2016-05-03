// used in events/index.html.erb view

if(document.getElementById("day_picker_box") != null || document.getElementById("day_picker_box") != undefined){

  window.onload = screenSize;
  window.onresize = screenSize;

  function screenSize(){
    var screen_width = window.innerWidth;
    var show_two = 420;
    var show_three = 560;
    var show_four = 740;
    var show_five = 980;

    if (screen_width > show_five){
      $(".venue_box__text").slice(0, 5).show();
      $(".venue_box__text").slice(5, -1).hide();
    } else if (screen_width > show_four){
      $(".venue_box__text").slice(0, 4).show();
      $(".venue_box__text").slice(4, -1).hide();
    } else if (screen_width > show_three){
      $(".venue_box__text").slice(0, 3).show();
      $(".venue_box__text").slice(3, -1).hide();
    } else if (screen_width > show_two){
      $(".venue_box__text").slice(0, 2).show();
      $(".venue_box__text").slice(2, -1).hide();
    };
  };

  $("#schedule-prev").click(function(e){
    var $first_visible = $(".venue_box__text:visible:first");
    var $first_hidden = $first_visible.prev(".venue_box__text");
    var $last_visible = $(".venue_box__text:visible:last");

    var $shows_to_hide = $(".venue_shows--hide-" + $last_visible.data("id"))
    var $shows_to_reveal = $(".venue_shows--hide-" + $first_hidden.data("id"))
    
    if ($first_hidden.length > 0){
      $last_visible.hide();
      $first_hidden.show();
      $shows_to_hide.hide();
      $shows_to_reveal.show();
    }
  });

  $("#schedule-next").click(function(e){
    var $first_visible = $(".venue_box__text:visible:first");
    var $last_visible = $(".venue_box__text:visible:last");
    var $first_hidden = $last_visible.next(".venue_box__text");

    var $shows_to_hide = $(".venue_shows--hide-" + $first_visible.data("id"))
    var $shows_to_reveal = $(".venue_shows--hide-" + $first_hidden.data("id"))

    if ($first_hidden.length > 0){
      $first_visible.hide();
      $first_hidden.show();
      $shows_to_hide.hide();
      $shows_to_reveal.show();
    }
  });

};