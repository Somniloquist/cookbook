# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_28_220825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recipes", force: :cascade do |t|
    t.boolean "vegetarian"
    t.boolean "vegan"
    t.boolean "glutenFree"
    t.boolean "dairyFree"
    t.boolean "veryHealthly"
    t.boolean "cheap"
    t.boolean "sustainable"
    t.boolean "veryPopular"
    t.string "sourceUrl"
    t.string "spoonacularSourceUrl"
    t.integer "aggregateLikes"
    t.integer "spoonacularScore"
    t.integer "healthScore"
    t.string "creditsText"
    t.string "license"
    t.string "sourceName"
    t.decimal "pricePerServing"
    t.string "extendedIngredients"
    t.integer "spoonacularId"
    t.string "title"
    t.integer "readyInMinutes"
    t.integer "servings"
    t.string "image"
    t.string "imageType"
    t.string "cuisines"
    t.string "dishTypes"
    t.string "diets"
    t.string "occasions"
    t.string "winePairing"
    t.string "instructions"
    t.string "analyzedInstructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spoonacularId"], name: "index_recipes_on_spoonacularId", unique: true
  end

end
