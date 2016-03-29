// If you click the navbar, it'll toggle the display of the navbar content.

var collapsable_nav_link = document.getElementById("collapsable_nav");
var collapsable_nav_contents = document.getElementById("collapsable_nav_contents");
var collapsable_nav_link_text = document.getElementById("collapsable_nav_link_text");
var triangle_left = document.getElementById("triangle_left");
var triangle_right = document.getElementById("triangle_right");

collapsable_nav_link.addEventListener("click", function(){
  if (collapsable_nav_contents.matches(".is_hidden")){
    // They clicked to show the nav. NAV IS NOW SHOWN.
    collapsable_nav_link_text.innerHTML = "CLOSE MENU";
    collapsable_nav_contents.classList.remove("is_hidden");

    triangle_left.classList.add("nav_bar__triangle_up");
    triangle_left.classList.add("triangle_up--left");

    triangle_left.classList.remove("triangle_down");
    triangle_left.classList.remove("triangle_down--left");

    triangle_right.classList.add("nav_bar__triangle_up");

    triangle_right.classList.remove("triangle_down");
    
  }
  else {
    // They clicked to hide the nav. NAV IS NOW HIDDEN.
    collapsable_nav_link_text.innerHTML = "OPEN MENU";
    collapsable_nav_contents.classList.add("is_hidden");

    triangle_left.classList.remove("nav_bar__triangle_up");
    triangle_left.classList.remove("triangle_up--left");

    triangle_left.classList.add("triangle_down");
    triangle_left.classList.add("triangle_down--left");

    triangle_right.classList.remove("nav_bar__triangle_up")

    triangle_right.classList.add("triangle_down");
  }
});