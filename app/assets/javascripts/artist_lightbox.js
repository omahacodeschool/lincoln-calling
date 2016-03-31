var artistModuleLink = document.getElementsByClassName("artist_module");
var artistProfile = document.getElementsByClassName("col-7-tablet");

for (var i = artistModuleLink.length - 1; i >= 0; i--) {
  artistModuleLink[i].addEventListener("click", function(){
    if (artistProfile.matches(".artist_profile")){
      artistProfile.classList.add(".artist_profile--shown");
    }
  });
};

debugger;




