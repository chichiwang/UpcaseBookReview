require "rails_helper"

RSpec.describe "User visits a book page", :type => :feature do
  let(:book1) { create(:book, title: "A Tale of Two Cities") }
  let(:book2) { create(:book, title: "Huckleberry Finn") }

  it "provides details for a single book" do
    visit root_path

    click_link "Books"

    click_link(book2.title)
    expect(page).to have_content(book2.title)
  end
end

