class Message_list
  attr_reader :store_name
 
   def initialize(input_name)
     @store_name = []
     @store_name << input_name
   end

  #  def list(input_name)
  #   @store_name
  #  end 

end 