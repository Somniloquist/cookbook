class RecipesController < ApplicationController
  include RecipesHelper

  def index
    response = Faraday.get BASE_URL + params[:search] + "&apiKey=#{spoonacular_key}"
    @recipes = get_recipe_list(response)
  end

  def show
  end

  private
    # parse api json data into an array that the view can iterate over
    def get_recipe_list(json)
      recipes = JSON.parse json.body
      recipes["results"]
    end

    def spoonacular_key
      Rails.application.credentials.spoonacular[:api_key]
    end
end
