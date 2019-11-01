class AddSmallDescriptionToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :small_description, :string
  end
end
