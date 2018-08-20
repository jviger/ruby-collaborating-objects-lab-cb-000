class MP3Importer
  
  attr_accessor :path
  
  
  
  def initialize(path)
    @path = path
  end
  
  
  #"db/mp3s/*.mp3"
  
  def files
   @files = Dir["#{path}/*.mp3"].collect { |x| File.basename(x)}
  end
  
  def import 
    files.each{|f| Song.new_by_filename(f)}
  end
  
  
  
end