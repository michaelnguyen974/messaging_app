require 'capybara/rspec'
require './app.rb'

  feature "#history" do
  scenario "check whether messages are being stored" do
    visit "/"
    fill_in 'input_message', with: "Michael"
    click_button "Submit"
    expect(page).to have_text("Michael")
    visit "/"
    fill_in 'input_message', with: "Gabriel"
    click_button "Submit"
    expect(page).to have_text("Michael")
    expect(page).to have_text("Gabriel")
  end
end