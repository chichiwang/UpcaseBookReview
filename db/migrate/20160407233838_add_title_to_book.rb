class AddTitleToBook < ActiveRecord::Migration
  def up
    add_column :books, :title, :string, null: false
  end

  def down
    remove_column :books, :title
  end
end
