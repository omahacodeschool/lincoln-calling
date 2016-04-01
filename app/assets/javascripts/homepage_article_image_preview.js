//if you hover over a headline, it turns orange 
//the photo changes to the selected headline's image
function hide_old_image(featuredclass){
  var featured_image = document.getElementsByClassName(featuredclass);
  for (var i = featured_image.length - 1; i >= 0; i--) {
    featured_image[i].classList.add("is_hidden");
  }
};

var homepage_headline = document.getElementsByClassName("home_news__headlines");

for (var i = homepage_headline.length - 1; i >= 0; i--) {
  var headline = homepage_headline[i];
  headline.addEventListener("mouseover",function(event){
    var headline_image = document.getElementById("image_"+(event.target.id));
    hide_old_image("feature_image")
    headline_image.classList.remove("is_hidden");
    event.target.classList.add("home_news__headlines--selected")
    
  })
};

