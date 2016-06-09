class GenresController < ApplicationController

  def index
    @genres = Genre.unscoped
  end

  def show
    @genre = Genre.find params[:id]
    @books = @genre.books
  end
end

