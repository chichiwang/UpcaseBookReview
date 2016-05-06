require "rails_helper"

RSpec.describe "User visits a book page", :type => :feature do
  it "provides details for a single book" do
    book1 = create_book("A Tale of Two Cities")
    book2 = create_book("Huckleberry Finn")

    visit root_path
    click_link "Books"
    click_link(book2.title)

    expect(page).to have_content(book2.title)
  end
end

