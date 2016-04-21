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
  console.log("thursday_hidden_left is");
  console.log(thursday_hidden_left);

  left_tri_box.addEventListener("click", function(){
    console.log("LEFT CLICK DETECTED");

    if (thursday_hidden_right != null || thursday_hidden_right != []){
      thursday_hidden_left.push(thursday_display[0]);
      thursday_display.shift();
      thursday_display.push(thursday_hidden_right[0]);
      thursday_hidden_right.shift();
    };


    console.log("thursday_hidden_right is");
    console.log(thursday_hidden_right);
    console.log("thursday display is ");
    console.log(thursday_display);
    console.log("thursday_hidden_left is");
    console.log(thursday_hidden_left);
  });

    x = 0
    while (x < thursday_hidden_right.length) {
      console.log("thursday_hidden_right[x] is ");
      console.log(thursday_hidden_right[x]);

      var venue_split = thursday_hidden_right[x].className.split("").slice(-1);
      class_name = "hide-" + venue_split;
      console.log("class_name is " + class_name);

      // check if this is in the class name of div below 


      var div = document.getElementById("Thursday_shows").getElementsByClassName("venue_shows");
      console.log("div is");
      console.log(div);
      // div.style.display="none";
      x++;
    };

    // while (x < thursday_hidden_left.length) {
    //   console.log("in hidden left loop");
    //   var div = document.getElementById("Thursday_shows").getElementsByClassName("venue_shows");
    //   div.style.display="none";
    //   x++;
    // };

    // while (x < thursday_display.length) {
    //   console.log("in display loop");
    //   var div = document.getElementById("Thursday_shows").getElementsByClassName("venue_shows");
    //   div.style.display="block";
    //   x++;
    // };




  right_tri_box.addEventListener("click", function(){
    console.log("RIGHT CLICK DETECTED");



  });



};