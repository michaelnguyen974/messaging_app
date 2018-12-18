require './lib/new_message.rb'
RSpec.describe New_message do 
  let(:time_double) { Time.now.strftime("%d-%m-%Y %H:%M:%S") }

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

end 