require 'capybara/rspec'
require './app.rb'

feature "#Checks message" do 
  scenario "checks for a message " do 
    visit('/')
    fill_in 'content', with: "Michael"
    click_button "Submit"
    expect(page).to have_text("Michael")
  end 
end 


