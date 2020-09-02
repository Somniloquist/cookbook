class RemoveColumnsFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :spoonacularSourceUrl, :string
    remove_column :recipes, :spoonacularScore, :string
    remove_column :recipes, :healthScore, :string
    remove_column :recipes, :spoonacularId, :string
    remove_column :recipes, :weightWatcherSmartPoints, :string
    remove_column :recipes, :gaps, :string
    remove_column :recipes, :lowFodmap, :string
    remove_column :recipes, :originalId, :string
  end
end
