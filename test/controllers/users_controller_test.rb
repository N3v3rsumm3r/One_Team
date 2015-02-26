require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { department_id: @user.department_id, email: @user.email, first_name: @user.first_name, group_id: @user.group_id, last_name: @user.last_name, location_id: @user.location_id, manager: @user.manager, password_digest: @user.password_digest, position_id: @user.position_id, years_with_company: @user.years_with_company }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { department_id: @user.department_id, email: @user.email, first_name: @user.first_name, group_id: @user.group_id, last_name: @user.last_name, location_id: @user.location_id, manager: @user.manager, password_digest: @user.password_digest, position_id: @user.position_id, years_with_company: @user.years_with_company }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
