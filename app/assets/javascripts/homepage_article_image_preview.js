//if you hover over a headline, it turns orange 
//the photo changes to the selected headline's image
var homepage_headline = document.getElementsByClassName("home_news__headlines");
var featured_headline = document.getElementsByClassName("home_news__headlines--selected");

for (var i = homepage_headline.length - 1; i >= 0; i--) {
  var headline = homepage_headline[i];
  headline.addEventListener("mouseover",function(event){
    var headline_image = document.getElementById("image_"+(event.target.id));
    headline_image.classList.remove("is_hidden");
    event.target.classList.add("home_news__headlines--selected")
    featured_headline.classList.remove("home_news__headlines--selected")
    featured_headline.classList.add("is_hidden");
  })
};

