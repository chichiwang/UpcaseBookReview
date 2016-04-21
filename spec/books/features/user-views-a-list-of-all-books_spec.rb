require "rails_helper"

RSpec.describe "User views a list of all books", :type => :feature do
  it "displays a list of all books" do
    create(:book, title: "A Tale of Two Cities")
    create(:book, title: "Huckleberry Finn")

    visit books_path

    expect(page).to have_content "A Tale of Two Cities"
    expect(page).to have_content "Huckleberry Finn"
  end
end
