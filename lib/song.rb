require 'pry'

class Song
    
   attr_accessor :name, :artist
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        binding.pry
    end


    def self.all
        @@all
        #binding.pry
    end

    def artist_name
        if self.artist == nil
            return nil
        else self.artist.name 
        end
        #binding.pry
    end



end