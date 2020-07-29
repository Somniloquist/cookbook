require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:artoria)
  end

  test "must be logged in to edit" do
    get edit_user_registration_path(@user)
    assert_response 401
  end

end
