require 'test_helper'

class ProductSnapShotControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_snap_shot_index_url
    assert_response :success
  end

  test "should get show" do
    get product_snap_shot_show_url
    assert_response :success
  end

end
