var day_picker_box = document.getElementById("day_picker_box");
var thurs = document.getElementById("thurs");
var fri = document.getElementById("fri");
var sat = document.getElementById("sat");
var other_days = document.getElementById("other_days");
var current_day = document.getElementById("current_day");
var thursday_shows = document.getElementById("thursday_shows");
var friday_shows = document.getElementById("friday_shows");


day_picker_box.addEventListener("click", function(){
  other_days.style.display = "block";
});

thurs.addEventListener("click", function(){
  current_day.innerHTML = event.target.innerHTML
  other_days.style.display = "none";
  thursday_shows.style.display = "block";
  friday_shows.style.display = "none";
  saturday_shows.style.display = "none";
});

fri.addEventListener("click", function(){
  current_day.innerHTML = event.target.innerHTML
  other_days.style.display = "none";
  thursday_shows.style.display = "none";
  friday_shows.style.display = "block";
  saturday_shows.style.display = "none";
});

sat.addEventListener("click", function(){
  current_day.innerHTML = event.target.innerHTML
  other_days.style.display = "none";
  thursday_shows.style.display = "none";
  friday_shows.style.display = "none";
  saturday_shows.style.display = "block";
});


   



     