class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = current_user.favorite_recipes
  end

  def create
  end

  def destroy
  end
end
