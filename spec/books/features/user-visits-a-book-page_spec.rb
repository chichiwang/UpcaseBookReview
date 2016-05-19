require "rails_helper"

RSpec.describe "User visits a book page", :type => :feature do
  it "provides details for a single book" do
    book_details = {
      title:  "Huckleberry Finn",
      subtitle: "The Watership Is Going Down",
      publish_date: Date.new(1873, 1, 1),
      summary: "A former Special Forces operative turned mercenary is subjected to a rogue experiment that leaves him with accelerated healing powers, adopting the alter ego Deadpool.",
      cover_img_url: "http://lorempixel.com/1024/768/cats/"
    }

    book = create_book(book_details)

    visit root_path
    click_link "Books"
    click_link(book.title)

    expect(page).to have_content(book.title)
    expect(page).to have_content(book.subtitle)
    expect(page).to have_content("Published: #{book.publish_date.strftime('%B %d, %Y')}")
    expect(page).to have_content(book.summary)
    expect(page).to have_selector("img[src='#{book.cover_img_url}']")
  end
end
