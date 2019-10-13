class Song

  attr_accessor :name, :artist, :artist_name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    new_song = Song.new(filename)
    new_song.artist = self
  end


end