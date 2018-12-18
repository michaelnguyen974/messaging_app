require './lib/new_message.rb'
RSpec.describe New_message do 

  describe "#array empty" do 
    it "check is array is empty by default" do 
      expect(@store_name).equal? []
    end 
  end
  
end 