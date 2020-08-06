require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  def setup
    @recipe = recipes(:one)
  end

  test "recipe is valid" do
    assert @recipe.valid?
  end

  test "recipe should have a title" do
    @recipe.title = " "
    assert_not @recipe.valid?
  end

  test "recipe should have ingredients" do
    @recipe.extendedIngredients = " "
    assert_not @recipe.valid?
  end

  test "recipe should have readyInMinutes" do
    @recipe.readyInMinutes = " "
    assert_not @recipe.valid?
  end

  test "recipe should have servings" do
    @recipe.servings = " "
    assert_not @recipe.valid?
  end
end
