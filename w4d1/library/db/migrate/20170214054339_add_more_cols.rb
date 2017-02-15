class AddMoreCols < ActiveRecord::Migration
  def change
    add_column :books, :category, :string
    add_column :books, :description, :text
  end
end
