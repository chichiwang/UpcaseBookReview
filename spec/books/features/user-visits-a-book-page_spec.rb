require "rails_helper"

RSpec.describe "User visits a book page", :type => :feature do
  it "provides details for a single book" do
    create(:book, title: "A Tale of Two Cities")
    visit root_path

    click_link "Books"

    click_link "A Tale of Two Cities"

    expect(page).to have_content "A Tale of Two Cities"
  end
end

