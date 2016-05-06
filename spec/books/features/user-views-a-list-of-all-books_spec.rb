require "rails_helper"

RSpec.describe "User views a list of all books", :type => :feature do
  let!(:book1) { create(:book, title: "A Tale of Two Cities") }
  let!(:book2) { create(:book, title: "Huckleberry Finn") }

  it "displays a list of all books" do
    visit books_path
    expect(page).to have_link(book1.title, href: "/books/#{book1.id}")
    expect(page).to have_link(book2.title, href: "/books/#{book2.id}")
  end
end
