require 'pry'

class MusicLibraryController
  
  def initialize(path = './db/mp3s')
<<<<<<< HEAD
    
=======
>>>>>>> 6bc558e1ede41ef6ec028913778b24a24e144a40
  MusicImporter.new(path).import
  end
  
  def call
    user_input = nil
<<<<<<< HEAD
    
    until user_input == "exit"
    
=======
    until user_input == "exit"
>>>>>>> 6bc558e1ede41ef6ec028913778b24a24e144a40
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
<<<<<<< HEAD
    
    user_input = gets.strip
    
    case user_input
    
    when "list songs"
        list_songs
    when "list artists"
        list_artists
    when "list genres"
        list_genres
    when "list artist"
        list_songs_by_artist
    when "list genre"
        list_songs_by_genre
    when "play song"
      play_song
    when nil
        "What would you like to do?"
      end  
  end
end

  def list_songs
       Song.all.sort {|a,b|a.name <=> b.name}.each_with_index {|song,index| puts "#{index + 1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"}
  end

  def list_artists
       Artist.all.sort {|a, b| a.name <=> b.name}.each_with_index {|artist, index| puts "#{index +1}. #{artist.name}"}
  end
  
  def list_genres
=======
    user_input = gets.strip
    case user_input
    when "list songs"
      list_songs
      when "list artists"
        list_artist
        when "list genres"
        list_genres
        when "list artist"
        list_artist
        when "list genre"
        list_genre
        when "play song"
        play_song
        when nil
        "What would you like to do?"
      end  
  end
  
end

def list_songs
  Song.all.sort {|a,b|a.name <=> b.name}.each_with_index {|song,index| puts "#{index + 1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"}
end

  def list_artists
    Artist.all.sort {|a, b| a.name <=> b.name}.each_with_index {|artist, index| puts "#{index +1}. #{artist.name}"}
  end
  
 def list_genres
>>>>>>> 6bc558e1ede41ef6ec028913778b24a24e144a40
    Genre.all.sort {|a, b| a.name <=> b.name}.each_with_index {|genre, index| puts "#{index +1}. #{genre.name}"}
  end
  
  def list_songs_by_artist
<<<<<<< HEAD
      puts "Please enter the name of an artist:"
      user_input = gets.strip
     # artist_name = user__input
    if artist = Artist.find_by_name(user_input)
    
      artist.songs.sort {|a,b|a.name <=> b.name}.each_with_index {|song,index| puts "#{index + 1}. #{song.name} - #{song.genre.name}"}
=======
   puts "Please enter the name of an artist:"
    user_input = gets.strip
    if artist = Artist.find_by_name(user_input)
    
    artist.songs.sort {|a,b|a.name <=> b.name}.each_with_index {|song,index| puts "#{index + 1}. #{song.artist.name} - #{song.name}"}
>>>>>>> 6bc558e1ede41ef6ec028913778b24a24e144a40
  end
  end
  
  def list_songs_by_genre
     puts "Please enter the name of a genre:"
     user_input = gets.strip
    if genre = Genre.find_by_name(user_input)
    
<<<<<<< HEAD
      genre.songs.sort {|a,b|a.name <=> b.name}.each_with_index {|song,index| puts "#{index + 1}. #{song.artist.name} - #{song.name}"}
   end
   end
 
     def play_song
         puts "Which song number would you like to play?"
         user_input = gets.strip.to_i
=======
     genre.songs.sort {|a,b|a.name <=> b.name}.each_with_index {|song,index| puts "#{index + 1}.  #{song.name} - #{song.genre.name}"
  end
 end
 
  def play_song
    puts "Which song number would you like to play?"
    user_input = gets.strip.to_i
>>>>>>> 6bc558e1ede41ef6ec028913778b24a24e144a40
     if (1..Song.all.length).include?(user_input)
       
       song = Song.all.sort {|a,b|a.name <=>b.name}[user_input-1] 
       
       
  end
  puts "Playing #{song.name} by #{song.artist.name}" if song

end
end
