require 'test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest
  test "search field appears on the home page" do
    get root_path
    assert_template "static_pages/home"
    assert_select "form[action=?]", recipes_path
  end
end
