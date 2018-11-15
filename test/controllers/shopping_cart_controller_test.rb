require 'test_helper'

class ShoppingCartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shopping_cart_index_url
    assert_response :success
  end

  test "should get show" do
    get shopping_cart_show_url
    assert_response :success
  end

end
