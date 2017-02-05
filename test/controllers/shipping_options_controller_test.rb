require 'test_helper'

class ShippingOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipping_option = shipping_options(:one)
  end

  test "should get index" do
    get shipping_options_url
    assert_response :success
  end

  test "should get new" do
    get new_shipping_option_url
    assert_response :success
  end

  test "should create shipping_option" do
    assert_difference('ShippingOption.count') do
      post shipping_options_url, params: { shipping_option: { description: @shipping_option.description, is_deleted: @shipping_option.is_deleted, is_local_pickup: @shipping_option.is_local_pickup, name: @shipping_option.name, price: @shipping_option.price } }
    end

    assert_redirected_to shipping_option_url(ShippingOption.last)
  end

  test "should show shipping_option" do
    get shipping_option_url(@shipping_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipping_option_url(@shipping_option)
    assert_response :success
  end

  test "should update shipping_option" do
    patch shipping_option_url(@shipping_option), params: { shipping_option: { description: @shipping_option.description, is_deleted: @shipping_option.is_deleted, is_local_pickup: @shipping_option.is_local_pickup, name: @shipping_option.name, price: @shipping_option.price } }
    assert_redirected_to shipping_option_url(@shipping_option)
  end

  test "should destroy shipping_option" do
    assert_difference('ShippingOption.count', -1) do
      delete shipping_option_url(@shipping_option)
    end

    assert_redirected_to shipping_options_url
  end
end
