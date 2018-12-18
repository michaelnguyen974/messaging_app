class New_message
  attr_reader :content, :time
 
   def initialize(input_name)
     @content = []
     @content << input_name
     @time = Time.now
   end

  #  def list(input_name)
  #   @store_name
  #  end 

end 