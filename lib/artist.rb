class Artist
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  # Knows about all artist instances
  def self.all
    @@all
  end
    
  # Returns all songs associated with this Artist
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  # Given a name and genre, creates new song associated w/ that artist
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  # Has many genres, through songs
  def genres
    songs.map { |song| song.genre }
  end
end