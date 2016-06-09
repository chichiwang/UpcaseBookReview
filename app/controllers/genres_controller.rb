class GenresController < ApplicationController

  def index
    @genres = Genre.unscoped
  end

  def show
    @genre = Genre.find params[:id]
    @books = @genre.books.map do |book|
      Book.find book.book_id
    end
  end
end

