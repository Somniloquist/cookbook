class AddOriginalIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :originalId, :string
  end
end
