class AddCoverImgToBooks < ActiveRecord::Migration
  def up
    execute %{
      ALTER TABLE books
        ADD COLUMN cover_img_url text
    }
  end

  def down
    execute %{
      ALTER TABLE books
        DROP COLUMN cover_img_url
    }
  end
end
