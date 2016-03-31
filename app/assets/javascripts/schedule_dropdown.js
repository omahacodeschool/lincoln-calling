var day_picker_box = document.getElementById("day_picker_box");
var element_to_show = document.getElementsByClassName("day_picker__text");

day_picker_box.addEventListener("click", function(){
  alert("You Clicked Me!");
  for (var i = element_to_show.length - 1; i >= 0; i--) {
    element_to_show[i].classList.remove("day_picker__text--hide")
  }
});