class Song
  attr_reader :name, :artist, :genre
  
  @@all = []
  
  
  # Initializes with a name, an artist, and a genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist #belongs to an artist
    @genre = genre # belongs to a genre
    @@all << self
  end
  
  # Knows about all song instances 
  def self.all
    @@all
  end
  
  
end