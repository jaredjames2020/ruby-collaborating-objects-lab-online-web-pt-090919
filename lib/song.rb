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
    file_name = filename.split(' - ')
    new_song = Song.new(file_name[1])
    new_song
    new_song.artist.name = file_name[0]
  end


end