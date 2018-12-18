require 'capybara/rspec'
require './app.rb'

feature "#" do 
  scenario "" do 
    visit('/')
    fill_in 'input_message', with: "Michael"
    click_button "Submit"
    expect(page).to have_text("Michael")
  end 
end 


