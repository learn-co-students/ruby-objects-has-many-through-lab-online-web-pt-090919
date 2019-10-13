class Song
  
  attr_reader :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
end