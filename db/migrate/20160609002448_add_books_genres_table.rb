class AddBooksGenresTable < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE IF NOT EXISTS books_genres(
        book_id int NOT NULL references books(id),
        genre_id int NOT NULL references genres(id),
        created_at timestamp NOT NULL,
        updated_at timestamp NOT NULL
      )
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE IF EXISTS books_genres
    SQL
  end
end
