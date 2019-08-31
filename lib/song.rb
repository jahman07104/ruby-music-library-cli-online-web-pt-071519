require 'pry'
class Song
  attr_accessor :name, :artist, :genre
   @@all   = []
  
  def initialize(name,artist=nil,genre=nil)
    self.artist = artist
    self.genre = genre if genre
    #binding.pry
    @name   = name
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
    song = Song.new(name)
    song.save
    song
    #binding.pry
  end
  
  def artist=(artist)
    @artist = artist
  # binding.pry
  artist.add_song(self) if artist  
  end
   
   def genre=(genre)
    @genre = genre 
    genre.songs << self unless genre.songs.include?(self)
    #binding.pry
  end
    
  def self.find_by_name(name)
    @@all.find {|song|song.name==name}
     
  end
   
   def self.find_or_create_by_name(name)
      self.find_by_name(name) || self.create(name)
     
   end
   
   def self.new_from_filename(file)
    data = file.gsub(".mp3", "")
    row = data.split(" - ")
    artist = Artist.find_or_create_by_name(row[0])
    genre = Genre.find_or_create_by_name(row[2])
    song = Song.new(row[1],artist,genre) 
    
    #binding.pry
   end
  #"Thundercat - For Love I Come - dance.mp3"
  
   def self.create_from_filename(file)
     song = self.new_from_filename(file)
     song.save
   end
end
  