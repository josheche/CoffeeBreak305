require 'test_helper'

class OrderProfilesControllerTest < ActionController::TestCase
  setup do
    @order_profile = order_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_profile" do
    assert_difference('OrderProfile.count') do
      post :create, order_profile: {  }
    end

    assert_redirected_to order_profile_path(assigns(:order_profile))
  end

  test "should show order_profile" do
    get :show, id: @order_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_profile
    assert_response :success
  end

  test "should update order_profile" do
    patch :update, id: @order_profile, order_profile: {  }
    assert_redirected_to order_profile_path(assigns(:order_profile))
  end

  test "should destroy order_profile" do
    assert_difference('OrderProfile.count', -1) do
      delete :destroy, id: @order_profile
    end

    assert_redirected_to order_profiles_path
  end
end
