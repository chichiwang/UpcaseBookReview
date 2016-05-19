module GenreHelpers
  def create_genre(opts = {})
    FactoryGirl.create(:genre, opts)
  end
end
