require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { billing_address_id: @order.billing_address_id, closed_at: @order.closed_at, created_at: @order.created_at, customer_id: @order.customer_id, shipping_address_id: @order.shipping_address_id, shipping_option_id: @order.shipping_option_id, shipping_price: @order.shipping_price, status: @order.status, total_items_price: @order.total_items_price } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { billing_address_id: @order.billing_address_id, closed_at: @order.closed_at, created_at: @order.created_at, customer_id: @order.customer_id, shipping_address_id: @order.shipping_address_id, shipping_option_id: @order.shipping_option_id, shipping_price: @order.shipping_price, status: @order.status, total_items_price: @order.total_items_price } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
