class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :glutenFree
      t.boolean :dairyFree
      t.boolean :veryHealthy
      t.boolean :cheap
      t.boolean :sustainable 
      t.boolean :veryPopular
      t.string :sourceUrl
      t.string :spoonacularSourceUrl
      t.integer :aggregateLikes
      t.integer :spoonacularScore
      t.integer :healthScore
      t.string :creditsText
      t.string :license
      t.string :sourceName
      t.decimal :pricePerServing
      t.integer :spoonacularId
      t.string :title
      t.integer :readyInMinutes
      t.integer :servings
      t.string :image
      t.string :imageType
      t.string :cuisines
      t.string :dishTypes
      t.string :diets
      t.string :occasions
      t.string :winePairing
      t.string :instructions
      t.integer :weightWatcherSmartPoints
      t.string :gaps
      t.boolean :lowFodmap
      t.integer :preparationMinutes
      t.integer :cookingMinutes
      t.string :summary
      t.json :analyzedInstructions, default: {}
      t.json :extendedIngredients, default: {}

      t.timestamps
      t.index :id
    end
  end
end
