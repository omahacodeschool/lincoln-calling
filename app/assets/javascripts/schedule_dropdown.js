var day_picker_box = document.getElementById("day_picker_box");
var element_to_show = document.getElementsByClassName("day_picker__text");

day_picker_box.addEventListener("click", function(){
  for (var i = element_to_show.length - 1; i >= 0; i--) {
    element_to_show[i].classList.remove("day_picker__text--hide")
    element_to_show[i].addEventListener("click", function(){
      alert(event.target.innerHTML)
      if (element_to_show[i] !== event.target){
        element_to_show[i].classList.add("day_picker__text--hide")
      }

    })
  }
});