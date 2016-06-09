class Book < ActiveRecord::Base
  has_many :books_genres

  def genres
    self.books_genres.map do |book_genre|
      Genre.find book_genre.genre_id
    end
  end
end

