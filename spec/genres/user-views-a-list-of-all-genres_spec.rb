require "rails_helper"

RSpec.describe "User views a list of all genres", :type => :feature do
  it "displays a list of all genres" do
    genre1 = create_genre(name: 'Western')
    genre2 = create_genre(name: 'Science Fiction')

    visit genres_path

    expect(page).to have_link(genre1.name, href: "/genres/#{genre1.id}")
    expect(page).to have_link(genre2.name, href: "/genres/#{genre2.id}")
  end
end
