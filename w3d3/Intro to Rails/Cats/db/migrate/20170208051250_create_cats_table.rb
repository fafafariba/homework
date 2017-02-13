class CreateCatsTable < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      #Adding Columns (type, name, nullness)
      t.string :name, null: false #options hash
      t.timestamps #actually 2 columns in practice

      #SAME AS
      #self.create_table(:cats_tables) do |table|
    end
  end
end
