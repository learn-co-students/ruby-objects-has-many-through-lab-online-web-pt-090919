class Genre
  
  attr_reader :name
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select { |tune| tune.genre == self }
  end
  
  def artists
    self.songs.map { |tune| tune.artist }
  end
  
end