class New_message
  attr_reader :content, :time, :id
 
   def initialize(content, id = nil)
     @content = content
     @time = Time.now.strftime("%d-%m-%Y %H:%M:%S:%P")
     @id = id
   end

   def preview
      @content[0...20]
   end 

end 