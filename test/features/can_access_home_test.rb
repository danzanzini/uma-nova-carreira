require "test_helper"

feature "CanAccessHome" do
  scenario "has content" do
    visit root_path
    page.must_have_content "Uma Nova Carreira"
  end
end
