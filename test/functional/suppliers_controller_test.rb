require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post :create, :supplier => @supplier.attributes
    end

    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should show supplier" do
    get :show, :id => @supplier.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @supplier.to_param
    assert_response :success
  end

  test "should update supplier" do
    put :update, :id => @supplier.to_param, :supplier => @supplier.attributes
    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete :destroy, :id => @supplier.to_param
    end

    assert_redirected_to suppliers_path
  end
end
