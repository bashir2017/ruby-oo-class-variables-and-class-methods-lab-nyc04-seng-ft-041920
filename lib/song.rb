class Song 
    attr_accessor :name, :artist, :genre 
    @@count = 0 
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre
        @@count += 1 
    end 

    def self.count 
        @@count 
    end 

    def self.genres 
        @@genres.uniq 
    end 

    def self.artists 
        @@artists.uniq 
    end 

    def self.array_content_hasher(arr) 
        arr_hash  = {}
        arr.each do |genre|
            if arr_hash[genre]
                arr_hash[genre] = arr_hash[genre] + 1 
            else 
                arr_hash[genre] = 1
            end 
        end 
        arr_hash
    end 

    def self.genre_count 
        self.array_content_hasher(@@genres)
    end 

    def self.artist_count 
        self.array_content_hasher(@@artists)
    end 
end 