class RecipesController < ApplicationController
  include RecipesHelper

  def index
    @search = params[:search]
    response = recipe_search_results_for @search
    @recipes = get_recipe_list response
  end

  def show
    # retrieve recipe from spoonacular api and save to database, unless recipe already exists
    unless Recipe.exists?(params[:id])
      response = recipe_info_for(params[:id])
      json = response.to_json
      recipe = Recipe.new
      @recipe = recipe.from_json(json)
      @recipe.save
    else
      @recipe = Recipe.find(params[:id])
    end
  end

  private
    # parse api json data into an array that the view can iterate over
    def get_recipe_list(json)
      recipes = JSON.parse json.body
      recipes["results"]
    end
end
