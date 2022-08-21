require "test_helper"

class PackingLaneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get packing_lane_index_url
    assert_response :success
  end
end
