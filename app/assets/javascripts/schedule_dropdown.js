var day_picker_box = document.getElementById("day_picker_box");
var thurs = document.getElementById("thurs");
var fri = document.getElementById("fri");
var sat = document.getElementById("sat");
var other_days = document.getElementById("other_days");
var current_day = document.getElementById("current_day");

day_picker_box.addEventListener("click", function(){
  other_days.style.display = "block";
});

thurs.addEventListener("click", function(){
  current_day.innerHTML = event.target.innerHTML
  other_days.style.display = "none";
});
fri.addEventListener("click", function(){
  current_day.innerHTML = event.target.innerHTML
  other_days.style.display = "none";
});
sat.addEventListener("click", function(){
  current_day.innerHTML = event.target.innerHTML
  other_days.style.display = "none";
});

// for (var i = element_to_show.length - 1; i >= 0; i--) {
//    element_to_show[i].addEventListener("click", function(){
//     clicked = (event.target);
//     alert(clicked.innerHTML);
//     for (var i = element_to_show.length - 1; i >= 0; i--) {

//       if (element_to_show[i] !== event.target){
//         debugger;
//         element_to_show[i].classList.add("day_picker__text--hide");
//       }
//     } 
//   });
// }
   



     