require "test_helper"

class CookingGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cooking_groups_index_url
    assert_response :success
  end
end
