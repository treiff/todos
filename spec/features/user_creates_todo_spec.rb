require 'rails_helper'

feature "user creates new todo" do
  scenario "success" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Hi, Make sure you buy bread"
    click_on "Submit"

    expect(page).to have_css ".todos li", text: "Hi, Make sure you buy bread"
  end
end
