if(document.getElementById("day_picker_box") != null || document.getElementById("day_picker_box") != undefined){
  //scrolling left and right between venues on the schedule view
  var screen_width = window.innerWidth;
  var show_two = 420;
  var show_three = 560;
  var show_four = 740;
  var show_five = 980;

  var left_tri_box = document.getElementById("left_tri_box");
  var right_tri_box = document.getElementById("right_tri_box");
  var thursday_shows = document.getElementById("Thursday_shows").getElementsByClassName("venue_shows");
  var thursday_hidden_right = Array.prototype.slice.call(thursday_shows);
  var thursday_display = [];
  var thursday_hidden_left = [];

  // var friday_shows = document.getElementById("Friday_shows").getElementsByClassName("venue_shows");
  // var saturday_shows = document.getElementById("Saturday_shows").getElementsByClassName("venue_shows");

  if (screen_width > show_five){
    var i = 1
    while (i <= 5){ 
      thursday_display.push(thursday_hidden_right[0]);
      thursday_hidden_right.shift();
      i++;
    };
  } else if (screen_width > show_four){
    var i = 1
    while (i <= 4){
      thursday_display.push(thursday_hidden_right[0]);
      thursday_hidden_right.shift();
      i++;
    };
  } else if (screen_width > show_three){
    var i = 1
    while (i <= 3){
      thursday_display.push(thursday_hidden_right[0]);
      thursday_hidden_right.shift();
      i++;
    };
  } else if (screen_width > show_two){
    var i = 1
    while (i <= 2){
      thursday_display.push(thursday_hidden_right[0]);
      thursday_hidden_right.shift();
      i++;
    };
  };

  console.log("thursday_hidden_right is");
  console.log(thursday_hidden_right);
  console.log("thursday display is ");
  console.log(thursday_display);

  left_tri_box.addEventListener("click", function(){
    console.log("LEFT CLICK DETECTED");


// for each click shift X amount of venues from hidden array and push into display array


  });





  right_tri_box.addEventListener("click", function(){
    console.log("RIGHT CLICK DETECTED");



  });



};