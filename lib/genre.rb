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
    p songs.map {|song| song.artist} 
    
    # - TEST UTPUT - 
      # [#<Artist:0x000000000262d6b0 @name="Jay-Z">, #<Artist:0x000000000262d598 @name="Kendrick Lamar">]
  end
end