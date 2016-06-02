class GenresController < ApplicationController

  def index
    @genres = Genre.unscoped
  end

end

