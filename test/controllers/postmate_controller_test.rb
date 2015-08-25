require 'test_helper'

class PostmateControllerTest < ActionController::TestCase
  test "should get get_delivery" do
    get :get_delivery
    assert_response :success
  end

end
