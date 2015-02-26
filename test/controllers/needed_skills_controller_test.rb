require 'test_helper'

class NeededSkillsControllerTest < ActionController::TestCase
  setup do
    @needed_skill = needed_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:needed_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create needed_skill" do
    assert_difference('NeededSkill.count') do
      post :create, needed_skill: { skill_id: @needed_skill.skill_id }
    end

    assert_redirected_to needed_skill_path(assigns(:needed_skill))
  end

  test "should show needed_skill" do
    get :show, id: @needed_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @needed_skill
    assert_response :success
  end

  test "should update needed_skill" do
    patch :update, id: @needed_skill, needed_skill: { skill_id: @needed_skill.skill_id }
    assert_redirected_to needed_skill_path(assigns(:needed_skill))
  end

  test "should destroy needed_skill" do
    assert_difference('NeededSkill.count', -1) do
      delete :destroy, id: @needed_skill
    end

    assert_redirected_to needed_skills_path
  end
end
