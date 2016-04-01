//if you hover over a headline, it turns orange 
//the photo changes to the selected headline's image
var homepage_headline = document.getElementsByClassName("home_news__headlines");
var featured_headline = document.getElementsByClassName("home_news__headlines--selected");

for (var i = homepage_headline.length - 1; i >= 0; i--) {
  var headline = homepage_headline[i];
  var headline_image = document.getElementById("image_"+headline.id);
  headline.addEventListener("mouseover",function(){
    headline_image.classList.remove("is_hidden");
    featured_headline.add("is_hidden");
  })
};

