  //a drop down of the festival days on the schedule view
  var day_picker_box = document.getElementById("day_picker_box");
  var thurs = document.getElementById("thurs");
  var fri = document.getElementById("fri");
  var sat = document.getElementById("sat");
  var other_days = document.getElementById("other_days");
  var current_day = document.getElementById("current_day");
  var thursday_shows = document.getElementById("Thursday_shows");
  var friday_shows = document.getElementById("Friday_shows");
  var saturday_shows = document.getElementById("Saturday_shows");

  day_picker_box.addEventListener("click", function(){
    if (other_days.style.display == "none") {
      other_days.style.display = "block";
    } else {
      other_days.style.display = "none";
    }
  });

  thurs.addEventListener("click", function(){
    current_day.innerHTML = event.target.innerHTML;
    other_days.style.display = "none";
    thursday_shows.style.display = "block";
    friday_shows.style.display = "none";
    saturday_shows.style.display = "none";
  });

  fri.addEventListener("click", function(){
    current_day.innerHTML = event.target.innerHTML;
    other_days.style.display = "none";
    thursday_shows.style.display = "none";
    friday_shows.style.display = "block";
    saturday_shows.style.display = "none";
  });

  sat.addEventListener("click", function(){
    current_day.innerHTML = event.target.innerHTML;
    other_days.style.display = "none";
    thursday_shows.style.display = "none";
    friday_shows.style.display = "none";
    saturday_shows.style.display = "block";
  });
       