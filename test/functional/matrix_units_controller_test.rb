require 'test_helper'

class MatrixUnitsControllerTest < ActionController::TestCase
  setup do
    @matrix_unit = matrix_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrix_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrix_unit" do
    assert_difference('MatrixUnit.count') do
      post :create, matrix_unit: @matrix_unit.attributes
    end

    assert_redirected_to matrix_unit_path(assigns(:matrix_unit))
  end

  test "should show matrix_unit" do
    get :show, id: @matrix_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matrix_unit
    assert_response :success
  end

  test "should update matrix_unit" do
    put :update, id: @matrix_unit, matrix_unit: @matrix_unit.attributes
    assert_redirected_to matrix_unit_path(assigns(:matrix_unit))
  end

  test "should destroy matrix_unit" do
    assert_difference('MatrixUnit.count', -1) do
      delete :destroy, id: @matrix_unit
    end

    assert_redirected_to matrix_units_path
  end
end
