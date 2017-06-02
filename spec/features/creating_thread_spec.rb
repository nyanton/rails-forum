require "rails_helper"

RSpec.feature "Users can create a new forum thread" do
  scenario "with valid attributes" do
      visit "/"
      click_link "New Forum"

      fill_in "Title", with: "A Test Forum"
      fill_in "Description", with: "This is a test forum"
      click_button "Create Forum"

      expect(page).to have_content "Forum has been created."
  end
end

RSpec.feature "User can NOT create a new forum thread" do

    scenario "without title" do
      visit "/"
      click_link "New Forum"

      fill_in "Description", with: "A forum without a Title"
      click_button "Create Forum"

      expect(page).to have_content "Forum was not created."

    end

    scenario "without description" do
      visit "/"
      click_link "New Forum"

      fill_in "Title", with: "A forum without a Description"
      click_button "Create Forum"

      expect(page).to have content "Forum was not created."

    end
end
