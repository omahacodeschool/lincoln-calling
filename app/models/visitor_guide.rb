#A Class that exists within the Article Model. The Visitor Class exists to distinguish articles made for the Visitor's Guide instead of news (features)
class VisitorGuide < Article
  paginates_per 6
end