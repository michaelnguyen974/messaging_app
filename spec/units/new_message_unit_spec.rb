require './lib/new_message.rb'
RSpec.describe New_message do 
  let(:time_double) { DateTime }

  it "has content attribute" do 
    first_message = New_message.create(content: 'content')
    expect(first_message).to have_attributes(:content => 'content')
  end

  it "has time attribute" do 
    first_message = New_message.create(created_at: time_double)
    expect(first_message).to have_attributes(:created_at => time_double)
  end 

  describe "#array empty" do 
    it "check is array is empty by default" do 
      expect(@content).equal? []
    end 
  end
  

  describe "#Checks for 20 characters" do 
    it "Shows only 20 characters" do 
      first_message = New_message.create(content: "abcdefghijklmnopqrstuvwxyz")
      expect(first_message.preview).to eq "abcdefghijklmnopqrst"
    end 
  end

  #Current unit test
  describe "#looks for id" do 
    it "shows the id of the message" do 
      first_message = New_message.create(id: 105)
      expect(first_message.id).to eq 105
    end 
  end 

end 