require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@artists = []
    @@genres = []
    @@count = 0
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        Song.genres(genre)
        Song.artists(artist)
    end

    def Song.count 
        @@count
    end
    def Song.genres(genre)
        if !@@genres.include?(genre) 
        @@genres.push(genre)    
        end
    end

    def Song.artists(artist)
        if !@@artists.include?(artist)
         @@artists.push(artist)
        end
    end
    binding.pry
end

