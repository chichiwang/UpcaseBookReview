require "rails_helper"

RSpec.describe "User views a list of all books", :type => :feature do
  it "displays a list of all books" do
    book1 = create_book("A Tale of Two Cities")
    book2 = create_book("Huckleberry Finn")

    visit books_path
    expect(page).to have_link(book1.title, href: "/books/#{book1.id}")
    expect(page).to have_link(book2.title, href: "/books/#{book2.id}")
  end
end
