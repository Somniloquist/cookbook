require 'test_helper'

class UsersDeleteTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:artoria)
  end

  test "should delete the user" do
    sign_in(@user)
    assert_difference "User.count", -1 do
      delete user_registration_path
    end
  end
end
