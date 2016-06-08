class AddPrimaryKeyToGenresTable < ActiveRecord::Migration
  def up
    execute %{
      ALTER TABLE genres
        ADD COLUMN id integer PRIMARY KEY
    }
  end

  def down
    execute %{
      ALTER TABLE genres
        DROP COLUMN id
    }
  end
end
