require 'pry'

class Artist
  extend Concerns::Findable
   attr_accessor :name, :songs 
   
  @@all  = []
  
   def initialize(name)
     @songs = []
     @name  = name
     
   end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
    #binding.pry
  end
  
  def add_song(song)
    song.artist = self if song.artist != self
    @songs << song unless @songs.include?(song)
   
  end
  
   def genres
     @songs.collect { |song|song.genre}.uniq
    end
     
  
end
  