require "test_helper"

class Admins::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admins_orders_show_url
    assert_response :success
  end
end
