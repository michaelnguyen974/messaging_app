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

feature 'checks for the first 20 characters' do 
  scenario 'We are inserting 26 characters and expecting 20' do 
    visit ('/')
    fill_in 'content', with: "abcdefghijklmnopqrstuvwxyz"
    click_button "Submit"
    expect(page).to have_content "abcdefghijklmnopqrst"
    expect(page).to_not have_content "abcdefghijklmnopqrstuvwxyz"
  end 
end 

feature '#checks if there is a link' do 
  scenario '' do
    visit ('/')
    fill_in 'content', with: "abcdefghijklmnopqrstuvwxyz"
    click_button "Submit"
    click_link('abcdefghijklmnopqrst')
  end 
end 





