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
    new_song = self.new(file_name[1])
    new_song.artist = self.artist_name
    new_song
  end

  def artist_name
    Artist.find_or_create_by_name
  
  end

end