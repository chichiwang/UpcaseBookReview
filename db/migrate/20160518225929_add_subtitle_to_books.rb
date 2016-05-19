class AddSubtitleToBooks < ActiveRecord::Migration
  def up
    execute %{
      ALTER TABLE books
        ADD COLUMN subtitle text
    }
  end

  def down
    execute %{
      ALTER TABLE books
        DROP COLUMN subtitle
    }
  end
end
