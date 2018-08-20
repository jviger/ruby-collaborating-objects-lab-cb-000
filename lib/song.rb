class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist_name
    self
  end
  
  def self.new_by_filename(filename)
    song_split = filename.split(" - ")
    song = Song.new(song_split[1])
    song.artist = song_split[0]
    self.songs << song
    @@all_songs << song
    
  
end