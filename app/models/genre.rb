class Genre < ActiveRecord::Base
  has_many :books_genres
  alias_attribute :books, :books_genres
end

