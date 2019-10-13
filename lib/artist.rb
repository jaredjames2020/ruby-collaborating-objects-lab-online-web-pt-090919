class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    if Artist.all.select {|artist| artist.name == name} == nil
      new_artist = self.new(name)
    else Artist.all.select {|artist| artist.name == name}
      end
      
    if self.all.detect { |artist| artist.name == artist_name } == nil 
      new_artist = self.new(artist_name)
    else 
      self.all.detect { |artist| artist.name == artist_name }
    end 
  end
  
  def print_songs
   
  end



end