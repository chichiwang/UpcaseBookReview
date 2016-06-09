class Book < ActiveRecord::Base
  alias_attribute :genres, :books_genres
end
