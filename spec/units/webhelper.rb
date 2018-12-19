def fill_in_and_submit
  visit "/"
  fill_in 'content', with: "Michael"
  click_button "Submit"
end