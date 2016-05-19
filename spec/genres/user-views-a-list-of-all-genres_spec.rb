require "rails_helper"

RSpec.describe "User views a list of all genres", :type => :feature do
  it "displays a list of all genres" do
    genre1 = create_genre(name: 'Western')
    genre2 = create_genre(name: 'Science Fiction')
  end
end