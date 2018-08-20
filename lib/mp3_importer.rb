class MP3Importer
  
  attr_accessor :path
  
  
  
  def initialize(path)
    @path = path
  end
  
  
  #"db/mp3s/*.mp3"
  
  def files
   Dir["#{path}"]
  end
  
  def import 
    
  end
  
  
  
end