require 'test_helper'

class RecipesShowTest < ActionDispatch::IntegrationTest
  def setup
    @recipe = recipes(:one)
  end

  test "shows recipe information" do
    get recipe_path(@recipe)
    assert_template "recipes/show"
    assert_select "img:match('src', ?)", /#{@recipe.id}/
    assert_select "h1", @recipe.title
    assert_select "h2", "Ingredients"
    assert_select "span.ready-in-minutes", "#{@recipe.readyInMinutes}"
    assert_select "span.servings", "#{@recipe.servings}"
  end
end
