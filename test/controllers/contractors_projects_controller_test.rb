require 'test_helper'

class ContractorsProjectsControllerTest < ActionController::TestCase
  setup do
    @contractors_project = contractors_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contractors_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contractors_project" do
    assert_difference('ContractorsProject.count') do
      post :create, contractors_project: { contractor_id: @contractors_project.contractor_id, project_id: @contractors_project.project_id }
    end

    assert_redirected_to contractors_project_path(assigns(:contractors_project))
  end

  test "should show contractors_project" do
    get :show, id: @contractors_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contractors_project
    assert_response :success
  end

  test "should update contractors_project" do
    patch :update, id: @contractors_project, contractors_project: { contractor_id: @contractors_project.contractor_id, project_id: @contractors_project.project_id }
    assert_redirected_to contractors_project_path(assigns(:contractors_project))
  end

  test "should destroy contractors_project" do
    assert_difference('ContractorsProject.count', -1) do
      delete :destroy, id: @contractors_project
    end

    assert_redirected_to contractors_projects_path
  end
end
