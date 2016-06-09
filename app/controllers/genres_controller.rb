class GenresController < ApplicationController

  def index
    @genres = Genre.unscoped
  end

  def show
    @genre = Genre.find params[:id]
  end
end

