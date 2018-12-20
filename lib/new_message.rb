require 'data_mapper'

class New_message
  include DataMapper::Resource

  property :id,       Serial
  property :content,  Text
  property :created_at,     DateTime  

  # def preview
  #   @content[0...20]
  # end 

end 