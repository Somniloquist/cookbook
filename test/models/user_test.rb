require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:artoria)
  end

  test "user should be valid" do
    assert @user.valid?
  end

  test "username should be present" do
    @user.username = ""
    assert_not @user.valid?
  end

  test "username should be at least 4 characters" do
    @user.username = "a" * 3
    assert_not @user.valid?
  end

  test "username should not exceed 25 characters" do
    @user.username = "a" * 26
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end
end
