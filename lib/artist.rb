class Artist
  
  attr_reader :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
  
  def genres
    genres = []
    Song.all.collect do |song|
      if genres.include? song.genre
        next
      else genres << song.genre
      end
    end
    genres
  end
  
end