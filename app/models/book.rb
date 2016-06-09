class Book < ActiveRecord::Base
  has_many :books_genres
  alias_attribute :genres, :books_genres
end

