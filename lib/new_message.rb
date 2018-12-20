require 'data_mapper'

class New_message
  include DataMapper::Resource

  property :id,       Serial
  property :content,  Text
  property :created_at,     DateTime  
  
  # attr_reader :content, :time, :id
  # def initialize(content, id = nil)
  #   @content = content
  #   @time = Time.now.strftime("%d-%m-%Y %H:%M:%S:%P")
  #   @id = id
  # end

  # def preview
  #   @content[0...20]
  # end 

end 