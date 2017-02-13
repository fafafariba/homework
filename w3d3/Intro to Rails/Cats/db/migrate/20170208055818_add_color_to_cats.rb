class AddColorToCats < ActiveRecord::Migration
  def change
    #Couldn't infer anything this time so didn't populate anything
    add_column :cats, :color, :string
    #Adds column
      #name of table, :cats
      #name of col, :color
      #data type in col, :string
      #no limitation on nullness

      #don't edit migrations once done, just add col like this
  end
end
