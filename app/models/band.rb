#A Class that exists within the Artist Model. The Bands Class exists to distinguish musical acts from Comedians
class Band < Artist
    include PgSearch
    multisearchable :against => [:name, :origin, :genre]
end
