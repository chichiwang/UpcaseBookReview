class BooksController < ApplicationController
  def index
    @books = Book.unscoped
  end

  def show
    @book = Book.find(params[:id])
  end
end
