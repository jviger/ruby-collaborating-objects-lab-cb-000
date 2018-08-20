class MP3Importer
  
  attr_accessor :path
  
  
  
  def initialize(path)
    @path = path
  end
  
  
  #"db/mp3s/*.mp3"
  
  def files
   Dir["#{path}/*.mp3"].basename
     
  end
  
  def import 
    
  end
  
  
  
end