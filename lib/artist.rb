require 'pry'

class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song|song.artist==self}
    end
    
    def add_song(song)
        song.artist = self

    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        new_song.artist = self
        
    end

    def self.song_count

        #Song.all.select {|song| song.artist == self} 
        
        count = 0

        Song.all.each do |song|
            if song.artist
                count += 1
            end
        end
        count
    end


end