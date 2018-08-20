class Artist
  
  attr_accessor :name, :songs
  
  @@all_songs = []
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs<< song

  end
  
  def self.all
    @@all
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
    if self.all.find {|artist| artist.name == artist_name }
      self.all.find {|artist| artist.name == artist_name }
    else self.new(artist_name).map {|artist| artist.save}
  end
end
    
  
end