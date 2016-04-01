//if you hover over a headline, it turns orange 
//the photo changes to the selected headline's image
function hide_old_image(featuredclass){
  var featured_image = document.getElementsByClassName(featuredclass);

  for (var i = featured_image.length - 1; i >= 0; i--) {
    featured_image[i].classList.add("is_hidden");
  };

};
function remove_featured_class(featuredclass){
  var featured_headline = document.getElementsByClassName(featuredclass);
    for (var i = featured_headline.length - 1; i >= 0; i--) {
    featured_headline[i].classList.remove(featuredclass);
  }
}

var homepage_headline = document.getElementsByClassName("home_news__headlines--headline");

for (var i = homepage_headline.length - 1; i >= 0; i--) {
  var headline = homepage_headline[i];
  headline.addEventListener("mouseover",function(event){
    console.log(event.target.id);
    var headline_image = document.getElementById("image_"+(event.target.id));
    hide_old_image("feature_image")
    remove_featured_class("home_news__headlines--selected")
    headline_image.classList.remove("is_hidden");
    headline_image.classList.add("feature_image")
    event.target.classList.add("home_news__headlines--selected")    
  })
};

