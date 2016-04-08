var left_triangle = document.getElementById("left_triangle");
var right_triangle = document.getElementById("right_triangle");
var all_shows = document.querySelectorAll(".venue_shows");
var visible_shows = [];

// for (var i = all_shows.length - 1; i >= 0; i--) {
//   var show = all_shows[i]
//   if (show.style.visibility === "block"){
//     visible_shows.push(show);
//   };
// };

left_triangle.addEventListener("click", function(){
  alert("You clicked Left Shark");
})

right_triangle.addEventListener("click", function(){
  alert("You clicked right triangle");
})