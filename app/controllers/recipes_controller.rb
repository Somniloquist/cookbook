class RecipesController < ApplicationController
  include RecipesHelper

  def index
    @search = params[:search]
    response = recipe_search_results_for @search
    @recipes = get_recipe_list response
  end

  def show
    @recipe = recipe_info_for(params[:id])
  end

  private
    # parse api json data into an array that the view can iterate over
    def get_recipe_list(json)
      recipes = JSON.parse json.body
      recipes["results"]
    end
end
