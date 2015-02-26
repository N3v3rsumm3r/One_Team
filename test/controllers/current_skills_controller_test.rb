require 'test_helper'

class CurrentSkillsControllerTest < ActionController::TestCase
  setup do
    @current_skill = current_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_skill" do
    assert_difference('CurrentSkill.count') do
      post :create, current_skill: { skill_id: @current_skill.skill_id, user_id: @current_skill.user_id }
    end

    assert_redirected_to current_skill_path(assigns(:current_skill))
  end

  test "should show current_skill" do
    get :show, id: @current_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current_skill
    assert_response :success
  end

  test "should update current_skill" do
    patch :update, id: @current_skill, current_skill: { skill_id: @current_skill.skill_id, user_id: @current_skill.user_id }
    assert_redirected_to current_skill_path(assigns(:current_skill))
  end

  test "should destroy current_skill" do
    assert_difference('CurrentSkill.count', -1) do
      delete :destroy, id: @current_skill
    end

    assert_redirected_to current_skills_path
  end
end
