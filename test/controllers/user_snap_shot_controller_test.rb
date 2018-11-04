require 'test_helper'

class UserSnapShotControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_snap_shot_index_url
    assert_response :success
  end

  test "should get show" do
    get user_snap_shot_show_url
    assert_response :success
  end

end
