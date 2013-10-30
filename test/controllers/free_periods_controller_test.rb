require 'test_helper'

class FreePeriodsControllerTest < ActionController::TestCase
  setup do
    @free_period = free_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:free_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create free_period" do
    assert_difference('FreePeriod.count') do
      post :create, free_period: { end_date: @free_period.end_date, start_date: @free_period.start_date, user_id: @free_period.user_id }
    end

    assert_redirected_to free_period_path(assigns(:free_period))
  end

  test "should show free_period" do
    get :show, id: @free_period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @free_period
    assert_response :success
  end

  test "should update free_period" do
    patch :update, id: @free_period, free_period: { end_date: @free_period.end_date, start_date: @free_period.start_date, user_id: @free_period.user_id }
    assert_redirected_to free_period_path(assigns(:free_period))
  end

  test "should destroy free_period" do
    assert_difference('FreePeriod.count', -1) do
      delete :destroy, id: @free_period
    end

    assert_redirected_to free_periods_path
  end
end
