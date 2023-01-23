require "test_helper"

class Admins::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get inndex" do
    get admins_customers_inndex_url
    assert_response :success
  end

  test "should get show" do
    get admins_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_customers_edit_url
    assert_response :success
  end
end
