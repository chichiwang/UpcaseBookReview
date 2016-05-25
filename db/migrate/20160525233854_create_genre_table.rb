class CreateGenreTable < ActiveRecord::Migration
  def up
    execute %{ 
      CREATE TABLE IF NOT EXISTS genres()
    }
  end

  def down
    execute %{
      DROP TABLE IF EXISTS genres
    }
  end
end
