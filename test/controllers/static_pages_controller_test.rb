require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get dispatch" do
    get :dispatch
    assert_response :success
  end

end
