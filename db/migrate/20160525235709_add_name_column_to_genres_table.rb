class AddNameColumnToGenresTable < ActiveRecord::Migration
  def up
    execute %{
      ALTER TABLE genres
        ADD COLUMN name text
    }
  end

  def down
    execute %{
      ALTER TABLE genres
        DROP COLUMN name
   }
  end
end
