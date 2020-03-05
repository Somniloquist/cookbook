require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipes_path
    assert_response :success
  end

  test "should get show" do
    get recipe_path(recipes(:one))
    assert_response :success
  end

end
