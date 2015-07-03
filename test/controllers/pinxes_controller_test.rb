require 'test_helper'

class PinxesControllerTest < ActionController::TestCase
  setup do
    @pinx = pinxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pinxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pinx" do
    assert_difference('Pinx.count') do
      post :create, pinx: { description: @pinx.description }
    end

    assert_redirected_to pinx_path(assigns(:pinx))
  end

  test "should show pinx" do
    get :show, id: @pinx
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pinx
    assert_response :success
  end

  test "should update pinx" do
    patch :update, id: @pinx, pinx: { description: @pinx.description }
    assert_redirected_to pinx_path(assigns(:pinx))
  end

  test "should destroy pinx" do
    assert_difference('Pinx.count', -1) do
      delete :destroy, id: @pinx
    end

    assert_redirected_to pinxes_path
  end
end
