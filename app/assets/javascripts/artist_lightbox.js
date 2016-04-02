var artistModuleLink = document.getElementsByClassName("artist_module");
var artistProfile = document.getElementById("artist_profile");
var close_button = document.getElementById("close_button")

for (var i = artistModuleLink.length - 1; i >= 0; i--) {
  artistModuleLink[i].addEventListener("click", function(){
      artistProfile.style.display = "block";
  });
};

close_button.addEventListener("click", function(){
  artistProfile.style.display = "none";
});


