require './lib/new_message.rb'
RSpec.describe New_message do 
  let(:time_double) { Time.now.strftime("%d-%m-%Y %H:%M:%S:%P") }

  it "has content attribute" do 
    first_message = New_message.new('content')
    expect(first_message).to have_attributes(:content => 'content')
  end

  it "has time attribute" do 
    first_message = New_message.new('content')
    expect(first_message).to have_attributes(:time => time_double)
  end 

  describe "#array empty" do 
    it "check is array is empty by default" do 
      expect(@content).equal? []
    end 
  end
  
  describe "#Checks for preview method" do 
    it "responds to preview" do 
      first_message = New_message.new("abcdefghijklmnopqrstuvwxyz")
      expect(first_message).to respond_to(:preview)
    end 
  end 

  describe "#Checks for 20 characters" do 
    it "Shows only 20 characters" do 
      first_message = New_message.new("abcdefghijklmnopqrstuvwxyz")
      expect(first_message.preview).to eq "abcdefghijklmnopqrst"
    end 
  end
end 