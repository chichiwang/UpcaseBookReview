class Genre < ActiveRecord::Base
  has_many :books_genres

  def books
    self.books_genres.map do |book_genre|
      Book.find book_genre.book_id
    end
  end
end

