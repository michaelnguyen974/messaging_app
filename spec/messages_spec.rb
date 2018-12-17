require 'capybara/rspec'
require './app.rb'

feature "#Header" do 
  scenario  "Looks for header on homepage" do 
    visit '/'
    expect(page).to have_text("Messaging app")
  end 
end 