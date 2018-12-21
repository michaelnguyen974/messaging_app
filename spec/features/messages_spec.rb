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
    fill_in 'content', with: "xxxxxxxxxxxxxxxxxxxxxxxxxx"
    click_button "Submit"
    expect(page).to have_content "xxxxxxxxxxxxxxxxxxxx"
    expect(page).to_not have_content "xxxxxxxxxxxxxxxxxxxxxxxxxx"
  end 
end 


feature "#checks link" do 
  scenario 'checks if clicking the link gives us the whole message' do 
    visit ('/')
    fill_in 'content', with: "abcdefghijklmnopqrstuvwxyz"
    click_button "Submit"
    click_link('abcdefghijklmnopqrst')
    expect(page).to have_content "abcdefghijklmnopqrstuvwxyz"
  end 
end 

# Create a homepage button for the next page so it can redirect you 
# feature "#homepage button" do
#   scenario "checks if homepage button goes to homepage" do 
#     visit ('/')
#     fill_in 'content', with: "abcdefghijklmnopqrstuvwxyz"
#     click_button "Submit"
#     click_link('abcdefghijklmnopqrst')
#     click_button "Homepage"
#     expect(page).to have_current_path('/') 
#   end 
# end 




