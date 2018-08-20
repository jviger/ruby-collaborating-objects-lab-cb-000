class Artist
  
  attr_accessor :name
  
  @@all_songs = []
  @@all = []
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    @@all_songs << song
    song.artist = self
  end
  
  def self.all
    @@all
  end
  
  def songs
    @@all_songs
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    songs.each do |x|
      puts x.name
    end
  end
  
  def find_or_create_by_name(artist_name)
    if @@all.include?(artist_name)
      self.all.find {|artist| artist.name == artist_name }
    else self.new(artist_name) {|artist| artist.save}
  end
end
    
  
end