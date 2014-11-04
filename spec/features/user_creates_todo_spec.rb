require 'rails_helper'

feature "user creates new todo" do
  scenario "success" do
    sign_in

    create_todo "Buy milk"

    expect(page).to display_todo "Buy milk"
  end
end
