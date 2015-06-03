require 'test_helper'

class CoffeeShopsControllerTest < ActionController::TestCase
  setup do
    @coffee_shop = coffee_shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffee_shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coffee_shop" do
    assert_difference('CoffeeShop.count') do
      post :create, coffee_shop: {  }
    end

    assert_redirected_to coffee_shop_path(assigns(:coffee_shop))
  end

  test "should show coffee_shop" do
    get :show, id: @coffee_shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coffee_shop
    assert_response :success
  end

  test "should update coffee_shop" do
    patch :update, id: @coffee_shop, coffee_shop: {  }
    assert_redirected_to coffee_shop_path(assigns(:coffee_shop))
  end

  test "should destroy coffee_shop" do
    assert_difference('CoffeeShop.count', -1) do
      delete :destroy, id: @coffee_shop
    end

    assert_redirected_to coffee_shops_path
  end
end
