class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist_name(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.new_by_filename(filename)
    song_split = filename.split(" - ")
    song = Song.new(song_split[1])
    song.artist_name(song_split[0])
    artist.
  end
    
  
end