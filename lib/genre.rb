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
  
  def artists
    artists = []
    Song.all.collect do |song|
      if artists.include? song.artist
        next
      else artists << song.artist
      end
    end
    artists
  end
  
end