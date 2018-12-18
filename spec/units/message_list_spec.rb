require './lib/message_list.rb'
RSpec.describe Message_list do 

  describe "#array empty" do 
    it "check is array is empty " do 
      expect(@store_name).equal? []
    end 
  end

#   describe "#does array contain anything?" do 
#     it "Checks if array has somehting" do 
#     list = Message_list.new 
#     expect(list.store_name("Michael")).equal? "Michael"
#   end 
# end 
end 