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
  
  def new_by_filename(filename)
    
  
end