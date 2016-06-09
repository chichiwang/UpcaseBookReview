require "rails_helper"

RSpec.describe "User visits a genre page", :type => :feature do
  it "lists all the books in the given genre" do
    genre_details = {
      name: "Vampire Bromance",
      description: "Think \"From Dusk Til Dawn\" meets \"Boondock Saints\""
    }
    genre = create_genre(genre_details)

    book = create_book( title: "Twi-lizzle")
    book.genres.create genre_id: genre.id

    visit root_path
    click_link "Genres"
    click_link(genre.name)

    expect(page).to have_content(genre.name)
    expect(page).to have_link(book.name, href: book_path(book.id))
  end
end

