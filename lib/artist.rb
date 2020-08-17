class Artist
  
  attr_accessor :name, :song, :musiclibrarycontroller, :musicimporter 

  @@all = []


  def initialize(name) 
    @name = name
    @songs = []
    save
  end  
  
  def self.all
    @@all
  end 
  
  def save 
    @@all << self 
  end
  
  def self.destroy_all
    @@all.clear
  end 
  
  #instantiates an instance using .new but also invokes #save on that instance, forcing it to persist immediately.
  def self.create(artist)
    artist = self.new(artist)
    artist.save
    artist
  end 
  
  def songs
    @songs
  end 
  
  def add_song(song)
    if song.artist == nil
      song.artist = self
    else
      nil
    end
    if @songs.include?(song)
      nil
    else
      @songs << song
    end
    song
  end

  def genres
    @new_array = []
    @songs.each do |song|
      if @new_array.include?(song.genre)
        nil
      else
        @new_array << song.genre
      end
    end
    @new_array
  end
   
   def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end
  
   

  
  
  
  
  
end 