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

ActiveRecord::Schema.define(version: 2020_09_01_184404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recipes", force: :cascade do |t|
    t.boolean "vegetarian"
    t.boolean "vegan"
    t.boolean "glutenFree"
    t.boolean "dairyFree"
    t.boolean "veryHealthy"
    t.boolean "cheap"
    t.boolean "sustainable"
    t.boolean "veryPopular"
    t.string "sourceUrl"
    t.integer "aggregateLikes"
    t.string "creditsText"
    t.string "license"
    t.string "sourceName"
    t.decimal "pricePerServing"
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
    t.integer "preparationMinutes"
    t.integer "cookingMinutes"
    t.string "summary"
    t.json "analyzedInstructions", default: {}
    t.json "extendedIngredients", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "nutrition", default: {}
    t.index ["id"], name: "index_recipes_on_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username", default: "", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
