require "rails_helper"

RSpec.describe "User visits a book page", :type => :feature do
  it "provides details for a single book" do
    book1 = create_book({ title: "A Tale of Two Cities", subtitle: "Full of Sound and Fury" })
    book2 = create_book({ title:  "Huckleberry Finn", subtitle: "The Watership Is Going Down" })

    visit root_path
    click_link "Books"
    click_link(book2.title)

    expect(page).to have_content(book2.title)
    expect(page).to have_content(book2.subtitle)
  end
end

