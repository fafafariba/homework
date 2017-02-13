class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name, null: false
      t.integer :cat_id, null: false #foreign key pointing to cat
      t.timestamps
    end
  end
end
