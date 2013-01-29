require 'test_helper'

class ProfileUnitsControllerTest < ActionController::TestCase
  setup do
    @profile_unit = profile_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_unit" do
    assert_difference('ProfileUnit.count') do
      post :create, profile_unit: @profile_unit.attributes
    end

    assert_redirected_to profile_unit_path(assigns(:profile_unit))
  end

  test "should show profile_unit" do
    get :show, id: @profile_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_unit
    assert_response :success
  end

  test "should update profile_unit" do
    put :update, id: @profile_unit, profile_unit: @profile_unit.attributes
    assert_redirected_to profile_unit_path(assigns(:profile_unit))
  end

  test "should destroy profile_unit" do
    assert_difference('ProfileUnit.count', -1) do
      delete :destroy, id: @profile_unit
    end

    assert_redirected_to profile_units_path
  end
end
