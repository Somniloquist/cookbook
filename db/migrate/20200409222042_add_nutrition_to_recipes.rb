class AddNutritionToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :nutrition, :json, default: {}
  end
end
