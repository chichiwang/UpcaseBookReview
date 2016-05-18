class AddPublishDateToBooks < ActiveRecord::Migration
  def up
    execute %{
      ALTER TABLE books
        ADD COLUMN publish_date date NOT NULL
    }
  end

  def down
    execute %{
      ALTER TABLE books
        DROP COLUMN publish_date
    }
  end
end
