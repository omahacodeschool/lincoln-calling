if(document.getElementById("day_picker_box") != null || document.getElementById("day_picker_box") != undefined){
  //scrolling left and right between venues on the schedule view
  var left_tri_box = document.getElementById("left_tri_box");
  var right_tri_box = document.getElementById("right_tri_box");




  left_tri_box.addEventListener("click", function(){
    console.log("LEFT CLICK DETECTED");
  });





  right_tri_box.addEventListener("click", function(){
    console.log("RIGHT CLICK DETECTED");
  });



};