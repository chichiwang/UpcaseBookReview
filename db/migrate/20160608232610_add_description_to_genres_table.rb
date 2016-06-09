class AddDescriptionToGenresTable < ActiveRecord::Migration
  def up
    execute <<-SQL
      ALTER TABLE Genres
        ADD COLUMN description text
    SQL
  end

  def down
    execute <<-SQL
      ALTER TABLE Genres
        DROP COLUMN description
    SQL
  end
end
