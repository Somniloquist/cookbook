class RecipesController < ApplicationController
  include RecipesHelper

  def index
    @search = params[:search]
    response = recipe_search_results_for(@search)
    search_results = get_recipe_array(response)
    @recipes = search_results.paginate(page: params[:page], per_page: 16)
  end

  def show
    # if the recipe exists in the database load the recipe
    if Recipe.exists?(params[:id])
      @recipe = Recipe.find(params[:id])
    else
      # retrieve the recipe from the api
      # then save the recipe to the database to help reduce api calls in the future
      response = recipe_info_for(params[:id]).to_json
      @recipe = Recipe.new
      @recipe.from_json(response).save
    end

    @nutrition = @recipe.nutrition["nutrients"]
  end

  private
    # parse api json data into an array that the view can iterate over
    def get_recipe_array(json)
      recipes = JSON.parse(json.body)
      recipes["results"]
    end
end
