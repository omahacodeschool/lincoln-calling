if(document.getElementById("day_picker_box") != null || document.getElementById("day_picker_box") != undefined){
  //scrolling left and right between venues on the schedule view
  var screen_width = window.innerWidth;
  var show_two = 420;
  var show_three = 560;
  var show_four = 740;
  var show_five = 980;

  var left_tri_box = document.getElementById("left_tri_box");
  var right_tri_box = document.getElementById("right_tri_box");
  var thursday_button = document.getElementById("thurs");
  var friday_button = document.getElementById("fri");
  var saturday_button = document.getElementById("sat");

  thursday_button.addEventListener("click", function(){
    console.log("THURSDAY CLICK DETECTED");
    var all_shows = document.getElementById("Thursday_shows").getElementsByClassName("venue_shows");
  });

  friday_button.addEventListener("click", function(){
    console.log("FRIDAY CLICK DETECTED");
    var all_shows = document.getElementById("Friday_shows").getElementsByClassName("venue_shows");
  });

  saturday_button.addEventListener("click", function(){
    console.log("SATURDAY CLICK DETECTED");
    var all_shows = document.getElementById("Saturday_shows").getElementsByClassName("venue_shows");
  });

  if (all_shows == undefined){
    var all_shows = document.getElementById("Thursday_shows").getElementsByClassName("venue_shows");
  };
  var all_venues = document.getElementsByClassName("venue_box__text");
  var events_hidden_right = Array.prototype.slice.call(all_shows);
  var venues_hidden_right = Array.prototype.slice.call(all_venues);
  var venues_display = [];
  var venues_hidden_left = [];
  var events_display = [];
  var events_hidden_left = [];

  if (screen_width > show_five){
    var i = 1
    while (i <= 5){ 
      events_display.push(events_hidden_right[0]);
      events_hidden_right.shift();
      venues_display.push(venues_hidden_right[0]);
      venues_hidden_right.shift();
      i++;
    };
  } else if (screen_width > show_four){
    var i = 1
    while (i <= 4){
      events_display.push(events_hidden_right[0]);
      events_hidden_right.shift();
      venues_display.push(venues_hidden_right[0]);
      venues_hidden_right.shift();
      i++;
    };
  } else if (screen_width > show_three){
    var i = 1
    while (i <= 3){
      events_display.push(events_hidden_right[0]);
      events_hidden_right.shift();
      venues_display.push(venues_hidden_right[0]);
      venues_hidden_right.shift();
      i++;
    };
  } else if (screen_width > show_two){
    var i = 1
    while (i <= 2){
      events_display.push(events_hidden_right[0]);
      events_hidden_right.shift();
      venues_display.push(venues_hidden_right[0]);
      venues_hidden_right.shift();
      i++;
    };
  };

  // ____________________left click_________________________________

  left_tri_box.addEventListener("click", function(){
    console.log("LEFT CLICK DETECTED");

    if (events_hidden_left[0] != undefined){
      var move_one = events_display.pop();
      events_hidden_right.unshift(move_one);
      var move_two = events_hidden_left.pop();
      events_display.unshift(move_two);
      var move_three = venues_display.pop();
      venues_hidden_right.unshift(move_three);
      var move_four = venues_hidden_left.pop();
      venues_display.unshift(move_four);
    };

    var x = 0;
    while (x < events_hidden_right.length) {
      var right_venue_split = events_hidden_right[x].className.split("").slice(-1);
      var right_class_name = "hide-" + right_venue_split;
      var right_venue_name_split = venues_hidden_right[x].className.split("").slice(-1);
      var right_venue_name = "text--" + right_venue_name_split;      

      var i = 0
      while (i < all_shows.length){
        var class_in_loop = all_shows[i].className;
        var venue_in_loop = all_venues[i].className;
        if (class_in_loop.indexOf(right_class_name) != -1){
          all_shows[i].style.display = "none";
        };
        if (venue_in_loop.indexOf(right_venue_name) != -1){
          all_venues[i].style.display = "none";
        };
        i++;
      };
      x++;
    };
    var x = 0;
    while (x < events_hidden_left.length) {
      var left_venue_split = events_hidden_left[x].className.split("").slice(-1);
      var left_class_name = "hide-" + left_venue_split;
      var left_venue_name_split = venues_hidden_left[x].className.split("").slice(-1);
      var left_venue_name = "text--" + left_venue_name_split;

      var i = 0
      while (i < all_shows.length){
        var class_in_loop = all_shows[i].className;
        var venue_in_loop = all_venues[i].className;
        if (class_in_loop.indexOf(left_class_name) != -1){
          all_shows[i].style.display = "none";
        };
        if (venue_in_loop.indexOf(left_venue_name) != -1){
          all_venues[i].style.display = "none";
        };
        i++;
      };
      x++;
    };
    var x = 0;
    while (x < events_display.length) {
      var display_venue_split = events_display[x].className.split("").slice(-1);
      var display_class_name = "hide-" + display_venue_split;
      var display_venue_name_split = venues_display[x].className.split("").slice(-1);
      var display_venue_name = "text--" + display_venue_name_split;

      var i = 0
      while (i < all_shows.length){
        var class_in_loop = all_shows[i].className;
        var venue_in_loop = all_venues[i].className;
        if (class_in_loop.indexOf(display_class_name) != -1){
          all_shows[i].style.display = "block";
        };
        if (venue_in_loop.indexOf(display_venue_name) != -1){
          all_venues[i].style.display = "block";
        }; 
        i++;
      };
      x++;
    };

  });

// _____________________right click________________________________

  right_tri_box.addEventListener("click", function(){
    console.log("RIGHT CLICK DETECTED");

    if (events_hidden_right[0] != undefined){
      var move_one = events_display.shift();
      events_hidden_left.push(move_one);
      var move_two = events_hidden_right.shift();
      events_display.push(move_two);
      var move_three = venues_display.shift();
      venues_hidden_left.push(move_three);
      var move_four = venues_hidden_right.shift();
      venues_display.push(move_four);
    };

    var x = 0;
    while (x < events_hidden_right.length) {
      var right_venue_split = events_hidden_right[x].className.split("").slice(-1);
      var right_class_name = "hide-" + right_venue_split;
      var right_venue_name_split = venues_hidden_right[x].className.split("").slice(-1);
      var right_venue_name = "text--" + right_venue_name_split;

      var i = 0
      while (i < all_shows.length){
        var class_in_loop = all_shows[i].className;
        var venue_in_loop = all_venues[i].className;
        if (class_in_loop.indexOf(right_class_name) != -1){
          all_shows[i].style.display = "none";
        };
        if (venue_in_loop.indexOf(right_venue_name) != -1){
          all_venues[i].style.display = "none";
        };
        i++;
      };
      x++;
    };
    var x = 0;
    while (x < events_hidden_left.length) {
      var left_venue_split = events_hidden_left[x].className.split("").slice(-1);
      var left_class_name = "hide-" + left_venue_split;
      var left_venue_name_split = venues_hidden_left[x].className.split("").slice(-1);
      var left_venue_name = "text--" + left_venue_name_split;

      var i = 0
      while (i < all_shows.length){
        var class_in_loop = all_shows[i].className;
        var venue_in_loop = all_venues[i].className;
        if (class_in_loop.indexOf(left_class_name) != -1){
          all_shows[i].style.display = "none";
        };
        if (venue_in_loop.indexOf(left_venue_name) != -1){
          all_venues[i].style.display = "none";
        };
        i++;
      };
      x++;
    };
    var x = 0;
    while (x < events_display.length) {
      var display_venue_split = events_display[x].className.split("").slice(-1);
      var display_class_name = "hide-" + display_venue_split;
      var display_venue_name_split = venues_display[x].className.split("").slice(-1);
      var display_venue_name = "text--" + display_venue_name_split;

      var i = 0
      while (i < all_shows.length){
        var class_in_loop = all_shows[i].className;
        var venue_in_loop = all_venues[i].className;
        if (class_in_loop.indexOf(display_class_name) != -1){
          all_shows[i].style.display = "block";
        };
        if (venue_in_loop.indexOf(display_venue_name) != -1){
          all_venues[i].style.display = "block";
        }; 
        i++;
      };
      x++;
    };
  });
};