class Song

  attr_accessor :name, :artist, :genre, :musicimporter, :musiclibrarycontroller
  
  @@all = []


  def initialize(name, artist=nil, genre=nil) 
    @name = name
    self.artist=(artist) if artist != nil
    self.genre=(genre) if genre != nil 
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
  
  def artist
    @artist
  end 
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre
    @genre
  end
  
  #instantiates an instance using .new but also invokes #save on that instance, forcing it to persist immediately.
  def self.create(song)
    song = self.new(song)
    song.save
    song
  end 
  
  def find_by_name(name)
    self.all.detect {|e| e.name == name}
  end

  def find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end
  

  
  
 
  
  
  
  
end 
  