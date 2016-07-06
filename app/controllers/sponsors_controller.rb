class SponsorsController  < ApplicationController
    def index
        @premier_sponsors = Sponsor.where({:premier => true}).order('sponsor_order')
        @sponsors = Sponsor.where({:premier => false}).order('sponsor_order')
    end
end