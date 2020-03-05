require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  def setup
    @recipe = recipes(:one)
  end

  test "recipe is valid" do
    assert @recipe.valid?
  end
end
