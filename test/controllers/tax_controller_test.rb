require 'test_helper'

class TaxControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tax_index_url
    assert_response :success
  end

end
