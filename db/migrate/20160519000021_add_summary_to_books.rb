class AddSummaryToBooks < ActiveRecord::Migration
  def up
    execute %{
      ALTER TABLE books
        ADD COLUMN summary text
    }
  end

  def down
    execute %{
      ALTER TABLE books
        DROP COLUMN summary
    }
  end
end
