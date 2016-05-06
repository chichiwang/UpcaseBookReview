class BooksController < ApplicationController
  def index
    @books = Book.unscoped
  end
end
