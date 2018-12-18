require 'capybara/rspec'
require './app.rb'

feature "#Header" do 
  scenario "Looks for header on homepage" do 
    visit '/'
    expect(page).to have_text("Messaging app")
  end 
end

feature "#Form" do
  scenario "User fills out form" do
  visit '/'
  fill_in 'input_message', with: 'Michael'
  click_button 'Submit'
  end
end

feature "#storing messages" do
  scenario "check whether messages are being stored" do
    visit "/"
    fill_in 'input_message', with: "Michael"
    click_button "Submit"
    expect(page).to have_text("Michael")
    visit "/"
    fill_in 'input_message', with: "Tom"
    click_button "Submit"
    expect(page).to have_text("Michael")
    expect(page).to have_text("Tom")
  end
end

