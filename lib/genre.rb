class Genre

  attr_accessor :name, :musiclibrarycontroller, :musicimporter
  
  @@all = []


  def initialize(name) 
    @name = name
    @songs = []
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
  
  def songs 
    @songs
  end 
  

  #instantiates an instance using .new but also invokes #save on that instance, forcing it to persist immediately.
  def self.create(genre)
    genre = self.new(genre)
    genre.save
    genre
  end 
  
 
  
  
  
  
  
  
  
  
end 