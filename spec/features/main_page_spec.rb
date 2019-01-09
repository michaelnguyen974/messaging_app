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
  fill_in 'content', with: 'Michael'
  click_button 'Submit'
  expect(page).to have_text("Michael")
  end
end

feature "#storing messages" do
  scenario "check whether messages are being stored" do
    visit "/"
    fill_in 'content', with: "Michael"
    click_button "Submit"
    expect(page).to have_text("Michael")
    visit "/"
    fill_in 'content', with: "Tom"
    click_button "Submit"
    expect(page).to have_text("Michael")
    expect(page).to have_text("Tom")
  end
end

feature "#Delete" do 
  scenario 'delete button' do 
    visit '/'
    fill_in 'content', with: "Hello I am going to delete a message"
    click_button "Submit"
    expect(page).to have_content "delete"
  end 

  # scenario 'deleting a message' do 

  # end 
end 

feature "#Editing messages" do 
  scenario 'checks for delete button' do 
    visit '/'
    fill_in 'content', with: "Hello I am going to delete a message"
    click_button "Submit"
    expect(page).to have_content "edit"
  end 
end 

