class Genre
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end  
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists # Return array of artist instances in this genre
    songs.map {|song| song.artist} 
  end
  
end