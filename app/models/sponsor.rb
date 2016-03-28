#the Model for Sponsors
#the Schema for this model includes name:string, website:string, premier:boolean(to distinguish premier sponsors), description:text, sponsor_order:integer(for prioritizing sponsor order in views), logo:string
class Sponsor < ActiveRecord::Base
end