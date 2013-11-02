require 'test_helper'

class DepartmentsUsersControllerTest < ActionController::TestCase
  setup do
    @departments_user = departments_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departments_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create departments_user" do
    assert_difference('DepartmentsUser.count') do
      post :create, departments_user: { department_id: @departments_user.department_id, user_id: @departments_user.user_id }
    end

    assert_redirected_to departments_user_path(assigns(:departments_user))
  end

  test "should show departments_user" do
    get :show, id: @departments_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @departments_user
    assert_response :success
  end

  test "should update departments_user" do
    patch :update, id: @departments_user, departments_user: { department_id: @departments_user.department_id, user_id: @departments_user.user_id }
    assert_redirected_to departments_user_path(assigns(:departments_user))
  end

  test "should destroy departments_user" do
    assert_difference('DepartmentsUser.count', -1) do
      delete :destroy, id: @departments_user
    end

    assert_redirected_to departments_users_path
  end
end
