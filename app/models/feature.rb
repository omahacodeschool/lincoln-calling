#A Class that exists within the Article Model. The Feature Class exists to distinguish articles intended for News instead of the Visitor's Guide
class Feature < Article 
    paginates_per 6
    extend FriendlyId
    friendly_id :title, use: :slugged
end