class New_message
  attr_reader :content, :time
 
   def initialize(content)
     @content = content
     @time = Time.now.strftime("%d-%m-%Y %H:%M:%S:%P")
   end

   def preview
      @content[0...20]
   end 

end 